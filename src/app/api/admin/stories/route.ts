import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { logger } from '@/lib/logger';

// GET - Obtener todos los relatos (pendientes, aprobados, rechazados)
export async function GET(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const { searchParams } = new URL(req.url);
    const status = searchParams.get('status') || 'pending'; // pending, approved, rejected, all

    const supabase = getSupabase();
    let query = supabase
      .from('stories')
      .select('*', { count: 'exact' })
      .order('created_at', { ascending: false });

    if (status === 'pending') {
      query = query.eq('is_approved', false).eq('is_rejected', false);
    } else if (status === 'approved') {
      query = query.eq('is_approved', true);
    } else if (status === 'rejected') {
      query = query.eq('is_rejected', true);
    }

    const { data, error, count } = await query;

    if (error) {
      logger.error('Error al obtener relatos', error as Error);
      return NextResponse.json({ error: 'Error al obtener relatos' }, { status: 500 });
    }

    return NextResponse.json({
      stories: data || [],
      total: count || 0,
    });
  } catch (err) {
    logger.error('Error en GET /api/admin/stories', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
