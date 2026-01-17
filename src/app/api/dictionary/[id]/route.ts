import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { recordAdminAudit } from '@/lib/audit-log';

const DictionarySchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

export async function GET(
  req: Request,
  { params }: { params: { id: string } }
) {
  const idNum = Number(params.id);
  if (!Number.isFinite(idNum) || idNum <= 0) {
    return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
  }
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('id, bubi, spanish, ipa, notes')
    .eq('id', idNum)
    .single();
  if (error) {
    return NextResponse.json({ error: 'No encontrado' }, { status: 404 });
  }
  return NextResponse.json(data);
}

export async function PUT(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }
    
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }
    
    const body = await req.json();
    const parsed = DictionarySchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }
    
    const { bubi, spanish, ipa, notes } = parsed.data;
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('dictionary_entries')
      .update({ bubi, spanish, ipa, notes })
      .eq('id', idNum)
      .select('id, bubi, spanish, ipa, notes')
      .single();
      
    if (error) {
      console.error('Error al actualizar entrada del diccionario:', error);
      return NextResponse.json({ error: 'Error al actualizar' }, { status: 500 });
    }
    
    try { 
      broadcast({ kind: 'update', id: data.id }); 
    } catch (e) {
      console.error('Error en broadcast:', e);
    }
    
    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'dictionary.update',
      target: data.id,
      meta: { bubi, spanish }
    });
    
    return NextResponse.json(data);
  } catch (err) {
    console.error('Error en PUT /api/dictionary/[id]:', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

export async function DELETE(
  req: Request,
  { params }: { params: { id: string } }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }
    
    const idNum = Number(params.id);
    if (!Number.isFinite(idNum) || idNum <= 0) {
      return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
    }
    
    const supabase = getSupabase();
    
    // Obtener datos antes de eliminar para auditoría
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
      console.error('Error al eliminar entrada del diccionario:', error);
      return NextResponse.json({ error: 'Error al eliminar' }, { status: 500 });
    }
    
    try { 
      broadcast({ kind: 'delete', id: idNum }); 
    } catch (e) {
      console.error('Error en broadcast:', e);
    }
    
    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'dictionary.delete',
      target: idNum,
      meta: { bubi: existing.bubi, spanish: existing.spanish }
    });
    
    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error('Error en DELETE /api/dictionary/[id]:', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}
