import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

const NewsUpdateSchema = z.object({
  title: z.string().min(1, 'El título es requerido').max(255, 'El título es demasiado largo'),
  content: z.string().min(1, 'El contenido es requerido'),
  date: z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Formato de fecha inválido (YYYY-MM-DD)'),
  image: z.string().url('URL de imagen inválida').max(512).optional().nullable(),
  video: z.string().url('URL de video inválida').max(512).optional().nullable(),
});

export async function PUT(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const body = await req.json();
    const parsed = NewsUpdateSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const { title, content, date, image, video } = parsed.data;
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('news')
      .update({
        title,
        content,
        date,
        image: image || null,
        video: video || null,
        updated_by: session?.user?.email || null,
      })
      .eq('id', idNum)
      .select()
      .single();

    if (error) {
      logger.error('Error al actualizar noticia', error as Error, { id: idNum });
      return NextResponse.json({ error: 'Error al actualizar la noticia' }, { status: 500 });
    }

    if (!data) {
      return NextResponse.json({ error: 'Noticia no encontrada' }, { status: 404 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'news.update',
      target: data.id,
      meta: { title: data.title }
    });

    return NextResponse.json(data);
  } catch (err) {
    logger.error('Error en PUT /api/news/[id]', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

export async function DELETE(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    // Obtener datos antes de eliminar para auditoría
    const { data: existing } = await supabase
      .from('news')
      .select('id, title')
      .eq('id', idNum)
      .single();

    if (!existing) {
      return NextResponse.json({ error: 'Noticia no encontrada' }, { status: 404 });
    }

    const { error } = await supabase
      .from('news')
      .delete()
      .eq('id', idNum);

    if (error) {
      logger.error('Error al eliminar noticia', error as Error, { id: idNum });
      return NextResponse.json({ error: 'Error al eliminar la noticia' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'news.delete',
      target: idNum,
      meta: { title: existing.title }
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    logger.error('Error en DELETE /api/news/[id]', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}