import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { getSupabase } from '@/lib/db';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

export async function GET(req: NextRequest) {
  try {
    const session = await getServerSession(authOptions);
    
    if (!session?.isAdmin) {
      return NextResponse.json(
        { error: 'No autorizado' },
        { status: 401 }
      );
    }

    const supabase = getSupabase();

    const { data, error } = await supabase
      .from('user_roles')
      .select('*')
      .eq('can_edit_dictionary', true)
      .order('created_at', { ascending: false });

    if (error) {
      logger.error('Error fetching collaborators', error);
      throw error;
    }

    return NextResponse.json({ collaborators: data || [] });

  } catch (error) {
    logger.error('Error in GET /api/admin/collaborators', error);
    return NextResponse.json(
      { error: 'Error al obtener colaboradores', details: error instanceof Error ? error.message : String(error) },
      { status: 500 }
    );
  }
}

export async function POST(req: NextRequest) {
  try {
    const session = await getServerSession(authOptions);
    
    if (!session?.isAdmin) {
      logger.warn('Unauthorized collaborator creation attempt', { user: session?.user?.email });
      return NextResponse.json(
        { error: 'No autorizado. Solo administradores pueden agregar colaboradores.' },
        { status: 401 }
      );
    }

    const body = await req.json();
    const { email } = body;

    if (!email || typeof email !== 'string' || !email.includes('@')) {
      return NextResponse.json(
        { error: 'Email inválido. Por favor proporciona un email válido.' },
        { status: 400 }
      );
    }

    const normalizedEmail = email.toLowerCase().trim();
    const supabase = getSupabase();

    // Verificar si el usuario ya existe
    const { data: existingUser, error: fetchError } = await supabase
      .from('user_roles')
      .select('*')
      .eq('email', normalizedEmail)
      .maybeSingle();

    if (fetchError) {
      logger.error('Error checking existing user', fetchError);
      throw new Error(`Error al verificar usuario existente: ${fetchError.message}`);
    }

    if (existingUser) {
      // Si ya existe y ya es colaborador
      if (existingUser.can_edit_dictionary) {
        return NextResponse.json(
          { error: 'Este usuario ya es colaborador' },
          { status: 409 }
        );
      }

      // Si existe pero no es colaborador, actualizar permisos
      const { data, error: updateError } = await supabase
        .from('user_roles')
        .update({ 
          can_edit_dictionary: true,
          updated_at: new Date().toISOString()
        })
        .eq('email', normalizedEmail)
        .select()
        .single();

      if (updateError) {
        logger.error('Error updating user permissions', updateError);
        throw new Error(`Error al actualizar permisos: ${updateError.message}`);
      }

      recordAdminAudit({
        actorEmail: session.user?.email || null,
        action: 'collaborator.updated',
        target: data.user_id,
        meta: { email: normalizedEmail, granted_permission: 'can_edit_dictionary' },
      });

      return NextResponse.json({ 
        collaborator: data,
        message: 'Permisos de colaborador otorgados exitosamente'
      });
    }

    // Crear nuevo usuario con permisos de colaborador
    const { data, error: insertError } = await supabase
      .from('user_roles')
      .insert({
        email: normalizedEmail,
        can_edit_dictionary: true,
        is_admin: false,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (insertError) {
      logger.error('Error inserting new collaborator', insertError);
      
      // Mensajes de error más específicos
      if (insertError.code === '23505') {
        return NextResponse.json(
          { error: 'Este email ya está registrado' },
          { status: 409 }
        );
      }
      
      if (insertError.code === '42501') {
        return NextResponse.json(
          { error: 'Error de permisos en la base de datos. Contacta al administrador del sistema.' },
          { status: 500 }
        );
      }

      throw new Error(`Error al crear colaborador: ${insertError.message}`);
    }

    recordAdminAudit({
      actorEmail: session.user?.email || null,
      action: 'collaborator.created',
      target: data.user_id,
      meta: { email: normalizedEmail, permission: 'can_edit_dictionary' },
    });

    logger.info('Collaborator created successfully', { email: normalizedEmail, by: session.user?.email });

    return NextResponse.json({ 
      collaborator: data,
      message: 'Colaborador agregado exitosamente'
    });

  } catch (error) {
    logger.error('Error in POST /api/admin/collaborators', error);
    
    return NextResponse.json(
      { 
        error: 'Error al agregar colaborador',
        details: error instanceof Error ? error.message : 'Error desconocido',
        hint: 'Verifica que la tabla user_roles existe y tiene los permisos correctos en Supabase'
      },
      { status: 500 }
    );
  }
}
