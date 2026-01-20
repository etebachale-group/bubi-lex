// Funcionalidades de IA para el diccionario
// Integración con OpenAI/Anthropic para características avanzadas

import { logger } from './logger';

interface AIConfig {
  apiKey: string;
  model: string;
  maxTokens: number;
}

interface GrammarContext {
  grammar: any[];
  conjugations: any[];
  patterns: any[];
}

// Cache de contexto gramatical
let grammarContextCache: GrammarContext | null = null;
let grammarCacheTime: number = 0;
const CACHE_DURATION = 5 * 60 * 1000; // 5 minutos

// Configuración de IA (usar variables de entorno)
const getAIConfig = (): AIConfig | null => {
  const apiKey = process.env.OPENAI_API_KEY || process.env.ANTHROPIC_API_KEY;
  if (!apiKey) return null;
  
  return {
    apiKey,
    model: process.env.AI_MODEL || 'gpt-3.5-turbo',
    maxTokens: parseInt(process.env.AI_MAX_TOKENS || '500', 10),
  };
};

// Verificar si AI está disponible
export const isAIAvailable = (): boolean => {
  return !!getAIConfig();
};

// Cargar contexto gramatical desde la base de datos
async function loadGrammarContext(): Promise<GrammarContext> {
  // Usar cache si está disponible y no ha expirado
  const now = Date.now();
  if (grammarContextCache && (now - grammarCacheTime) < CACHE_DURATION) {
    return grammarContextCache;
  }

  try {
    const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || 'http://localhost:3000';
    const response = await fetch(`${baseUrl}/api/grammar?format=compact`, {
      cache: 'no-store'
    });
    
    if (!response.ok) {
      throw new Error('Failed to load grammar context');
    }
    
    const data = await response.json();
    grammarContextCache = data;
    grammarCacheTime = now;
    
    return data;
  } catch (error) {
    logger.error('Error loading grammar context', error);
    return { grammar: [], conjugations: [], patterns: [] };
  }
}

// Formatear contexto gramatical para el prompt de IA
function formatGrammarContext(context: GrammarContext): string {
  let formatted = '\n\n=== CONTEXTO GRAMATICAL DEL IDIOMA BUBI ===\n\n';
  
  // Reglas gramaticales
  if (context.grammar.length > 0) {
    formatted += 'REGLAS GRAMATICALES:\n';
    context.grammar.forEach(g => {
      formatted += `\n[${g.category}] ${g.title}:\n`;
      formatted += `${g.content}\n`;
      if (g.rules) {
        formatted += `Reglas:\n${g.rules}\n`;
      }
      if (g.examples) {
        try {
          const examples = JSON.parse(g.examples);
          formatted += `Ejemplos: ${examples.map((e: any) => `"${e.bubi}" = "${e.spanish}"`).join(', ')}\n`;
        } catch (e) {
          // Ignorar errores de parsing
        }
      }
    });
  }
  
  // Conjugaciones verbales
  if (context.conjugations.length > 0) {
    formatted += '\n\nCONJUGACIONES VERBALES:\n';
    const verbGroups = context.conjugations.reduce((acc: any, c: any) => {
      if (!acc[c.verb]) acc[c.verb] = [];
      acc[c.verb].push(c);
      return acc;
    }, {});
    
    Object.entries(verbGroups).forEach(([verb, conjugs]: [string, any]) => {
      formatted += `\n${verb} (${conjugs[0].spanish}):\n`;
      conjugs.forEach((c: any) => {
        formatted += `  ${c.tense} - ${c.person}: ${c.form}\n`;
      });
    });
  }
  
  // Patrones gramaticales
  if (context.patterns.length > 0) {
    formatted += '\n\nPATRONES GRAMATICALES:\n';
    context.patterns.forEach(p => {
      formatted += `\n${p.name} (${p.type}):\n`;
      formatted += `Estructura: ${p.structure}\n`;
    });
  }
  
  formatted += '\n=== FIN DEL CONTEXTO GRAMATICAL ===\n\n';
  
  return formatted;
}

// Generar ejemplos contextuales con IA
export async function generateContextualExamples(
  bubiWord: string,
  spanishTranslation: string,
  count: number = 3
): Promise<string[]> {
  const config = getAIConfig();
  if (!config) {
    logger.warn('AI no disponible, usando ejemplos por defecto');
    return generateFallbackExamples(bubiWord, spanishTranslation, count);
  }

  try {
    // Cargar contexto gramatical
    const grammarContext = await loadGrammarContext();
    const grammarPrompt = formatGrammarContext(grammarContext);
    
    const prompt = `${grammarPrompt}Usando el contexto gramatical del Bubi proporcionado arriba, genera ${count} ejemplos de uso de la palabra "${bubiWord}" (que significa "${spanishTranslation}" en español) en contextos culturales del pueblo Bubi de Guinea Ecuatorial. 

IMPORTANTE: Usa las reglas gramaticales, conjugaciones y patrones proporcionados para crear ejemplos correctos.

Formato: Cada ejemplo debe tener:
1. Frase en Bubi usando la palabra (siguiendo las reglas gramaticales)
2. Traducción al español
3. Contexto cultural breve

Ejemplo de formato:
"[Bubi] - [Español] (Contexto: [breve explicación])"`;

    const response = await callAI(prompt, config);
    const examples = parseExamplesFromResponse(response);
    
    if (examples.length === 0) {
      return generateFallbackExamples(bubiWord, spanishTranslation, count);
    }
    
    return examples;
  } catch (error) {
    logger.error('Error generando ejemplos con IA', error);
    return generateFallbackExamples(bubiWord, spanishTranslation, count);
  }
}

// Explicar etimología y origen de la palabra
export async function explainEtymology(
  bubiWord: string,
  spanishTranslation: string
): Promise<string> {
  const config = getAIConfig();
  if (!config) {
    return `La palabra "${bubiWord}" significa "${spanishTranslation}" en español.`;
  }

  try {
    const prompt = `Explica brevemente (2-3 oraciones) el posible origen etimológico y significado cultural de la palabra Bubi "${bubiWord}" (${spanishTranslation}). Considera el contexto del pueblo Bubi de Bioko, Guinea Ecuatorial.`;

    const response = await callAI(prompt, config);
    return response.trim();
  } catch (error) {
    logger.error('Error explicando etimología', error);
    return `La palabra "${bubiWord}" significa "${spanishTranslation}" en español.`;
  }
}

// Sugerir palabras relacionadas
export async function suggestRelatedWords(
  bubiWord: string,
  spanishTranslation: string
): Promise<Array<{ word: string; relation: string }>> {
  const config = getAIConfig();
  if (!config) {
    return [];
  }

  try {
    const prompt = `Para la palabra Bubi "${bubiWord}" (${spanishTranslation}), sugiere 5 palabras relacionadas en Bubi que podrían existir (sinónimos, antónimos, palabras de la misma familia semántica). 

Formato JSON:
[{"word": "palabra_bubi", "relation": "sinónimo/antónimo/relacionado"}]`;

    const response = await callAI(prompt, config);
    return parseRelatedWordsFromResponse(response);
  } catch (error) {
    logger.error('Error sugiriendo palabras relacionadas', error);
    return [];
  }
}

// Generar guía de pronunciación detallada
export async function generatePronunciationGuide(
  bubiWord: string,
  ipa?: string | null
): Promise<{
  ipa: string;
  breakdown: string;
  tips: string[];
}> {
  const config = getAIConfig();
  
  const defaultGuide = {
    ipa: ipa || bubiWord,
    breakdown: `Pronunciar: ${bubiWord}`,
    tips: ['Pronunciar cada sílaba claramente'],
  };

  if (!config) {
    return defaultGuide;
  }

  try {
    const prompt = `Para la palabra Bubi "${bubiWord}"${ipa ? ` (IPA: ${ipa})` : ''}, proporciona:
1. Notación IPA correcta
2. Desglose silábico
3. 2-3 consejos de pronunciación para hispanohablantes

Formato JSON:
{"ipa": "...", "breakdown": "...", "tips": ["...", "..."]}`;

    const response = await callAI(prompt, config);
    return parsePronunciationGuide(response) || defaultGuide;
  } catch (error) {
    logger.error('Error generando guía de pronunciación', error);
    return defaultGuide;
  }
}

// Traducción contextual mejorada
export async function contextualTranslation(
  bubiWord: string,
  context: string
): Promise<{
  translation: string;
  explanation: string;
  alternatives: string[];
}> {
  const config = getAIConfig();
  
  if (!config) {
    return {
      translation: bubiWord,
      explanation: 'Traducción directa',
      alternatives: [],
    };
  }

  try {
    // Cargar contexto gramatical
    const grammarContext = await loadGrammarContext();
    const grammarPrompt = formatGrammarContext(grammarContext);
    
    const prompt = `${grammarPrompt}Usando el contexto gramatical del Bubi proporcionado, traduce la palabra Bubi "${bubiWord}" al español considerando este contexto: "${context}".

Proporciona:
1. Traducción más apropiada para el contexto
2. Breve explicación de por qué es la mejor traducción (considerando las reglas gramaticales)
3. 2-3 traducciones alternativas

Formato JSON:
{"translation": "...", "explanation": "...", "alternatives": ["...", "..."]}`;

    const response = await callAI(prompt, config);
    return parseContextualTranslation(response);
  } catch (error) {
    logger.error('Error en traducción contextual', error);
    return {
      translation: bubiWord,
      explanation: 'Traducción directa',
      alternatives: [],
    };
  }
}

// Generar quiz/ejercicios de práctica
export async function generatePracticeQuiz(
  words: Array<{ bubi: string; spanish: string }>
): Promise<Array<{
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}>> {
  const config = getAIConfig();
  if (!config || words.length === 0) {
    return [];
  }

  try {
    const wordList = words.map(w => `${w.bubi} = ${w.spanish}`).join(', ');
    const prompt = `Crea 3 preguntas de opción múltiple para practicar estas palabras Bubi: ${wordList}.

Formato JSON:
[{
  "question": "pregunta",
  "options": ["opción1", "opción2", "opción3", "opción4"],
  "correctAnswer": 0,
  "explanation": "explicación"
}]`;

    const response = await callAI(prompt, config);
    return parsePracticeQuiz(response);
  } catch (error) {
    logger.error('Error generando quiz', error);
    return [];
  }
}

// Detectar idioma de entrada
export async function detectLanguage(text: string): Promise<'bubi' | 'spanish' | 'unknown'> {
  const config = getAIConfig();
  if (!config) {
    // Detección simple basada en caracteres
    return /^[a-záéíóúñü\s]+$/i.test(text) ? 'spanish' : 'bubi';
  }

  try {
    const prompt = `Detecta si este texto es en idioma Bubi o Español: "${text}". Responde solo con: "bubi", "spanish" o "unknown"`;
    const response = await callAI(prompt, config);
    const detected = response.trim().toLowerCase();
    
    if (detected === 'bubi' || detected === 'spanish') {
      return detected;
    }
    return 'unknown';
  } catch (error) {
    logger.error('Error detectando idioma', error);
    return 'unknown';
  }
}

// Función auxiliar para llamar a la IA
async function callAI(prompt: string, config: AIConfig): Promise<string> {
  const isOpenAI = !!process.env.OPENAI_API_KEY;
  
  if (isOpenAI) {
    return callOpenAI(prompt, config);
  } else {
    return callAnthropic(prompt, config);
  }
}

// Llamada a OpenAI
async function callOpenAI(prompt: string, config: AIConfig): Promise<string> {
  const response = await fetch('https://api.openai.com/v1/chat/completions', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${config.apiKey}`,
    },
    body: JSON.stringify({
      model: config.model,
      messages: [
        {
          role: 'system',
          content: 'Eres un experto en el idioma Bubi y la cultura del pueblo Bubi de Guinea Ecuatorial. Proporciona respuestas precisas y culturalmente apropiadas.',
        },
        {
          role: 'user',
          content: prompt,
        },
      ],
      max_tokens: config.maxTokens,
      temperature: 0.7,
    }),
  });

  if (!response.ok) {
    throw new Error(`OpenAI API error: ${response.status}`);
  }

  const data = await response.json();
  return data.choices[0]?.message?.content || '';
}

// Llamada a Anthropic
async function callAnthropic(prompt: string, config: AIConfig): Promise<string> {
  const response = await fetch('https://api.anthropic.com/v1/messages', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'x-api-key': config.apiKey,
      'anthropic-version': '2023-06-01',
    },
    body: JSON.stringify({
      model: config.model || 'claude-3-haiku-20240307',
      max_tokens: config.maxTokens,
      messages: [
        {
          role: 'user',
          content: `Eres un experto en el idioma Bubi y la cultura del pueblo Bubi de Guinea Ecuatorial. ${prompt}`,
        },
      ],
    }),
  });

  if (!response.ok) {
    throw new Error(`Anthropic API error: ${response.status}`);
  }

  const data = await response.json();
  return data.content[0]?.text || '';
}

// Funciones de parsing
function parseExamplesFromResponse(response: string): string[] {
  const lines = response.split('\n').filter(line => line.trim());
  return lines.slice(0, 5); // Máximo 5 ejemplos
}

function parseRelatedWordsFromResponse(response: string): Array<{ word: string; relation: string }> {
  try {
    const jsonMatch = response.match(/\[[\s\S]*\]/);
    if (jsonMatch) {
      return JSON.parse(jsonMatch[0]);
    }
  } catch (error) {
    logger.error('Error parseando palabras relacionadas', error);
  }
  return [];
}

function parsePronunciationGuide(response: string): {
  ipa: string;
  breakdown: string;
  tips: string[];
} | null {
  try {
    const jsonMatch = response.match(/\{[\s\S]*\}/);
    if (jsonMatch) {
      return JSON.parse(jsonMatch[0]);
    }
  } catch (error) {
    logger.error('Error parseando guía de pronunciación', error);
  }
  return null;
}

function parseContextualTranslation(response: string): {
  translation: string;
  explanation: string;
  alternatives: string[];
} {
  try {
    const jsonMatch = response.match(/\{[\s\S]*\}/);
    if (jsonMatch) {
      return JSON.parse(jsonMatch[0]);
    }
  } catch (error) {
    logger.error('Error parseando traducción contextual', error);
  }
  return {
    translation: '',
    explanation: '',
    alternatives: [],
  };
}

function parsePracticeQuiz(response: string): Array<{
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}> {
  try {
    const jsonMatch = response.match(/\[[\s\S]*\]/);
    if (jsonMatch) {
      return JSON.parse(jsonMatch[0]);
    }
  } catch (error) {
    logger.error('Error parseando quiz', error);
  }
  return [];
}

// Ejemplos de fallback sin IA
function generateFallbackExamples(
  bubiWord: string,
  spanishTranslation: string,
  count: number
): string[] {
  return [
    `"${bubiWord}" se usa en conversaciones cotidianas para referirse a "${spanishTranslation}".`,
    `En contexto: La palabra "${bubiWord}" (${spanishTranslation}) es común en la cultura Bubi.`,
    `Ejemplo de uso: "${bubiWord}" aparece frecuentemente en relatos tradicionales.`,
  ].slice(0, count);
}
