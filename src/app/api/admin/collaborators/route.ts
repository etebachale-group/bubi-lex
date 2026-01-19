import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { getSupabase } from '@/lib/db';
import { recordAdminAudit } from '@/lib/audit-log';

export async function POST(req: NextRequest) {
  try {
    const session = await getServerSession(authOptions);
    
    if (!session?.isAdmin) {
      return NextResponse.json(
        { error: 'No autorizado' },
        { status: 401 }
      );
    }

    const { email } = await req.json();

    if (!email || typeof email !== 'string' || !email.includes('@')) {
      return NextResponse.json(
        { error: 'Email inválido' },
        { status: 400 }
      );
    }

    const supabase = getSupabase();

    // Verificar si el usuario ya existe
    const { data: existingUser } = await supabase
      .from('user_roles')
      .select('*')
      .eq('email', email.toLowerCase())
      .single();

    if (existingUser) {
      // Si ya existe, actualizar permisos
      const { data, error } = await supabase
        .from('user_roles')
        .update({ can_edit_dictionary: true })
        .eq('email', email.toLowerCase())
        .select()
        .single();

      if (error) throw error;

      recordAdminAudit({
        actorEmail: session.user?.email || null,
        action: 'collaborator.updated',
        target: data.user_id,
        meta: { email: email.toLowerCase(), granted_permission: 'can_edit_dictionary' },
      });

      return NextResponse.json({ 
        collaborator: data,
        message: 'Permisos actualizados exitosamente'
      });
    }

    // Crear nuevo usuario con permisos de colaborador
    const { data, error } = await supabase
      .from('user_roles')
      .insert({
        email: email.toLowerCase(),
        can_edit_dictionary: true,
        is_admin: false,
      })
      .select()
      .single();

    if (error) throw error;

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'collaborator.created',
      target: data.user_id,
      meta: { email: email.toLowerCase(), permission: 'can_edit_dictionary' },
    });

    return NextResponse.json({ 
      collaborator: data,
      message: 'Colaborador agregado exitosamente'
    });

  } catch (error) {
    console.error('Error adding collaborator:', error);
    return NextResponse.json(
      { error: 'Error al agregar colaborador' },
      { status: 500 }
    );
  }
}
