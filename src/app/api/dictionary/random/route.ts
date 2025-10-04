export const dynamic = 'force-dynamic';
import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';

type Row = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const mode = (searchParams.get('mode') || 'daily').toLowerCase();

    const supabase = getSupabase();
    if (mode === 'random') {
      const { data, error } = await supabase.rpc('get_random_dictionary_entry').single();
      if (error) {
        return NextResponse.json({ error: `Error en RPC get_random_dictionary_entry: ${error.message}` }, { status: 500 });
      }
      return NextResponse.json(data || null);
    }

    // daily deterministic pick
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
    const start = new Date(Date.UTC(now.getUTCFullYear(), 0, 0));
    const diff = Number(now) - Number(start);
    const day = Math.floor(diff / (1000 * 60 * 60 * 24));
    const offset = day % count;

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