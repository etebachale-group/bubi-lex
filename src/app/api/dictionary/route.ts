import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';

const DictionarySchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const q = (searchParams.get('q') || '').trim();
    const page = Math.max(1, parseInt(searchParams.get('page') || '1', 10) || 1);
    const limit = Math.max(1, Math.min(100, parseInt(searchParams.get('limit') || '12', 10) || 12));
    const langRaw = (searchParams.get('lang') || 'bubi').toLowerCase();
    const lang: 'bubi' | 'es' = langRaw === 'es' ? 'es' : 'bubi';
    const offset = (page - 1) * limit;

    const orderBy = lang === 'es' ? 'spanish' : 'bubi';

    const supabase = getSupabase();
    let query = supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes', { count: 'exact' });

    if (q) {
      const { data, error } = await supabase.rpc('search_dictionary_entries', { search_term: q });
      if (error) {
        console.error('Supabase RPC search_dictionary_entries Error:', error);
        throw error;
      }
      return NextResponse.json({ items: data, total: data?.length || 0 });
    }

    const { data: rows, count, error } = await query
      .order(orderBy, { ascending: true })
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Supabase GET Error:', error);
      throw error;
    }

    return NextResponse.json({ items: rows, total: count ?? 0 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}

export async function POST(req: Request) {
  try {
  const session = await getServerSession(authOptions);
  if (!(session as any)?.isAdmin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    const body = await req.json();
    const parsed = DictionarySchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }
    const { bubi, spanish, ipa, notes } = parsed.data;

    const supabase = getSupabase();
    const { data: newEntry, error } = await supabase
      .from('dictionary_entries')
      .insert({ bubi, spanish, ipa, notes })
      .select('id, bubi, spanish, ipa')
      .single();

    if (error) {
      console.error('Supabase POST Error:', error);
      throw error;
    }

    if (newEntry) {
      try {
        broadcast({ kind: 'insert', id: newEntry.id, bubi: newEntry.bubi, spanish: newEntry.spanish, ipa: newEntry.ipa });
      } catch (e) {
        console.error('Broadcast error', e);
      }
      try {
        recordAdminAudit({
          actorEmail: (session as any)?.user?.email || null,
          action: 'dictionary.create',
          target: newEntry.id,
          meta: { bubi: newEntry.bubi, spanish: newEntry.spanish }
        });
      } catch {}
    }

    return NextResponse.json({ ok: true, id: newEntry?.id }, { status: 201 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
