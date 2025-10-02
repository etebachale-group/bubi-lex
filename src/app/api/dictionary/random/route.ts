import { NextResponse } from 'next/server';
import { query } from '@/lib/db';

type Row = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const mode = (searchParams.get('mode') || 'daily').toLowerCase();

    if (mode === 'random') {
      const rows = await query<Row[]>(
        'SELECT id, bubi, spanish, ipa, notes FROM dictionary_entries ORDER BY RAND() LIMIT 1'
      );
      return NextResponse.json(rows[0] || null);
    }

    // daily deterministic pick based on day-of-year
    const [{ count }] = await query<Array<{ count: number }>>('SELECT COUNT(*) as count FROM dictionary_entries');
    if (!count) return NextResponse.json(null);
    const now = new Date();
    const start = new Date(Date.UTC(now.getUTCFullYear(), 0, 0));
    const diff = Number(now) - Number(start);
    const day = Math.floor(diff / (1000 * 60 * 60 * 24));
    const offset = day % count;
    const rows = await query<Row[]>(
      'SELECT id, bubi, spanish, ipa, notes FROM dictionary_entries ORDER BY id ASC LIMIT 1 OFFSET ?',
      [offset]
    );
    return NextResponse.json(rows[0] || null);
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
