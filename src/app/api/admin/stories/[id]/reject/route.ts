import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';
import { z } from 'zod';

const RejectSchema = z.object({
  reason: z.string().min(1, 'La razón es requerida').max(500, 'Razón muy larga'),
});

// POST - Rechazar relato
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

    const body = await req.json();
    const parsed = RejectSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const { reason } = parsed.data;
    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('stories')
      .update({
        is_approved: false,
        is_rejected: true,
        rejection_reason: reason,
        approved_by: session.user?.email || null,
      })
      .eq('id', id)
      .select('id, title, author_name')
      .single();

    if (error) {
      logger.error('Error al rechazar relato', error as Error);
      return NextResponse.json({ error: 'Error al rechazar relato' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'story.reject',
      target: id,
      meta: { title: data.title, author: data.author_name, reason }
    });

    return NextResponse.json({ success: true, data });
  } catch (err) {
    logger.error('Error en POST /api/admin/stories/[id]/reject', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
