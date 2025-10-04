import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/db';

// Incrementa el contador de "likes" para una noticia determinada
export async function POST(
  req: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    // Llama a la función de la base de datos para incrementar los likes
    const { data: rpcData, error } = await supabase
      .rpc('increment_likes', { news_id: idNum })
      .single();

    if (error) {
      console.error('Supabase RPC Error:', error);
      return NextResponse.json(
        { error: 'Noticia no encontrada o error en la base de datos' },
        { status: 404 }
      );
    }

    const data = rpcData as { id: number; likes: number };

    if (!data) {
      return NextResponse.json({ error: 'Noticia no encontrada' }, { status: 404 });
    }

    return NextResponse.json({ id: data.id, likes: data.likes });
  } catch (err) {
    console.error(err);
    return NextResponse.json(
      { error: 'Internal Server Error' },
      { status: 500 }
    );
  }
}