import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';
import { logger } from '@/lib/logger';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';

const DictionarySchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

export async function GET(req: Request) {
  try {
    // Rate limiting para búsquedas públicas
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`dictionary:${identifier}`, RATE_LIMITS.moderate);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes. Por favor, intenta más tarde.' },
        { 
          status: 429,
          headers: {
            'X-RateLimit-Limit': String(rateLimitResult.limit),
            'X-RateLimit-Remaining': String(rateLimitResult.remaining),
            'X-RateLimit-Reset': String(rateLimitResult.reset),
          }
        }
      );
    }

    const { searchParams } = new URL(req.url);
    const q = (searchParams.get('q') || '').trim();
    const page = Math.max(1, parseInt(searchParams.get('page') || '1', 10) || 1);
    const limit = Math.max(1, Math.min(100, parseInt(searchParams.get('limit') || '12', 10) || 12));
    const langRaw = (searchParams.get('lang') || 'bubi').toLowerCase();
    const lang: 'bubi' | 'es' = langRaw === 'es' ? 'es' : 'bubi';
    const offset = (page - 1) * limit;

    const orderBy = lang === 'es' ? 'spanish' : 'bubi';

    const supabase = getSupabase();
    let query = supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, word_type, gender, number, nominal_class, plural_form, ipa, examples, variants, notes, created_by', { count: 'exact' });

    if (q) {
      const { data, error } = await supabase.rpc('search_dictionary_entries', { search_term: q });
      if (error) {
        logger.error('Error en búsqueda de diccionario', error as Error, { search_term: q });
        throw error;
      }
      
      const response = NextResponse.json({ items: data, total: data?.length || 0 });
      response.headers.set('X-RateLimit-Limit', String(rateLimitResult.limit));
      response.headers.set('X-RateLimit-Remaining', String(rateLimitResult.remaining));
      response.headers.set('X-RateLimit-Reset', String(rateLimitResult.reset));
      return response;
    }

    const { data: rows, count, error } = await query
      .order(orderBy, { ascending: true })
      .range(offset, offset + limit - 1);

    if (error) {
      logger.error('Error al obtener entradas del diccionario', error as Error, { page, limit, lang });
      throw error;
    }

    const response = NextResponse.json({ items: rows, total: count ?? 0 });
    response.headers.set('X-RateLimit-Limit', String(rateLimitResult.limit));
    response.headers.set('X-RateLimit-Remaining', String(rateLimitResult.remaining));
    response.headers.set('X-RateLimit-Reset', String(rateLimitResult.reset));
    return response;
  } catch (err) {
    logger.error('Error en GET /api/dictionary', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

export async function POST(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.canEditDictionary && !session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }
    
    const body = await req.json();
    const parsed = DictionarySchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }
    
    const { bubi, spanish, ipa, notes } = parsed.data;
    const supabase = getSupabase();
    
    // Verificar si ya existe una entrada con la misma palabra en bubi
    const { data: existing } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish')
      .eq('bubi', bubi)
      .limit(1);
    
    if (existing && existing.length > 0) {
      return NextResponse.json({ 
        error: 'Ya existe una entrada con esta palabra en bubi',
        duplicate: existing[0]
      }, { status: 409 });
    }
    
    const { data: newEntry, error } = await supabase
      .from('dictionary_entries')
      .insert({ 
        bubi, 
        spanish, 
        ipa, 
        notes,
        created_by: session?.user?.email || null,
        updated_by: session?.user?.email || null
      })
      .select('id, bubi, spanish, ipa')
      .single();

    if (error) {
      logger.error('Error al crear entrada del diccionario', error as Error);
      throw error;
    }

    if (newEntry) {
      try {
        broadcast({ kind: 'insert', id: newEntry.id, bubi: newEntry.bubi, spanish: newEntry.spanish, ipa: newEntry.ipa });
      } catch (e) {
        logger.warn('Error en broadcast', e as Error);
      }
      
      recordAdminAudit({
        actorEmail: session?.user?.email || null,
        action: 'dictionary.create',
        target: newEntry.id,
        meta: { bubi: newEntry.bubi, spanish: newEntry.spanish }
      });
    }

    return NextResponse.json({ ok: true, id: newEntry?.id }, { status: 201 });
  } catch (err) {
    logger.error('Error en POST /api/dictionary', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
