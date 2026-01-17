import { NextResponse } from 'next/server';
import { contextualTranslation, detectLanguage, isAIAvailable } from '@/lib/ai-features';
import { translateWithFreeAI } from '@/lib/ai-free-alternatives';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';
import { z } from 'zod';

const TranslateSchema = z.object({
  text: z.string().min(1),
  context: z.string().optional().default(''),
});

export async function POST(req: Request) {
  try {
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-translate:${identifier}`, RATE_LIMITS.moderate);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes' },
        { status: 429 }
      );
    }

    const body = await req.json();
    const parsed = TranslateSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json(
        { error: 'Datos inválidos' },
        { status: 400 }
      );
    }

    const { text, context } = parsed.data;
    
    let result;
    let provider = 'free-ai';
    let detectedLang: string | undefined;

    // Intentar primero con IA de pago si está disponible
    if (isAIAvailable()) {
      try {
        detectedLang = await detectLanguage(text);
        result = await contextualTranslation(text, context);
        provider = 'openai/anthropic';
      } catch (error) {
        logger.warn('Error con IA de pago, usando alternativas gratuitas', error);
        result = await translateWithFreeAI(text, context);
        detectedLang = 'unknown';
      }
    } else {
      // Usar alternativas gratuitas directamente
      result = await translateWithFreeAI(text, context);
      detectedLang = 'unknown';
    }

    return NextResponse.json({
      ...result,
      detectedLanguage: detectedLang,
      provider,
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/translate', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
