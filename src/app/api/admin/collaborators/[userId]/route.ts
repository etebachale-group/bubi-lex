import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { getSupabase } from '@/lib/db';
import { logAuditEvent } from '@/lib/audit-log';

export async function DELETE(
  req: NextRequest,
  { params }: { params: { userId: string } }
) {
  try {
    const session = await getServerSession(authOptions);
    
    if (!session?.isAdmin) {
      return NextResponse.json(
        { error: 'No autorizado' },
        { status: 401 }
      );
    }

    const { userId } = params;

    if (!userId) {
      return NextResponse.json(
        { error: 'ID de usuario requerido' },
        { status: 400 }
      );
    }

    const supabase = getSupabase();

    // Obtener información del usuario antes de remover
    const { data: user } = await supabase
      .from('user_roles')
      .select('email')
      .eq('user_id', userId)
      .single();

    // Remover permisos de colaborador (no eliminar el usuario, solo quitar permisos)
    const { error } = await supabase
      .from('user_roles')
      .update({ can_edit_dictionary: false })
      .eq('user_id', userId);

    if (error) throw error;

    await logAuditEvent({
      action: 'collaborator_removed',
      entity_type: 'user_role',
      entity_id: userId,
      details: { email: user?.email, removed_permission: 'can_edit_dictionary' },
      user_id: session.user?.email || 'unknown',
    });

    return NextResponse.json({ 
      message: 'Colaborador removido exitosamente'
    });

  } catch (error) {
    console.error('Error removing collaborator:', error);
    return NextResponse.json(
      { error: 'Error al remover colaborador' },
      { status: 500 }
    );
  }
}
