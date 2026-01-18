import { NextResponse } from 'next/server';
import { logger } from '@/lib/logger';

export async function POST(req: Request) {
  try {
    const { topic, wordCount = 5 } = await req.json();

    if (!topic || typeof topic !== 'string') {
      return NextResponse.json(
        { error: 'El tema es requerido' },
        { status: 400 }
      );
    }

    // Por ahora, devolver datos de ejemplo
    // En el futuro, esto se puede conectar con una API de IA real
    const fallbackData = {
      words: [
        { bubi: 'bótó', spanish: 'casa', ipa: 'bo.to' },
        { bubi: 'móló', spanish: 'agua', ipa: 'mo.lo' },
        { bubi: 'rìbà', spanish: 'comida', ipa: 'ri.ba' },
        { bubi: 'lóbà', spanish: 'persona', ipa: 'lo.ba' },
        { bubi: 'èrí', spanish: 'árbol', ipa: 'e.ri' },
      ],
      examples: [
        { bubi: 'Bótó lá móló', spanish: 'La casa tiene agua' },
        { bubi: 'Rìbà ló bótó', spanish: 'La comida está en la casa' },
        { bubi: 'Lóbà ló èrí', spanish: 'La persona está en el árbol' },
      ],
      culturalNotes: [
        `El tema "${topic}" es fundamental en la cultura Bubi de Guinea Ecuatorial.`,
        'El idioma Bubi refleja la cosmovisión del pueblo de Bioko y su relación con la naturaleza.',
        'Estas palabras son parte del vocabulario cotidiano usado en las comunidades Bubi.',
      ],
    };

    return NextResponse.json(fallbackData, { status: 200 });
  } catch (error) {
    logger.error('Error en /api/ai/learning-session', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
