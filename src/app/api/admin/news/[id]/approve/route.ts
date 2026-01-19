import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

// POST - Aprobar noticia
export async function POST(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const params = await context.params;
    const id = Number(params.id);
    
    if (!Number.isFinite(id) || id <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('news')
      .update({
        is_approved: true,
        is_rejected: false,
        approved_at: new Date().toISOString(),
        approved_by: session.user?.email || null,
      })
      .eq('id', id)
      .select('id, title')
      .single();

    if (error) {
      logger.error('Error al aprobar noticia', error as Error);
      return NextResponse.json({ error: 'Error al aprobar noticia' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'news.approve',
      target: id,
      meta: { title: data.title }
    });

    return NextResponse.json({ success: true, data });
  } catch (err) {
    logger.error('Error en POST /api/admin/news/[id]/approve', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
