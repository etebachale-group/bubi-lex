import { NextResponse } from 'next/server';
import { getAIResponse } from '@/lib/ai-features';
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

    const prompt = `Eres un experto en el idioma Bubi de Guinea Ecuatorial. Crea una sesión de aprendizaje sobre "${topic}" en Bubi.

Genera exactamente ${wordCount} palabras relacionadas con el tema, con ejemplos de uso y notas culturales.

Responde SOLO con un JSON válido en este formato exacto:
{
  "words": [
    {
      "bubi": "palabra en bubi",
      "spanish": "traducción al español",
      "ipa": "pronunciación IPA (opcional)"
    }
  ],
  "examples": [
    {
      "bubi": "oración en bubi",
      "spanish": "traducción al español"
    }
  ],
  "culturalNotes": [
    "nota cultural relevante sobre el tema"
  ]
}

Asegúrate de que:
- Las palabras sean auténticas del idioma Bubi
- Los ejemplos sean oraciones completas y naturales
- Las notas culturales sean informativas y relevantes
- Todo esté en el formato JSON exacto mostrado arriba`;

    const aiResponse = await getAIResponse(prompt);

    if (!aiResponse) {
      return NextResponse.json(
        {
          words: [
            { bubi: 'bótó', spanish: 'casa', ipa: 'bo.to' },
            { bubi: 'móló', spanish: 'agua', ipa: 'mo.lo' },
            { bubi: 'rìbà', spanish: 'comida', ipa: 'ri.ba' },
          ],
          examples: [
            { bubi: 'Bótó lá móló', spanish: 'La casa tiene agua' },
            { bubi: 'Rìbà ló bótó', spanish: 'La comida está en la casa' },
          ],
          culturalNotes: [
            `El tema "${topic}" es fundamental en la cultura Bubi.`,
            'El idioma Bubi refleja la cosmovisión del pueblo de Bioko.',
          ],
        },
        { status: 200 }
      );
    }

    // Intentar parsear la respuesta de la IA
    try {
      const jsonMatch = aiResponse.match(/\{[\s\S]*\}/);
      if (jsonMatch) {
        const parsed = JSON.parse(jsonMatch[0]);
        return NextResponse.json(parsed);
      }
    } catch (parseError) {
      logger.warn('Error parseando respuesta de IA', parseError as Error);
    }

    // Si no se puede parsear, devolver fallback
    return NextResponse.json(
      {
        words: [
          { bubi: 'bótó', spanish: 'casa', ipa: 'bo.to' },
          { bubi: 'móló', spanish: 'agua', ipa: 'mo.lo' },
          { bubi: 'rìbà', spanish: 'comida', ipa: 'ri.ba' },
        ],
        examples: [
          { bubi: 'Bótó lá móló', spanish: 'La casa tiene agua' },
          { bubi: 'Rìbà ló bótó', spanish: 'La comida está en la casa' },
        ],
        culturalNotes: [
          `El tema "${topic}" es fundamental en la cultura Bubi.`,
          'El idioma Bubi refleja la cosmovisión del pueblo de Bioko.',
        ],
      },
      { status: 200 }
    );
  } catch (error) {
    logger.error('Error en /api/ai/learning-session', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}
