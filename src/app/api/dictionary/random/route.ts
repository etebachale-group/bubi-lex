export const dynamic = 'force-dynamic';
import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';

type Row = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const mode = (searchParams.get('mode') || 'daily').toLowerCase();
    const excludeId = searchParams.get('excludeId');

    const supabase = getSupabase();
    
    if (mode === 'random') {
      // Para modo random, usar RPC pero excluir el ID anterior si se proporciona
      const { data, error } = await supabase.rpc('get_random_dictionary_entry').single<Row>();
      if (error) {
        return NextResponse.json({ error: `Error en RPC get_random_dictionary_entry: ${error.message}` }, { status: 500 });
      }
      
      // Si el resultado es el mismo que el excluido, intentar obtener otro
      if (excludeId && data && data.id === parseInt(excludeId)) {
        const { data: secondTry, error: secondError } = await supabase.rpc('get_random_dictionary_entry').single<Row>();
        if (!secondError && secondTry && secondTry.id !== parseInt(excludeId)) {
          return NextResponse.json(secondTry);
        }
      }
      
      return NextResponse.json(data || null);
    }

    // daily deterministic pick (stable hash of YYYY-MM-DD to spread selection)
    const { count, error: countError } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    if (countError) {
      return NextResponse.json({ error: `Error al contar filas: ${countError.message}` }, { status: 500 });
    }
    if (!count || count === 0) {
      return NextResponse.json({ error: `No se encontraron filas. El conteo es: ${count}. ¿La tabla está vacía o RLS está bloqueando el acceso?` }, { status: 404 });
    }

    const now = new Date();
    const y = now.getUTCFullYear();
    const m = now.getUTCMonth() + 1; // 1-12
    const d = now.getUTCDate();
    const key = `${y}-${m}-${d}`;
    // Simple FNV-1a like hash for string date
    let hash = 2166136261;
    for (let i = 0; i < key.length; i++) {
      hash ^= key.charCodeAt(i);
      hash = (hash * 16777619) >>> 0;
    }
    const offset = hash % count;

    const { data, error: fetchError } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes')
      .range(offset, offset)
      .single();

    if (fetchError) {
      return NextResponse.json({ error: `Error al obtener la palabra (offset: ${offset}): ${fetchError.message}` }, { status: 500 });
    }
    
    if (!data) {
        return NextResponse.json({ error: `No se encontró ninguna palabra para el offset: ${offset}.` }, { status: 404 });
    }

    return NextResponse.json(data);
  } catch (err: any) {
    return NextResponse.json({ error: `Error inesperado en la API: ${err.message}` }, { status: 500 });
  }
}