/**
 * Utilidad centralizada para síntesis de voz
 * Maneja la selección de voces en español y la pronunciación correcta
 */

export interface SpeechConfig {
  lang?: string;
  rate?: number;
  pitch?: number;
  volume?: number;
}

/**
 * Selecciona la mejor voz en español disponible
 */
export function pickSpanishVoice(voices: SpeechSynthesisVoice[]): SpeechSynthesisVoice | null {
  if (!voices || voices.length === 0) return null;

  // Prioridad de voces en español
  const priorities = [
    'es-ES', // Español de España
    'es-MX', // Español de México
    'es-US', // Español de Estados Unidos
    'es-AR', // Español de Argentina
    'es',    // Español genérico
  ];

  // Buscar por código de idioma exacto
  for (const priority of priorities) {
    const voice = voices.find((v) => v.lang?.toLowerCase() === priority.toLowerCase());
    if (voice) return voice;
  }

  // Buscar cualquier voz que empiece con 'es'
  const anySpanish = voices.find((v) => v.lang?.toLowerCase().startsWith('es'));
  if (anySpanish) return anySpanish;

  // Buscar por nombre que contenga "spanish" o "español"
  const byName = voices.find((v) => 
    /spanish|español|espanol/i.test(v.name)
  );
  if (byName) return byName;

  return null;
}

/**
 * Obtiene todas las voces disponibles
 * Maneja el caso donde las voces se cargan de forma asíncrona
 */
export function getAvailableVoices(): Promise<SpeechSynthesisVoice[]> {
  return new Promise((resolve) => {
    const voices = window.speechSynthesis.getVoices();
    
    if (voices.length > 0) {
      resolve(voices);
      return;
    }

    // Las voces pueden cargarse de forma asíncrona
    window.speechSynthesis.onvoiceschanged = () => {
      const loadedVoices = window.speechSynthesis.getVoices();
      resolve(loadedVoices);
    };

    // Timeout de seguridad
    setTimeout(() => {
      resolve(window.speechSynthesis.getVoices());
    }, 1000);
  });
}

/**
 * Normaliza el texto para mejorar la pronunciación
 * Convierte símbolos y signos a palabras
 */
export function normalizeTextForSpeech(text: string): string {
  let normalized = text;

  // Reemplazar símbolos comunes con palabras
  const replacements: Record<string, string> = {
    '!': ' signo de exclamación ',
    '¡': ' signo de exclamación de apertura ',
    '?': ' signo de interrogación ',
    '¿': ' signo de interrogación de apertura ',
    '@': ' arroba ',
    '#': ' numeral ',
    '$': ' dólar ',
    '%': ' por ciento ',
    '&': ' y ',
    '*': ' asterisco ',
    '+': ' más ',
    '-': ' menos ',
    '=': ' igual ',
    '/': ' barra ',
    '\\': ' barra invertida ',
    '|': ' barra vertical ',
    '<': ' menor que ',
    '>': ' mayor que ',
    '(': ' paréntesis de apertura ',
    ')': ' paréntesis de cierre ',
    '[': ' corchete de apertura ',
    ']': ' corchete de cierre ',
    '{': ' llave de apertura ',
    '}': ' llave de cierre ',
    '"': ' comillas ',
    "'": ' comilla simple ',
    '`': ' acento grave ',
    '~': ' tilde ',
    '^': ' acento circunflejo ',
    '_': ' guion bajo ',
    ':': ' dos puntos ',
    ';': ' punto y coma ',
    ',': ' coma ',
    '.': ' punto ',
  };

  // Aplicar reemplazos
  for (const [symbol, word] of Object.entries(replacements)) {
    normalized = normalized.split(symbol).join(word);
  }

  // Limpiar espacios múltiples
  normalized = normalized.replace(/\s+/g, ' ').trim();

  return normalized;
}

/**
 * Habla el texto usando síntesis de voz
 */
export async function speak(
  text: string,
  config: SpeechConfig = {},
  normalizeText: boolean = true
): Promise<void> {
  if (!('speechSynthesis' in window)) {
    console.warn('Speech synthesis no disponible en este navegador');
    return;
  }

  try {
    // Cancelar cualquier síntesis en curso
    window.speechSynthesis.cancel();

    // Normalizar texto si se solicita
    const textToSpeak = normalizeText ? normalizeTextForSpeech(text) : text;

    // Obtener voces disponibles
    const voices = await getAvailableVoices();
    const spanishVoice = pickSpanishVoice(voices);

    // Crear utterance
    const utterance = new SpeechSynthesisUtterance(textToSpeak);

    // Configurar voz
    if (spanishVoice) {
      utterance.voice = spanishVoice;
      utterance.lang = spanishVoice.lang || 'es-ES';
    } else {
      utterance.lang = config.lang || 'es-ES';
    }

    // Configurar parámetros
    utterance.rate = config.rate ?? 0.85;
    utterance.pitch = config.pitch ?? 1.0;
    utterance.volume = config.volume ?? 1.0;

    // Hablar
    return new Promise((resolve, reject) => {
      utterance.onend = () => resolve();
      utterance.onerror = (error) => {
        console.error('Error en síntesis de voz:', error);
        reject(error);
      };

      window.speechSynthesis.speak(utterance);
    });
  } catch (error) {
    console.error('Error al reproducir audio:', error);
    throw error;
  }
}

/**
 * Detiene cualquier síntesis de voz en curso
 */
export function stopSpeaking(): void {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.cancel();
  }
}

/**
 * Verifica si hay síntesis de voz en curso
 */
export function isSpeaking(): boolean {
  if ('speechSynthesis' in window) {
    return window.speechSynthesis.speaking;
  }
  return false;
}

/**
 * Pausa la síntesis de voz
 */
export function pauseSpeaking(): void {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.pause();
  }
}

/**
 * Reanuda la síntesis de voz
 */
export function resumeSpeaking(): void {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.resume();
  }
}

/**
 * Hook personalizado para React (opcional)
 */
export function useSpeechSynthesis() {
  const [speaking, setSpeaking] = React.useState(false);
  const [voice, setVoice] = React.useState<SpeechSynthesisVoice | null>(null);

  React.useEffect(() => {
    const loadVoice = async () => {
      const voices = await getAvailableVoices();
      const spanishVoice = pickSpanishVoice(voices);
      setVoice(spanishVoice);
    };

    loadVoice();
  }, []);

  const speakText = async (text: string, config?: SpeechConfig) => {
    setSpeaking(true);
    try {
      await speak(text, config);
    } finally {
      setSpeaking(false);
    }
  };

  const stop = () => {
    stopSpeaking();
    setSpeaking(false);
  };

  return {
    speak: speakText,
    stop,
    speaking,
    voice,
  };
}

// Para compatibilidad con código existente
import React from 'react';
