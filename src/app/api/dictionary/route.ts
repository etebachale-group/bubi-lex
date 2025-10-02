import { NextResponse } from 'next/server';
import { query, execute } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';

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

    let rows: Array<{ id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null }> = [];
    let count = 0;

    if (q) {
      // Prefer FULLTEXT search when query present (fast and ranked). Use boolean mode with prefix.
      const booleanQuery = q
        .split(/\s+/)
        .filter(Boolean)
        .map((t) => `${t.trim()}*`)
        .join(' ');

      // Rows with relevance
      rows = await query(
        `SELECT id, bubi, spanish, ipa, notes,
                MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE) AS relevance
           FROM dictionary_entries
          WHERE MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE)
          ORDER BY relevance DESC, ${orderBy} ASC
          LIMIT ? OFFSET ?`,
        [booleanQuery, booleanQuery, limit, offset]
      );
      // Count using same condition (approximate; MySQL can't index count relevance, but this is correct)
      const cnt = await query<Array<{ count: number }>>(
        `SELECT COUNT(*) AS count
           FROM dictionary_entries
          WHERE MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE)`,
        [booleanQuery]
      );
      count = cnt[0]?.count ?? 0;
    } else {
      rows = await query(
        `SELECT id, bubi, spanish, ipa, notes FROM dictionary_entries ORDER BY ${orderBy} ASC LIMIT ? OFFSET ?`,
        [limit, offset]
      );
      const cnt = await query<Array<{ count: number }>>('SELECT COUNT(*) AS count FROM dictionary_entries');
      count = cnt[0]?.count ?? 0;
    }
    return NextResponse.json({ items: rows, total: count ?? 0 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}

export async function POST(req: Request) {
  try {
    const body = await req.json();
    const parsed = DictionarySchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }
    const { bubi, spanish, ipa, notes } = parsed.data;
  const result = await execute('INSERT INTO dictionary_entries (bubi, spanish, ipa, notes) VALUES (?, ?, ?, ?)', [bubi, spanish, ipa ?? null, notes ?? null]);
  try { broadcast({ kind: 'insert', id: result.insertId, bubi, spanish, ipa }); } catch {}
  return NextResponse.json({ ok: true, id: result.insertId }, { status: 201 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
