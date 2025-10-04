import { NextResponse } from 'next/server';
import { supabase } from '@/lib/db';

// TODO: Add authentication to protect this route

export async function POST(req: Request) {
  try {
    const body = await req.json();
    const { title, content, date, image, video } = body;

    if (!title || !content || !date) {
      return NextResponse.json({ error: 'Título, contenido y fecha son requeridos' }, { status: 400 });
    }

    const { data, error } = await supabase
      .from('news')
      .insert([
        {
          title,
          content,
          date,
          image: image || null,
          video: video || null,
        },
      ])
      .select()
      .single();

    if (error) {
      console.error('Supabase insert error:', error);
      return NextResponse.json({ error: 'Error al crear la noticia' }, { status: 500 });
    }

    return NextResponse.json(data, { status: 201 });

  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}