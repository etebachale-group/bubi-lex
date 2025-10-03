import { NextResponse } from 'next/server';
import { supabase } from '@/lib/db';
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
    const { data: rows, error } = await supabase
      .from('news')
      .select('id, title, content, date, image, video, likes')
      .order('date', { ascending: false });

    if (error) {
      console.error('Supabase GET Error:', error);
      throw error;
    }

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

    const { error } = await supabase
      .from('news')
      .insert([{ title, content, date, image, video }]);

    if (error) {
      console.error('Supabase POST Error:', error);
      throw error;
    }

    return NextResponse.json({ ok: true }, { status: 201 });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
