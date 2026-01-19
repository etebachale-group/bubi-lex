import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';
import { z } from 'zod';
import { logger } from '@/lib/logger';

const StorySchema = z.object({
  title: z.string().min(1, 'El título es requerido').max(255, 'Título muy largo'),
  content: z.string().min(10, 'El relato debe tener al menos 10 caracteres').max(10000, 'Relato muy largo'),
  author_name: z.string().min(1, 'El nombre es requerido').max(100, 'Nombre muy largo'),
  author_email: z.string().email('Email inválido').optional().or(z.literal('')).transform(val => val === '' ? null : val),
});

// GET - Obtener relatos aprobados
export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '10');
    const offset = (page - 1) * limit;

    const supabase = getSupabase();
    
    const { data, error, count } = await supabase
      .from('stories')
      .select('id, title, content, author_name, created_at, views, likes', { count: 'exact' })
      .eq('is_approved', true)
      .eq('is_rejected', false)
      .order('created_at', { ascending: false })
      .range(offset, offset + limit - 1);

    if (error) {
      logger.error('Error al obtener relatos', error as Error);
      return NextResponse.json({ error: 'Error al obtener relatos' }, { status: 500 });
    }

    return NextResponse.json({
      stories: data || [],
      total: count || 0,
      page,
      limit,
    });
  } catch (err) {
    logger.error('Error en GET /api/stories', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

// POST - Crear nuevo relato (requiere moderación)
export async function POST(req: Request) {
  try {
    const body = await req.json();
    
    // Log del body recibido para debugging
    console.log('Body recibido:', JSON.stringify(body, null, 2));
    
    const parsed = StorySchema.safeParse(body);
    
    if (!parsed.success) {
      console.error('Error de validación:', parsed.error.flatten());
      return NextResponse.json({ 
        error: 'Datos inválidos', 
        details: parsed.error.flatten() 
      }, { status: 400 });
    }

    const { title, content, author_name, author_email } = parsed.data;
    const supabase = getSupabase();

    // Crear relato (requiere aprobación)
    const { data, error } = await supabase
      .from('stories')
      .insert([{
        title,
        content,
        author_name,
        author_email: author_email || null,
        is_approved: false,
        is_rejected: false,
      }])
      .select('id, title, author_name, created_at, is_approved')
      .single();

    if (error) {
      console.error('Error de Supabase:', {
        message: error.message,
        details: error.details,
        hint: error.hint,
        code: error.code
      });
      logger.error('Error al crear relato', error as Error);
      return NextResponse.json({ 
        error: 'Error al crear relato',
        details: error.message 
      }, { status: 500 });
    }

    return NextResponse.json({
      ...data,
      message: 'Relato enviado correctamente. Será visible después de ser aprobado por un moderador.'
    }, { status: 201 });
  } catch (err) {
    console.error('Error completo:', err);
    logger.error('Error en POST /api/stories', err);
    return NextResponse.json({ 
      error: 'Error interno del servidor',
      details: err instanceof Error ? err.message : 'Error desconocido'
    }, { status: 500 });
  }
}
