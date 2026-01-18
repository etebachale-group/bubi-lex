export const dynamic = 'force-dynamic';
import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { logger } from '@/lib/logger';

type Row = { 
  id: number; 
  bubi: string; 
  spanish: string; 
  ipa: string | null; 
  notes: string | null;
};

/**
 * GET /api/dictionary/random
 * 
 * Retorna una palabra aleatoria del diccionario
 * 
 * Query params:
 * - mode: 'daily' (palabra del día, determinística) o 'random' (completamente aleatoria)
 * - excludeId: ID a excluir (opcional, para evitar repetir la misma palabra)
 */
export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const mode = (searchParams.get('mode') || 'daily').toLowerCase();
    const excludeIdParam = searchParams.get('excludeId');
    const excludeId = excludeIdParam ? parseInt(excludeIdParam) : null;

    const supabase = getSupabase();
    
    // Obtener el conteo total de palabras
    const { count, error: countError } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    if (countError) {
      logger.error('Error al contar palabras del diccionario', countError as Error);
      return NextResponse.json({ error: 'Error al contar palabras' }, { status: 500 });
    }
    
    if (!count || count === 0) {
      return NextResponse.json({ error: 'No hay palabras en el diccionario' }, { status: 404 });
    }

    let selectedWord: Row | null = null;

    if (mode === 'daily') {
      // Palabra del día: determinística basada en la fecha
      const now = new Date();
      const dateKey = `${now.getUTCFullYear()}-${now.getUTCMonth() + 1}-${now.getUTCDate()}`;
      
      // Hash simple de la fecha para obtener un offset consistente
      let hash = 2166136261;
      for (let i = 0; i < dateKey.length; i++) {
        hash ^= dateKey.charCodeAt(i);
        hash = (hash * 16777619) >>> 0;
      }
      const offset = hash % count;

      const { data, error } = await supabase
        .from('dictionary_entries')
        .select('id, bubi, spanish, ipa, notes')
        .order('id', { ascending: true })
        .range(offset, offset)
        .single();

      if (error) {
        logger.error('Error al obtener palabra del día', error as Error, { offset });
        return NextResponse.json({ error: 'Error al obtener palabra del día' }, { status: 500 });
      }

      selectedWord = data;
    } else {
      // Modo random: obtener una palabra completamente aleatoria
      // Intentar hasta 3 veces para evitar el ID excluido
      let attempts = 0;
      const maxAttempts = 3;

      while (attempts < maxAttempts) {
        const randomOffset = Math.floor(Math.random() * count);
        
        const { data, error } = await supabase
          .from('dictionary_entries')
          .select('id, bubi, spanish, ipa, notes')
          .order('id', { ascending: true })
          .range(randomOffset, randomOffset)
          .single();

        if (error) {
          logger.error('Error al obtener palabra aleatoria', error as Error, { randomOffset, attempt: attempts + 1 });
          attempts++;
          continue;
        }

        // Si no hay ID a excluir, o si el ID es diferente, usar esta palabra
        if (!excludeId || data.id !== excludeId) {
          selectedWord = data;
          break;
        }

        attempts++;
      }

      // Si después de 3 intentos no encontramos una palabra diferente, usar la última
      if (!selectedWord && attempts === maxAttempts) {
        const randomOffset = Math.floor(Math.random() * count);
        const { data, error } = await supabase
          .from('dictionary_entries')
          .select('id, bubi, spanish, ipa, notes')
          .order('id', { ascending: true })
          .range(randomOffset, randomOffset)
          .single();

        if (!error && data) {
          selectedWord = data;
        }
      }
    }

    if (!selectedWord) {
      return NextResponse.json({ error: 'No se pudo obtener una palabra' }, { status: 404 });
    }

    return NextResponse.json(selectedWord);
  } catch (err: any) {
    logger.error('Error inesperado en /api/dictionary/random', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
