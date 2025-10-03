import { NextResponse } from 'next/server';
import { supabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';

const ItemSchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

const BulkSchema = z.array(ItemSchema).min(1);

export async function POST(req: Request) {
  try {
    const body = await req.json();
    const parsed = BulkSchema.safeParse(Array.isArray(body) ? body : body?.items);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }

    const items = parsed.data.map((i) => ({
      bubi: i.bubi.trim(),
      spanish: i.spanish.trim(),
      ipa: i.ipa?.trim() ?? null,
      notes: i.notes?.trim() ?? null,
    }));

    // Supabase `insert` can handle an array of objects directly.
    const { error, count } = await supabase.from('dictionary_entries').insert(items);

    if (error) {
      console.error('Supabase bulk insert error:', error);
      throw error;
    }

    try {
      broadcast({ kind: 'bulk-insert', count: items.length });
    } catch (e) {
      console.error('Broadcast error:', e);
    }

    return NextResponse.json({
      ok: true,
      inserted: count ?? items.length, // `count` from Supabase is more reliable
    });
  } catch (err) {
    console.error(err);
    const detail = process.env.NODE_ENV !== 'production' ? (err as Error)?.message : undefined;
    return NextResponse.json({ error: 'Internal Server Error', detail }, { status: 500 });
  }
}
