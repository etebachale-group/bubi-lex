import { NextResponse } from 'next/server';
import { supabase } from '@/lib/db';

// TODO: Add authentication to protect this route

export async function PUT(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const body = await req.json();
    const { title, content, date, image, video } = body;

    if (!title || !content || !date) {
      return NextResponse.json({ error: 'Título, contenido y fecha son requeridos' }, { status: 400 });
    }

    const { data, error } = await supabase
      .from('news')
      .update({
        title,
        content,
        date,
        image: image || null,
        video: video || null,
      })
      .eq('id', idNum)
      .select()
      .single();

    if (error) {
      console.error('Supabase update error:', error);
      return NextResponse.json({ error: 'Error al actualizar la noticia' }, { status: 500 });
    }

    return NextResponse.json(data, { status: 200 });

  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}

export async function DELETE(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const { error } = await supabase
      .from('news')
      .delete()
      .match({ id: idNum });

    if (error) {
      console.error('Supabase delete error:', error);
      return NextResponse.json({ error: 'Error al eliminar la noticia' }, { status: 500 });
    }

    return NextResponse.json({ message: 'Noticia eliminada con éxito' }, { status: 200 });

  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}