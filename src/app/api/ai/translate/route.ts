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
  
  // Buscar coincidencia exacta primero
  const { data: exactMatch, error: exactError } = await supabase
    .from('dictionary_entries')
    .select('bubi, spanish, word_type, gender, number, nominal_class, plural_form, examples, variants, notes, ipa')
    .ilike('spanish', searchTerm)
    .limit(1);
  
  if (!exactError && exactMatch && exactMatch.length > 0) {
    return exactMatch;
  }
  
  // Si no hay coincidencia exacta, buscar palabras similares
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('bubi, spanish, word_type, gender, number, nominal_class, plural_form, examples, variants, notes, ipa')
    .or(`spanish.ilike.%${searchTerm}%,notes.ilike.%${searchTerm}%`)
    .limit(10);
  
  if (error) {
    logger.error('Error buscando en diccionario', error);
    return null;
  }
  
  return data && data.length > 0 ? data : null;
}

// Función para traducir oraciones palabra por palabra usando el diccionario
async function translateSentenceFromDictionary(sentence: string) {
  const supabase = getSupabase();
  
  // Dividir la oración en palabras (eliminar puntuación)
  const words = sentence
    .toLowerCase()
    .replace(/[.,;:!?¿¡]/g, '')
    .split(/\s+/)
    .filter(w => w.length > 0);
  
  if (words.length === 0) return null;
  
  const translations: Array<{
    spanish: string;
    bubi: string | null;
    found: boolean;
    entry?: any;
  }> = [];
  
  let foundCount = 0;
  
  // Buscar cada palabra en el diccionario
  for (const word of words) {
    const { data, error } = await supabase
      .from('dictionary_entries')
      .select('bubi, spanish, word_type, nominal_class, ipa')
      .ilike('spanish', word)
      .limit(1);
    
    if (!error && data && data.length > 0) {
      translations.push({
        spanish: word,
        bubi: data[0].bubi,
        found: true,
        entry: data[0]
      });
      foundCount++;
    } else {
      translations.push({
        spanish: word,
        bubi: null,
        found: false
      });
    }
  }
  
  // Si encontramos al menos el 50% de las palabras, construir traducción
  if (foundCount >= words.length * 0.5) {
    const bubiWords = translations.map(t => t.bubi || `[${t.spanish}?]`).join(' ');
    const missingWords = translations.filter(t => !t.found).map(t => t.spanish);
    
    return {
      translation: bubiWords,
      foundWords: foundCount,
      totalWords: words.length,
      missingWords,
      wordDetails: translations.filter(t => t.found).map(t => t.entry),
      isPartial: missingWords.length > 0
    };
  }
  
  return null;
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
    const trimmedText = text.trim();
    
    // Detectar si es una palabra o una oración
    const isMultipleWords = trimmedText.includes(' ');
    
    if (isMultipleWords) {
      // CASO 1: ORACIÓN - Traducir palabra por palabra desde el diccionario
      logger.info('Traduciendo oración palabra por palabra', { text: trimmedText });
      const sentenceTranslation = await translateSentenceFromDictionary(trimmedText);
      
      if (sentenceTranslation) {
        const { translation, foundWords, totalWords, missingWords, wordDetails, isPartial } = sentenceTranslation;
        
        return NextResponse.json({
          translation,
          explanation: isPartial 
            ? `Traducción parcial: ${foundWords}/${totalWords} palabras encontradas en el diccionario. Palabras no encontradas: ${missingWords.join(', ')}`
            : `Traducción completa: ${foundWords}/${totalWords} palabras del diccionario`,
          alternatives: [],
          source: 'dictionary',
          provider: 'dictionary-sentence',
          entries: wordDetails,
          detectedLanguage: 'spanish',
          note: isPartial 
            ? `⚠️ ADVERTENCIA: Las palabras marcadas con [?] NO están en el diccionario y necesitan ser agregadas. La IA NO debe inventar traducciones.`
            : undefined
        });
      }
      
      // Si no se pudo traducir suficientes palabras, devolver error
      return NextResponse.json({
        translation: '',
        explanation: `No se pudo traducir la oración. Muy pocas palabras encontradas en el diccionario (${trimmedText.split(' ').length} palabras en total).`,
        alternatives: [],
        source: 'error',
        provider: 'none',
        detectedLanguage: 'spanish',
        note: '⚠️ IMPORTANTE: Esta oración contiene palabras que NO están en el diccionario. Por favor, agrega las palabras faltantes al diccionario primero. NO se usará IA para inventar traducciones.'
      });
    }
    
    // CASO 2: PALABRA INDIVIDUAL - Buscar SOLO en el diccionario
    logger.info('Buscando palabra individual en diccionario', { text: trimmedText });
    const dictionaryResults = await searchInDictionary(trimmedText);
    
    if (dictionaryResults && dictionaryResults.length > 0) {
      logger.info('Palabra encontrada en diccionario', { count: dictionaryResults.length });
      const translation = buildTranslationFromDictionary(dictionaryResults, trimmedText);
      
      return NextResponse.json({
        ...translation,
        detectedLanguage: 'spanish',
        provider: 'dictionary',
      });
    }
    
    // CASO 3: Palabra NO encontrada - NO usar IA, devolver error claro
    logger.info('Palabra NO encontrada en diccionario', { text: trimmedText });
    
    return NextResponse.json({
      translation: '',
      explanation: `La palabra "${trimmedText}" NO está en el diccionario de 7,676 palabras.`,
      alternatives: [],
      source: 'not-found',
      provider: 'none',
      detectedLanguage: 'spanish',
      note: `⚠️ PALABRA NO ENCONTRADA: "${trimmedText}" no existe en el diccionario. Por favor, agrégala desde el panel de administración. NO se usará IA para inventar la traducción.`
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/translate', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
