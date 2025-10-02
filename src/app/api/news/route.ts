import { NextResponse } from 'next/server';
import { query } from '@/lib/db';
import { z } from 'zod';

const NewsSchema = z.object({
  title: z.string().min(1),
  content: z.string().min(1),
  date: z.string().regex(/^\d{4}-\d{2}-\d{2}$/),
  image: z.string().url().optional().nullable(),
  video: z.string().url().optional().nullable(),
});

export async function GET() {
  try {
    const rows = await query<Array<{ id: number; title: string; content: string; date: string; image: string | null; video: string | null; likes: number }>>(
      'SELECT id, title, content, DATE_FORMAT(date, "%Y-%m-%d") as date, image, video, likes FROM news ORDER BY date DESC'
    );
    return NextResponse.json(rows);
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}

export async function POST(req: Request) {
  try {
    const body = await req.json();
    const parsed = NewsSchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }
    const { title, content, date, image, video } = parsed.data;
    await query('INSERT INTO news (title, content, date, image, video) VALUES (?, ?, ?, ?, ?)', [title, content, date, image ?? null, video ?? null]);
    return NextResponse.json({ ok: true }, { status: 201 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
