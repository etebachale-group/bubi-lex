import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';
import { broadcast } from '@/lib/dictionary-events';

interface DuplicateGroup {
  bubi: string;
  entries: Array<{
    id: number;
    bubi: string;
    spanish: string;
    ipa: string | null;
    notes: string | null;
    created_at: string;
  }>;
}

// GET: Detectar duplicados
export async function GET(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    
    // Obtener todas las entradas ordenadas por palabra bubi
    const { data: allEntries, error } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes, created_at')
      .order('bubi', { ascending: true });

    if (error) {
      logger.error('Error al obtener entradas del diccionario', error as Error);
      throw error;
    }

    // Agrupar por palabra bubi (case-insensitive)
    const groups = new Map<string, DuplicateGroup['entries']>();
    
    allEntries?.forEach(entry => {
      const key = entry.bubi.toLowerCase().trim();
      if (!groups.has(key)) {
        groups.set(key, []);
      }
      groups.get(key)!.push(entry);
    });

    // Filtrar solo los grupos con duplicados
    const duplicates: DuplicateGroup[] = [];
    groups.forEach((entries, bubi) => {
      if (entries.length > 1) {
        duplicates.push({ bubi, entries });
      }
    });

    return NextResponse.json({
      total: duplicates.length,
      duplicates: duplicates.map(d => ({
        bubi: d.bubi,
        count: d.entries.length,
        entries: d.entries
      }))
    });
  } catch (err) {
    logger.error('Error en GET /api/dictionary/duplicates', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

// DELETE: Eliminar duplicados (mantiene el más antiguo)
export async function DELETE(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    
    // Obtener todas las entradas ordenadas por palabra bubi y fecha de creación
    const { data: allEntries, error } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes, created_at')
      .order('bubi', { ascending: true })
      .order('created_at', { ascending: true });

    if (error) {
      logger.error('Error al obtener entradas del diccionario', error as Error);
      throw error;
    }

    // Agrupar por palabra bubi (case-insensitive)
    const groups = new Map<string, typeof allEntries>();
    
    allEntries?.forEach(entry => {
      const key = entry.bubi.toLowerCase().trim();
      if (!groups.has(key)) {
        groups.set(key, []);
      }
      groups.get(key)!.push(entry);
    });

    // Identificar IDs a eliminar (todos excepto el primero de cada grupo)
    const idsToDelete: number[] = [];
    const deletedWords: Array<{ id: number; bubi: string; spanish: string }> = [];
    
    groups.forEach((entries) => {
      if (entries.length > 1) {
        // Mantener el primero (más antiguo), eliminar el resto
        for (let i = 1; i < entries.length; i++) {
          idsToDelete.push(entries[i].id);
          deletedWords.push({
            id: entries[i].id,
            bubi: entries[i].bubi,
            spanish: entries[i].spanish
          });
        }
      }
    });

    if (idsToDelete.length === 0) {
      return NextResponse.json({ 
        message: 'No se encontraron duplicados',
        deleted: 0 
      });
    }

    // Eliminar duplicados
    const { error: deleteError } = await supabase
      .from('dictionary_entries')
      .delete()
      .in('id', idsToDelete);

    if (deleteError) {
      logger.error('Error al eliminar duplicados', deleteError as Error);
      throw deleteError;
    }

    // Broadcast de eliminaciones
    idsToDelete.forEach(id => {
      try {
        broadcast({ kind: 'delete', id });
      } catch (e) {
        logger.warn('Error en broadcast', e as Error);
      }
    });

    // Registrar auditoría
    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'dictionary.delete_duplicates',
      target: null,
      meta: { 
        count: idsToDelete.length,
        deletedWords: deletedWords.slice(0, 10) // Solo primeros 10 para no saturar
      }
    });

    logger.info(`Eliminados ${idsToDelete.length} duplicados por ${session?.user?.email}`);

    return NextResponse.json({ 
      message: `Se eliminaron ${idsToDelete.length} duplicados`,
      deleted: idsToDelete.length,
      deletedWords
    });
  } catch (err) {
    logger.error('Error en DELETE /api/dictionary/duplicates', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
