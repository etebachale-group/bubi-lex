import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

// POST - Aprobar relato
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
      .from('stories')
      .update({
        is_approved: true,
        is_rejected: false,
        approved_at: new Date().toISOString(),
        approved_by: session.user?.email || null,
      })
      .eq('id', id)
      .select('id, title, author_name')
      .single();

    if (error) {
      logger.error('Error al aprobar relato', error as Error);
      return NextResponse.json({ error: 'Error al aprobar relato' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'story.approve',
      target: id,
      meta: { title: data.title, author: data.author_name }
    });

    return NextResponse.json({ success: true, data });
  } catch (err) {
    logger.error('Error en POST /api/admin/stories/[id]/approve', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
