import { NextResponse } from 'next/server';
import { generatePracticeQuiz, isAIAvailable } from '@/lib/ai-features';
import { generateQuizWithFreeAI } from '@/lib/ai-free-alternatives';
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

    let quiz;
    let provider = 'free-ai';

    // Intentar primero con IA de pago si está disponible
    if (isAIAvailable()) {
      try {
        quiz = await generatePracticeQuiz(selectedWords);
        provider = 'openai/anthropic';
      } catch (error) {
        logger.warn('Error con IA de pago, usando alternativas gratuitas', { error: error instanceof Error ? error.message : String(error) });
        quiz = await generateQuizWithFreeAI(selectedWords);
      }
    } else {
      // Usar alternativas gratuitas directamente
      quiz = await generateQuizWithFreeAI(selectedWords);
    }

    return NextResponse.json({ 
      quiz,
      wordsUsed: selectedWords.length,
      provider,
    });
  } catch (error) {
    logger.error('Error en GET /api/ai/quiz', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
