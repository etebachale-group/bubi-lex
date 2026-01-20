import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/db';

export const dynamic = 'force-dynamic';

// GET - Obtener toda la gramática para la IA
export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const category = searchParams.get('category');
    const format = searchParams.get('format'); // 'full' o 'compact'

    const supabase = getSupabase();
    
    // Obtener gramática general
    let grammarQuery = supabase
      .from('bubi_grammar')
      .select('*')
      .eq('is_active', true)
      .order('order_index', { ascending: true });
    
    if (category) {
      grammarQuery = grammarQuery.eq('category', category);
    }
    
    const { data: grammar, error: grammarError } = await grammarQuery;
    
    if (grammarError) {
      console.error('Error fetching grammar:', grammarError);
      return NextResponse.json({ error: 'Error al obtener gramática' }, { status: 500 });
    }

    // Obtener conjugaciones verbales
    const { data: conjugations, error: conjugError } = await supabase
      .from('bubi_verb_conjugations')
      .select('*')
      .order('verb_infinitive', { ascending: true });
    
    if (conjugError) {
      console.error('Error fetching conjugations:', conjugError);
    }

    // Obtener patrones gramaticales
    const { data: patterns, error: patternsError } = await supabase
      .from('bubi_grammar_patterns')
      .select('*')
      .eq('is_active', true)
      .order('pattern_type', { ascending: true });
    
    if (patternsError) {
      console.error('Error fetching patterns:', patternsError);
    }

    // Formato compacto para la IA (solo lo esencial)
    if (format === 'compact') {
      const compactData = {
        grammar: grammar?.map(g => ({
          category: g.category,
          title: g.title,
          content: g.content,
          rules: g.rules,
          examples: g.examples
        })) || [],
        conjugations: conjugations?.map(c => ({
          verb: c.verb_infinitive,
          spanish: c.verb_spanish,
          tense: c.tense,
          person: c.person,
          form: c.conjugation,
          example: c.example
        })) || [],
        patterns: patterns?.map(p => ({
          type: p.pattern_type,
          name: p.pattern_name,
          structure: p.structure,
          examples: p.examples
        })) || []
      };
      
      return NextResponse.json(compactData);
    }

    // Formato completo
    return NextResponse.json({
      grammar: grammar || [],
      conjugations: conjugations || [],
      patterns: patterns || [],
      total: {
        grammar: grammar?.length || 0,
        conjugations: conjugations?.length || 0,
        patterns: patterns?.length || 0
      }
    });

  } catch (error) {
    console.error('Error in GET /api/grammar:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
