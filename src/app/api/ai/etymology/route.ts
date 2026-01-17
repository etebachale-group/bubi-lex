import { NextResponse } from 'next/server';
import { explainEtymology } from '@/lib/ai-features';
import { rateLimit, getClientIdentifier, RATE_LIMITS } from '@/lib/rate-limit';
import { logger } from '@/lib/logger';
import { z } from 'zod';

const EtymologySchema = z.object({
  bubi: z.string().min(1),
  spanish: z.string().min(1),
});

export async function POST(req: Request) {
  try {
    const identifier = getClientIdentifier(req);
    const rateLimitResult = rateLimit(`ai-etymology:${identifier}`, RATE_LIMITS.strict);
    
    if (!rateLimitResult.success) {
      return NextResponse.json(
        { error: 'Demasiadas solicitudes' },
        { status: 429 }
      );
    }

    const body = await req.json();
    const parsed = EtymologySchema.safeParse(body);
    
    if (!parsed.success) {
      return NextResponse.json(
        { error: 'Datos inválidos' },
        { status: 400 }
      );
    }

    const { bubi, spanish } = parsed.data;
    
    // explainEtymology ya tiene fallback integrado
    const explanation = await explainEtymology(bubi, spanish);

    return NextResponse.json({ 
      explanation,
      provider: 'ai-with-fallback',
    });
  } catch (error) {
    logger.error('Error en POST /api/ai/etymology', error);
    return NextResponse.json(
      { error: 'Error interno' },
      { status: 500 }
    );
  }
}
