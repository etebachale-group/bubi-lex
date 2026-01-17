import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';

const ItemSchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

const BulkSchema = z.array(ItemSchema).min(1);

export async function GET(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.canEditDictionary) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes, created_at, updated_at, created_by, updated_by')
      .order('created_at', { ascending: false });

    if (error) {
      logger.error('Error al obtener entradas', error);
      throw error;
    }

    return NextResponse.json(data || []);
  } catch (err) {
    logger.error('Error en GET /api/dictionary/bulk', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

export async function POST(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }
    
    const body = await req.json();
    const parsed = BulkSchema.safeParse(Array.isArray(body) ? body : body?.items);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }

    const items = parsed.data.map((i) => ({
      bubi: i.bubi.trim(),
      spanish: i.spanish.trim(),
      ipa: i.ipa?.trim() ?? null,
      notes: i.notes?.trim() ?? null,
    }));

    const supabase = getSupabase();
    const { error, count } = await supabase.from('dictionary_entries').insert(items);

    if (error) {
      logger.error('Error en inserción masiva', error);
      throw error;
    }

    try { 
      broadcast({ kind: 'bulk-insert', count: items.length }); 
    } catch (e) { 
      logger.warn('Error en broadcast', e); 
    }
    
    try {
      recordAdminAudit({
        actorEmail: (session as any)?.user?.email || null,
        action: 'dictionary.bulk-insert',
        target: null,
        meta: { count: items.length }
      });
    } catch (e) {
      logger.warn('Error en auditoría', e);
    }

    return NextResponse.json({
      ok: true,
      inserted: count ?? items.length,
    });
  } catch (err) {
    logger.error('Error en POST /api/dictionary/bulk', err);
    const detail = process.env.NODE_ENV !== 'production' ? (err as Error)?.message : undefined;
    return NextResponse.json({ error: 'Error interno del servidor', detail }, { status: 500 });
  }
}
