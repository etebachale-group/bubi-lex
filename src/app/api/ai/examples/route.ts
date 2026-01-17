import { NextResponse } from 'next/server';
import { generateContextualExamples, isAIAvailable } from '@/lib/ai-features';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';
import { z } from 'zod';

const ExamplesSchema = z.object({
  bubi: z.string().min(1, 'La palabra en Bubi es requerida'),
  spanish: z.string().min(1, 'La traducción es requerida'),
  count: z.number().min(1).max(5).optional().default(3),
});

export async function POST(req: Request) {
  try {
    // Rate limiting
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-examples:${identifier}`, RATE_LIMITS.strict);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes. Por favor, intenta más tarde.' },
        { 
          status: 429,
          headers: {
            'X-RateLimit-Limit': String(rateLimitResult.limit),
            'X-RateLimit-Remaining': String(rateLimitResult.remaining),
            'X-RateLimit-Reset': String(rateLimitResult.reset),
          }
        }
      );
    }

    // Verificar si AI está disponible
    if (!isAIAvailable()) {
      return NextResponse.json(
        { error: 'Funcionalidad de IA no disponible. Configura OPENAI_API_KEY o ANTHROPIC_API_KEY.' },
        { status: 503 }
      );
    }

    const body = await req.json();
    const parsed = ExamplesSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json(
        { error: 'Datos inválidos', details: parsed.error.flatten() },
        { status: 400 }
      );
    }

    const { bubi, spanish, count } = parsed.data;

    logger.info('Generando ejemplos con IA', { bubi, spanish, count });

    const examples = await generateContextualExamples(bubi, spanish, count);

    return NextResponse.json({ 
      examples,
      aiGenerated: true,
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/examples', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
