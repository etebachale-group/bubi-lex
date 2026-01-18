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
    
    // Obtener todos los usuarios que han contribuido
    const { data, error } = await supabase
      .from('dictionary_entries')
      .select('created_by, updated_by, created_at')
      .or('created_by.not.is.null,updated_by.not.is.null');

    if (error) {
      logger.error('Error al obtener colaboradores', error as Error);
      throw error;
    }

    // Agrupar por email y contar contribuciones
    const emailMap = new Map<string, { count: number; lastDate: string }>();
    
    data?.forEach(entry => {
      const emails = [entry.created_by, entry.updated_by].filter(Boolean);
      emails.forEach(email => {
        if (email) {
          const current = emailMap.get(email) || { count: 0, lastDate: entry.created_at };
          emailMap.set(email, {
            count: current.count + 1,
            lastDate: entry.created_at > current.lastDate ? entry.created_at : current.lastDate
          });
        }
      });
    });

    // Convertir a array y determinar roles
    const collaborators = Array.from(emailMap.entries()).map(([email, stats]) => ({
      email,
      role: 'collaborator', // Por defecto, en producción esto vendría de una tabla de roles
      wordCount: stats.count,
      lastContribution: stats.lastDate
    }));

    // Ordenar por cantidad de contribuciones
    collaborators.sort((a, b) => b.wordCount - a.wordCount);

    return NextResponse.json({ 
      collaborators,
      total: collaborators.length 
    });
  } catch (err) {
    logger.error('Error en GET /api/admin/collaborators', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
