import { NextResponse } from 'next/server';
import { contextualTranslation, detectLanguage, isAIAvailable } from '@/lib/ai-features';
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

    if (!isAIAvailable()) {
      return NextResponse.json(
        { error: 'IA no disponible' },
        { status: 503 }
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
    
    // Detectar idioma
    const detectedLang = await detectLanguage(text);
    
    // Traducir con contexto
    const result = await contextualTranslation(text, context);

    return NextResponse.json({
      ...result,
      detectedLanguage: detectedLang,
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/translate', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
