import { NextResponse } from 'next/server';
import { contextualTranslation, detectLanguage, isAIAvailable } from '@/lib/ai-features';
import { translateWithFreeAI } from '@/lib/ai-free-alternatives';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';
import { getSupabase } from '@/lib/db';
import { z } from 'zod';

const TranslateSchema = z.object({
  text: z.string().min(1),
  context: z.string().optional().default(''),
});

// Función para buscar en el diccionario real
async function searchInDictionary(text: string) {
  const supabase = getSupabase();
  const searchTerm = text.toLowerCase().trim();
  
  // Buscar en español (para traducir a Bubi)
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('bubi, spanish, word_type, gender, number, nominal_class, plural_form, examples, variants, notes')
    .or(`spanish.ilike.%${searchTerm}%,notes.ilike.%${searchTerm}%`)
    .limit(10);
  
  if (error) {
    logger.error('Error buscando en diccionario', error);
    return null;
  }
  
  return data && data.length > 0 ? data : null;
}

// Función para construir traducción desde el diccionario
function buildTranslationFromDictionary(entries: any[], searchText: string) {
  if (!entries || entries.length === 0) return null;
  
  // Si hay coincidencia exacta, usarla
  const exactMatch = entries.find(e => 
    e.spanish.toLowerCase() === searchText.toLowerCase()
  );
  
  if (exactMatch) {
    let explanation = `Traducción del diccionario`;
    
    // Agregar información gramatical
    if (exactMatch.word_type) explanation += ` (${exactMatch.word_type})`;
    if (exactMatch.nominal_class) explanation += ` - ${exactMatch.nominal_class}`;
    if (exactMatch.gender) explanation += ` - ${exactMatch.gender}`;
    if (exactMatch.number) explanation += ` - ${exactMatch.number}`;
    
    return {
      translation: exactMatch.bubi,
      explanation,
      alternatives: entries
        .filter(e => e.bubi !== exactMatch.bubi)
        .slice(0, 3)
        .map(e => e.bubi),
      source: 'dictionary',
      entries: entries.slice(0, 5).map(e => ({
        bubi: e.bubi,
        spanish: e.spanish,
        type: e.word_type,
        class: e.nominal_class,
        gender: e.gender,
        plural: e.plural_form,
        examples: e.examples,
        variants: e.variants
      }))
    };
  }
  
  // Si no hay coincidencia exacta, mostrar las opciones encontradas
  return {
    translation: entries[0].bubi,
    explanation: `Palabra relacionada en el diccionario${entries[0].word_type ? ` (${entries[0].word_type})` : ''}${entries[0].nominal_class ? ` - ${entries[0].nominal_class}` : ''}`,
    alternatives: entries.slice(1, 4).map(e => e.bubi),
    source: 'dictionary',
    entries: entries.slice(0, 5).map(e => ({
      bubi: e.bubi,
      spanish: e.spanish,
      type: e.word_type,
      class: e.nominal_class,
      gender: e.gender,
      plural: e.plural_form,
      examples: e.examples,
      variants: e.variants
    }))
  };
}

export async function POST(req: Request) {
  try {
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-translate:${identifier}`, RATE_LIMITS.moderate);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes' },
        { status: 429 }
      );
    }

    const body = await req.json();
    const parsed = TranslateSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json(
        { error: 'Datos inválidos' },
        { status: 400 }
      );
    }

    const { text, context } = parsed.data;
    
    // PASO 1: Buscar primero en el diccionario real
    logger.info('Buscando traducción en diccionario', { text });
    const dictionaryResults = await searchInDictionary(text);
    
    if (dictionaryResults && dictionaryResults.length > 0) {
      logger.info('Traducción encontrada en diccionario', { count: dictionaryResults.length });
      const translation = buildTranslationFromDictionary(dictionaryResults, text);
      
      return NextResponse.json({
        ...translation,
        detectedLanguage: 'spanish',
        provider: 'dictionary',
      });
    }
    
    // PASO 2: Si no está en el diccionario, intentar con IA
    logger.info('No encontrado en diccionario, usando IA', { text });
    
    let result;
    let provider = 'ai-fallback';
    let detectedLang: string | undefined;

    // Intentar primero con IA de pago si está disponible
    if (isAIAvailable()) {
      try {
        detectedLang = await detectLanguage(text);
        result = await contextualTranslation(text, context);
        provider = 'openai/anthropic';
      } catch (error) {
        logger.warn('Error con IA de pago, usando alternativas gratuitas', { error: error instanceof Error ? error.message : String(error) });
        result = await translateWithFreeAI(text, context);
        detectedLang = 'unknown';
      }
    } else {
      // Usar alternativas gratuitas directamente
      result = await translateWithFreeAI(text, context);
      detectedLang = 'unknown';
    }

    return NextResponse.json({
      ...result,
      detectedLanguage: detectedLang,
      provider,
      note: 'Traducción generada por IA (no encontrada en diccionario). Puede no ser 100% precisa.'
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/translate', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
