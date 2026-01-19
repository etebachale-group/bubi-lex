import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { logger } from '@/lib/logger';

// GET - Obtener un relato específico
export async function GET(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const params = await context.params;
    const id = Number(params.id);
    
    if (!Number.isFinite(id) || id <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('stories')
      .select('*')
      .eq('id', id)
      .eq('is_approved', true)
      .eq('is_rejected', false)
      .single();

    if (error || !data) {
      return NextResponse.json({ error: 'Relato no encontrado' }, { status: 404 });
    }

    // Incrementar vistas
    await supabase
      .from('stories')
      .update({ views: (data.views || 0) + 1 })
      .eq('id', id);

    return NextResponse.json(data);
  } catch (err) {
    logger.error('Error en GET /api/stories/[id]', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

// POST - Like a un relato
export async function POST(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const params = await context.params;
    const id = Number(params.id);
    
    if (!Number.isFinite(id) || id <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    // Obtener likes actuales
    const { data: story } = await supabase
      .from('stories')
      .select('likes')
      .eq('id', id)
      .single();

    if (!story) {
      return NextResponse.json({ error: 'Relato no encontrado' }, { status: 404 });
    }

    // Incrementar likes
    const newLikes = (story.likes || 0) + 1;
    
    const { error } = await supabase
      .from('stories')
      .update({ likes: newLikes })
      .eq('id', id);

    if (error) {
      logger.error('Error al dar like', error as Error);
      return NextResponse.json({ error: 'Error al dar like' }, { status: 500 });
    }

    return NextResponse.json({ likes: newLikes });
  } catch (err) {
    logger.error('Error en POST /api/stories/[id]', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
