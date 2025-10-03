export const dynamic = 'force-dynamic';
import { NextResponse } from 'next/server';
import { supabase } from '@/lib/db';

type Row = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const mode = (searchParams.get('mode') || 'daily').toLowerCase();

    if (mode === 'random') {
      const { data, error } = await supabase.rpc('get_random_dictionary_entry').single();
      if (error) {
        console.error('Supabase RPC Error:', error);
        throw error;
      }
      return NextResponse.json(data || null);
    }

    // daily deterministic pick based on day-of-year
    const { count, error: countError } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    if (countError) {
      console.error('Supabase Count Error:', countError);
      throw countError;
    }
    if (!count) return NextResponse.json(null);

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
      console.error('Supabase Fetch Error:', fetchError);
      throw fetchError;
    }

    return NextResponse.json(data || null);
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}