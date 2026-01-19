import { NextResponse } from 'next/server';
import { logger } from '@/lib/logger';
import { getSupabase } from '@/lib/db';

// Generar pronunciación IPA para una palabra Bubi
export async function POST(req: Request) {
  try {
    const { word, wordId } = await req.json();

    if (!word) {
      return NextResponse.json(
        { error: 'Palabra requerida' },
        { status: 400 }
      );
    }

    // Generar IPA basado en reglas fonéticas del Bubi
    const ipa = generateBubiIPA(word);

    // Si se proporciona wordId, actualizar en la base de datos
    if (wordId) {
      const supabase = getSupabase();
      const { error } = await supabase
        .from('dictionary_entries')
        .update({ ipa })
        .eq('id', wordId);

      if (error) {
        logger.error('Error actualizando IPA en BD', error);
      }
    }

    return NextResponse.json({ ipa, word });
  } catch (error) {
    logger.error('Error generando pronunciación', error);
    return NextResponse.json(
      { error: 'Error generando pronunciación' },
      { status: 500 }
    );
  }
}

// Reglas fonéticas básicas para Bubi
// Basado en patrones comunes de lenguas bantúes
function generateBubiIPA(word: string): string {
  let ipa = word.toLowerCase();

  // Vocales (generalmente puras en lenguas bantúes)
  ipa = ipa.replace(/a/g, 'a');
  ipa = ipa.replace(/e/g, 'e');
  ipa = ipa.replace(/i/g, 'i');
  ipa = ipa.replace(/o/g, 'o');
  ipa = ipa.replace(/u/g, 'u');

  // Consonantes comunes
  ipa = ipa.replace(/b/g, 'b');
  ipa = ipa.replace(/ch/g, 'tʃ');
  ipa = ipa.replace(/d/g, 'd');
  ipa = ipa.replace(/f/g, 'f');
  ipa = ipa.replace(/g/g, 'g');
  ipa = ipa.replace(/h/g, 'h');
  ipa = ipa.replace(/j/g, 'dʒ');
  ipa = ipa.replace(/k/g, 'k');
  ipa = ipa.replace(/l/g, 'l');
  ipa = ipa.replace(/m/g, 'm');
  ipa = ipa.replace(/n/g, 'n');
  ipa = ipa.replace(/ñ/g, 'ɲ');
  ipa = ipa.replace(/p/g, 'p');
  ipa = ipa.replace(/r/g, 'ɾ');
  ipa = ipa.replace(/s/g, 's');
  ipa = ipa.replace(/t/g, 't');
  ipa = ipa.replace(/v/g, 'v');
  ipa = ipa.replace(/w/g, 'w');
  ipa = ipa.replace(/y/g, 'j');
  ipa = ipa.replace(/z/g, 'z');

  // Dígrafos especiales
  ipa = ipa.replace(/ng/g, 'ŋ');
  ipa = ipa.replace(/ny/g, 'ɲ');
  ipa = ipa.replace(/sh/g, 'ʃ');

  return ipa;
}
