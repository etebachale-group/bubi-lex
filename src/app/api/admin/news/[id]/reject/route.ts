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

// POST - Rechazar noticia
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
      .from('news')
      .update({
        is_approved: false,
        is_rejected: true,
        rejection_reason: reason,
        approved_by: session.user?.email || null,
      })
      .eq('id', id)
      .select('id, title')
      .single();

    if (error) {
      logger.error('Error al rechazar noticia', error as Error);
      return NextResponse.json({ error: 'Error al rechazar noticia' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'news.reject',
      target: id,
      meta: { title: data.title, reason }
    });

    return NextResponse.json({ success: true, data });
  } catch (err) {
    logger.error('Error en POST /api/admin/news/[id]/reject', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
