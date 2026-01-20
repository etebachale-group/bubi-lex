import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { z } from 'zod';
import { recordAdminAudit } from '@/lib/audit-log';

const GrammarUpdateSchema = z.object({
  category: z.string().min(1).optional(),
  subcategory: z.string().optional().nullable(),
  title: z.string().min(1).optional(),
  content: z.string().min(1).optional(),
  examples: z.string().optional().nullable(),
  rules: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
  order_index: z.number().optional(),
  is_active: z.boolean().optional(),
});

export const dynamic = 'force-dynamic';

// GET - Obtener una entrada específica
export async function GET(
  req: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const { id } = await params;
    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('bubi_grammar')
      .select('*')
      .eq('id', id)
      .single();
    
    if (error || !data) {
      return NextResponse.json({ error: 'Entrada no encontrada' }, { status: 404 });
    }

    return NextResponse.json(data);

  } catch (error) {
    console.error('Error in GET /api/admin/grammar/[id]:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}

// PUT - Actualizar entrada
export async function PUT(
  req: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const { id } = await params;
    const body = await req.json();
    const parsed = GrammarUpdateSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('bubi_grammar')
      .update({
        ...parsed.data,
        updated_by: session?.user?.email || null,
      })
      .eq('id', id)
      .select()
      .single();

    if (error) {
      console.error('Error updating grammar:', error);
      return NextResponse.json({ error: 'Error al actualizar entrada' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'grammar.update',
      target: id,
      meta: { title: data.title, category: data.category }
    });

    return NextResponse.json(data);

  } catch (error) {
    console.error('Error in PUT /api/admin/grammar/[id]:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}

// DELETE - Eliminar entrada
export async function DELETE(
  req: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const { id } = await params;
    const supabase = getSupabase();
    
    // Obtener datos antes de eliminar para el audit log
    const { data: grammarData } = await supabase
      .from('bubi_grammar')
      .select('title, category')
      .eq('id', id)
      .single();
    
    const { error } = await supabase
      .from('bubi_grammar')
      .delete()
      .eq('id', id);

    if (error) {
      console.error('Error deleting grammar:', error);
      return NextResponse.json({ error: 'Error al eliminar entrada' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'grammar.delete',
      target: id,
      meta: grammarData || {}
    });

    return NextResponse.json({ success: true });

  } catch (error) {
    console.error('Error in DELETE /api/admin/grammar/[id]:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
