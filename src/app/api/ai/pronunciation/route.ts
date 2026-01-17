import { NextResponse } from 'next/server';
import { generatePronunciationGuide } from '@/lib/ai-features';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';
import { z } from 'zod';

const PronunciationSchema = z.object({
  bubi: z.string().min(1),
  ipa: z.string().optional().nullable(),
});

export async function POST(req: Request) {
  try {
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-pronunciation:${identifier}`, RATE_LIMITS.moderate);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes' },
        { status: 429 }
      );
    }

    const body = await req.json();
    const parsed = PronunciationSchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json(
        { error: 'Datos inválidos' },
        { status: 400 }
      );
    }

    const { bubi, ipa } = parsed.data;
    
    // generatePronunciationGuide ya tiene fallback integrado
    const guide = await generatePronunciationGuide(bubi, ipa);

    return NextResponse.json({
      ...guide,
      provider: 'ai-with-fallback',
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/pronunciation', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
