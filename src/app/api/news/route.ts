import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

const NewsSchema = z.object({
  title: z.string().min(1, 'El título es requerido').max(255, 'El título es demasiado largo'),
  content: z.string().min(1, 'El contenido es requerido'),
  date: z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Formato de fecha inválido (YYYY-MM-DD)'),
  image: z.string().url('URL de imagen inválida').max(512).optional().nullable(),
  video: z.string().url('URL de video inválida').max(512).optional().nullable(),
});

export async function POST(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const body = await req.json();
    const parsed = NewsSchema.safeParse(body);
    
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
      .insert([
        {
          title,
          content,
          date,
          image: image || null,
          video: video || null,
          created_by: session?.user?.email || null,
          updated_by: session?.user?.email || null,
        },
      ])
      .select()
      .single();

    if (error) {
      logger.error('Error al crear noticia', error);
      return NextResponse.json({ error: 'Error al crear la noticia' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'news.create',
      target: data.id,
      meta: { title: data.title }
    });

    return NextResponse.json(data, { status: 201 });
  } catch (err) {
    logger.error('Error en POST /api/news', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}