import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { logger } from '@/lib/logger';

export async function GET(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    
    // Obtener conteos de todas las tablas
    const [
      { count: dictionaryCount },
      { count: newsCount },
      { count: auditCount },
      { count: eventsCount }
    ] = await Promise.all([
      supabase.from('dictionary_entries').select('*', { count: 'exact', head: true }),
      supabase.from('news').select('*', { count: 'exact', head: true }),
      supabase.from('audit_log').select('*', { count: 'exact', head: true }).then(r => r.error ? { count: 0 } : r),
      supabase.from('dictionary_events').select('*', { count: 'exact', head: true }).then(r => r.error ? { count: 0 } : r)
    ]);

    return NextResponse.json({
      dictionaryCount: dictionaryCount || 0,
      newsCount: newsCount || 0,
      auditCount: auditCount || 0,
      eventsCount: eventsCount || 0
    });
  } catch (err) {
    logger.error('Error en GET /api/admin/database/stats', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
