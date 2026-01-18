import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { logger } from '@/lib/logger';
import { recordAdminAudit } from '@/lib/audit-log';

export async function DELETE(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    
    // Obtener conteo antes de eliminar
    const { count: beforeCount } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    // Eliminar todas las entradas
    const { error } = await supabase
      .from('dictionary_entries')
      .delete()
      .neq('id', 0); // Elimina todos los registros donde id != 0 (es decir, todos)

    if (error) {
      logger.error('Error al truncar diccionario', error as Error);
      return NextResponse.json({ 
        error: 'Error al eliminar las entradas del diccionario' 
      }, { status: 500 });
    }

    // Verificar que se eliminaron
    const { count: afterCount } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    logger.warn(`Diccionario truncado por ${session?.user?.email}. Eliminadas ${beforeCount} entradas`);

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'dictionary.truncate',
      target: null,
      meta: { 
        deletedCount: beforeCount,
        remainingCount: afterCount 
      }
    });

    return NextResponse.json({ 
      success: true,
      message: `Se eliminaron ${beforeCount} entradas del diccionario`,
      deletedCount: beforeCount,
      remainingCount: afterCount
    });
  } catch (err) {
    logger.error('Error en DELETE /api/admin/dictionary/truncate', err);
    return NextResponse.json({ 
      error: 'Error interno del servidor' 
    }, { status: 500 });
  }
}
