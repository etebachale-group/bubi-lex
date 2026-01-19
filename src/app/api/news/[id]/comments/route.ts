import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { z } from 'zod';
import { logger } from '@/lib/logger';

const CommentSchema = z.object({
  author_name: z.string().min(1, 'El nombre es requerido').max(100, 'Nombre muy largo'),
  author_email: z.string().email('Email inválido').optional().nullable(),
  content: z.string().min(1, 'El comentario es requerido').max(1000, 'Comentario muy largo'),
  parent_id: z.number().optional().nullable(),
});

// GET - Obtener comentarios de una noticia
export async function GET(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const params = await context.params;
    const newsId = Number(params.id);
    
    if (!Number.isFinite(newsId) || newsId <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    // Obtener solo comentarios aprobados
    const { data, error } = await supabase
      .from('news_comments')
      .select('id, author_name, content, created_at, parent_id')
      .eq('news_id', newsId)
      .eq('is_approved', true)
      .order('created_at', { ascending: true });

    if (error) {
      logger.error('Error al obtener comentarios', error as Error, { newsId });
      return NextResponse.json({ error: 'Error al obtener comentarios' }, { status: 500 });
    }

    return NextResponse.json(data || []);
  } catch (err) {
    logger.error('Error en GET /api/news/[id]/comments', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

// POST - Crear nuevo comentario
export async function POST(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const params = await context.params;
    const newsId = Number(params.id);
    
    if (!Number.isFinite(newsId) || newsId <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const body = await req.json();
    const parsed = CommentSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const { author_name, author_email, content, parent_id } = parsed.data;
    const supabase = getSupabase();

    // Verificar que la noticia existe
    const { data: newsExists } = await supabase
      .from('news')
      .select('id')
      .eq('id', newsId)
      .single();

    if (!newsExists) {
      return NextResponse.json({ error: 'Noticia no encontrada' }, { status: 404 });
    }

    // Si es una respuesta, verificar que el comentario padre existe
    if (parent_id) {
      const { data: parentExists } = await supabase
        .from('news_comments')
        .select('id')
        .eq('id', parent_id)
        .eq('news_id', newsId)
        .single();

      if (!parentExists) {
        return NextResponse.json({ error: 'Comentario padre no encontrado' }, { status: 404 });
      }
    }

    // Crear comentario (requiere aprobación)
    const { data, error } = await supabase
      .from('news_comments')
      .insert([{
        news_id: newsId,
        author_name,
        author_email: author_email || null,
        content,
        parent_id: parent_id || null,
        is_approved: false, // Requiere aprobación
      }])
      .select('id, author_name, content, created_at, is_approved')
      .single();

    if (error) {
      logger.error('Error al crear comentario', error as Error, { newsId });
      return NextResponse.json({ error: 'Error al crear comentario' }, { status: 500 });
    }

    return NextResponse.json({
      ...data,
      message: 'Comentario enviado. Será visible después de ser aprobado por un moderador.'
    }, { status: 201 });
  } catch (err) {
    logger.error('Error en POST /api/news/[id]/comments', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
