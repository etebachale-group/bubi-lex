import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { z } from 'zod';
import { recordAdminAudit } from '@/lib/audit-log';

const GrammarSchema = z.object({
  category: z.string().min(1, 'Categoría requerida'),
  subcategory: z.string().optional().nullable(),
  title: z.string().min(1, 'Título requerido'),
  content: z.string().min(1, 'Contenido requerido'),
  examples: z.string().optional().nullable(),
  rules: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
  order_index: z.number().optional(),
  is_active: z.boolean().optional(),
});

export const dynamic = 'force-dynamic';

// GET - Obtener toda la gramática (admin)
export async function GET() {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('bubi_grammar')
      .select('*')
      .order('order_index', { ascending: true });
    
    if (error) {
      console.error('Error fetching grammar:', error);
      return NextResponse.json({ error: 'Error al obtener gramática' }, { status: 500 });
    }

    return NextResponse.json({ items: data || [] });

  } catch (error) {
    console.error('Error in GET /api/admin/grammar:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}

// POST - Crear nueva entrada de gramática
export async function POST(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!(session as any)?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }

    const body = await req.json();
    const parsed = GrammarSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const supabase = getSupabase();
    
    const { data, error } = await supabase
      .from('bubi_grammar')
      .insert([{
        ...parsed.data,
        created_by: session?.user?.email || null,
      }])
      .select()
      .single();

    if (error) {
      console.error('Error creating grammar:', error);
      return NextResponse.json({ error: 'Error al crear entrada' }, { status: 500 });
    }

    recordAdminAudit({
      actorEmail: session?.user?.email || null,
      action: 'grammar.create',
      target: data.id,
      meta: { title: data.title, category: data.category }
    });

    return NextResponse.json(data, { status: 201 });

  } catch (error) {
    console.error('Error in POST /api/admin/grammar:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
