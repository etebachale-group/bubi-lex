import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { logger } from '@/lib/logger';

export async function DELETE(
  req: Request,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const params = await context.params;
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }

    const supabase = getSupabase();
    
    // Obtener datos antes de eliminar para el log
    const { data: existing } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish')
      .eq('id', idNum)
      .single();

    if (!existing) {
      return NextResponse.json({ error: 'Entrada no encontrada' }, { status: 404 });
    }

    const { error } = await supabase
      .from('dictionary_entries')
      .delete()
      .eq('id', idNum);

    if (error) {
      logger.error('Error al eliminar entrada del diccionario', error as Error, { id: idNum });
      return NextResponse.json({ error: 'Error al eliminar la entrada' }, { status: 500 });
    }

    logger.info(`Entrada eliminada: ${existing.bubi} por ${session?.user?.email}`);

    return NextResponse.json({ 
      success: true,
      message: 'Entrada eliminada correctamente' 
    });
  } catch (err) {
    logger.error('Error en DELETE /api/admin/dictionary/[id]', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
