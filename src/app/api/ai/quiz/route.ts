import { NextResponse } from 'next/server';
import { generatePracticeQuiz, isAIAvailable } from '@/lib/ai-features';
import { getSupabase } from '@/lib/db';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';

export async function GET(req: Request) {
  try {
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-quiz:${identifier}`, RATE_LIMITS.lenient);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes' },
        { status: 429 }
      );
    }

    if (!isAIAvailable()) {
      return NextResponse.json(
        { error: 'IA no disponible' },
        { status: 503 }
      );
    }

    // Obtener palabras aleatorias del diccionario
    const supabase = getSupabase();
    const { data: words, error } = await supabase
      .from('dictionary_entries')
      .select('bubi, spanish')
      .limit(10);

    if (error || !words || words.length === 0) {
      return NextResponse.json(
        { error: 'No hay palabras disponibles' },
        { status: 404 }
      );
    }

    // Seleccionar 5 palabras aleatorias
    const selectedWords = words
      .sort(() => Math.random() - 0.5)
      .slice(0, 5);

    const quiz = await generatePracticeQuiz(selectedWords);

    return NextResponse.json({ 
      quiz,
      wordsUsed: selectedWords.length,
    });
  } catch (error) {
    logger.error('Error en GET /api/ai/quiz', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
