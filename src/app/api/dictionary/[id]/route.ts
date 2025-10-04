import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { broadcast } from '@/lib/dictionary-events';
import { z } from 'zod';

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
  const idNum = Number(params.id);
  if (!Number.isFinite(idNum) || idNum <= 0) {
    return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
  }
  const body = await req.json();
  const parsed = DictionarySchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
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
    return NextResponse.json({ error: 'Error al actualizar' }, { status: 500 });
  }
  try { broadcast({ kind: 'update', id: data.id }); } catch {}
  return NextResponse.json(data);
}

export async function DELETE(
  req: Request,
  { params }: { params: { id: string } }
) {
  const idNum = Number(params.id);
  if (!Number.isFinite(idNum) || idNum <= 0) {
    return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
  }
  const supabase = getSupabase();
  const { error } = await supabase
    .from('dictionary_entries')
    .delete()
    .eq('id', idNum);
  if (error) {
    return NextResponse.json({ error: 'Error al eliminar' }, { status: 500 });
  }
  try { broadcast({ kind: 'delete', id: idNum }); } catch {}
  return NextResponse.json({ ok: true });
}
