// Alternativas gratuitas de IA para funcionalidades del diccionario
// Sin necesidad de API keys de pago

import { logger } from './logger';

// ============================================
// 1. HUGGING FACE (Gratuito con límites)
// ============================================

interface HuggingFaceConfig {
  apiKey?: string; // Opcional, aumenta límites
  model: string;
}

const HF_MODELS = {
  translation: 'Helsinki-NLP/opus-mt-es-en',
  textGeneration: 'mistralai/Mistral-7B-Instruct-v0.2',
  questionAnswering: 'deepset/roberta-base-squad2',
};

async function callHuggingFace(
  model: string,
  inputs: any,
  apiKey?: string
): Promise<any> {
  const headers: any = {
    'Content-Type': 'application/json',
  };

  if (apiKey) {
    headers['Authorization'] = `Bearer ${apiKey}`;
  }

  const response = await fetch(
    `https://api-inference.huggingface.co/models/${model}`,
    {
      method: 'POST',
      headers,
      body: JSON.stringify({ inputs }),
    }
  );

  if (!response.ok) {
    throw new Error(`HuggingFace API error: ${response.status}`);
  }

  return response.json();
}

// ============================================
// 2. OLLAMA (Local, 100% Gratuito)
// ============================================

async function callOllama(
  prompt: string,
  model: string = 'llama2'
): Promise<string> {
  try {
    const response = await fetch('http://localhost:11434/api/generate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        model,
        prompt,
        stream: false,
      }),
    });

    if (!response.ok) {
      throw new Error('Ollama no disponible');
    }

    const data = await response.json();
    return data.response;
  } catch (error) {
    logger.warn('Ollama no disponible, usando fallback');
    throw error;
  }
}

// ============================================
// 3. GROQ (Gratuito con límites generosos)
// ============================================

async function callGroq(prompt: string, apiKey?: string): Promise<string> {
  if (!apiKey) {
    throw new Error('Groq API key requerida');
  }

  const response = await fetch('https://api.groq.com/openai/v1/chat/completions', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${apiKey}`,
    },
    body: JSON.stringify({
      model: 'llama3-8b-8192',
      messages: [
        {
          role: 'system',
          content: 'Eres un experto en el idioma Bubi y la cultura del pueblo Bubi.',
        },
        {
          role: 'user',
          content: prompt,
        },
      ],
      temperature: 0.7,
      max_tokens: 500,
    }),
  });

  if (!response.ok) {
    throw new Error(`Groq API error: ${response.status}`);
  }

  const data = await response.json();
  return data.choices[0]?.message?.content || '';
}

// ============================================
// 4. TOGETHER AI (Gratuito con créditos)
// ============================================

async function callTogetherAI(prompt: string, apiKey?: string): Promise<string> {
  if (!apiKey) {
    throw new Error('Together AI API key requerida');
  }

  const response = await fetch('https://api.together.xyz/v1/chat/completions', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${apiKey}`,
    },
    body: JSON.stringify({
      model: 'mistralai/Mixtral-8x7B-Instruct-v0.1',
      messages: [
        {
          role: 'system',
          content: 'Eres un experto en el idioma Bubi.',
        },
        {
          role: 'user',
          content: prompt,
        },
      ],
      max_tokens: 500,
    }),
  });

  if (!response.ok) {
    throw new Error(`Together AI error: ${response.status}`);
  }

  const data = await response.json();
  return data.choices[0]?.message?.content || '';
}

// ============================================
// FUNCIONES PRINCIPALES CON FALLBACKS
// ============================================

export async function generateExamplesWithFreeAI(
  bubiWord: string,
  spanishTranslation: string,
  count: number = 3
): Promise<string[]> {
  const prompt = `Genera ${count} ejemplos de uso de la palabra "${bubiWord}" (que significa "${spanishTranslation}"). 
Cada ejemplo debe ser una frase corta en contexto cultural Bubi.`;

  try {
    // Intentar en orden de preferencia
    const providers = [
      { name: 'Groq', fn: () => callGroq(prompt, process.env.GROQ_API_KEY) },
      { name: 'Together', fn: () => callTogetherAI(prompt, process.env.TOGETHER_API_KEY) },
      { name: 'Ollama', fn: () => callOllama(prompt) },
    ];

    for (const provider of providers) {
      try {
        logger.info(`Intentando generar ejemplos con ${provider.name}`);
        const response = await provider.fn();
        const examples = response.split('\n').filter(line => line.trim()).slice(0, count);
        if (examples.length > 0) {
          logger.info(`Ejemplos generados con ${provider.name}`);
          return examples;
        }
      } catch (error) {
        logger.warn(`${provider.name} no disponible, intentando siguiente`);
        continue;
      }
    }

    // Fallback: ejemplos básicos
    return generateBasicExamples(bubiWord, spanishTranslation, count);
  } catch (error) {
    logger.error('Error generando ejemplos con IA gratuita', error);
    return generateBasicExamples(bubiWord, spanishTranslation, count);
  }
}

export async function translateWithFreeAI(
  text: string,
  context: string = ''
): Promise<{
  translation: string;
  explanation: string;
  alternatives: string[];
}> {
  const prompt = `Traduce "${text}" al español${context ? ` en el contexto: ${context}` : ''}. 
Proporciona la traducción, una breve explicación y 2 alternativas.
Formato: TRADUCCIÓN: ... | EXPLICACIÓN: ... | ALTERNATIVAS: ..., ...`;

  try {
    const providers = [
      { name: 'Groq', fn: () => callGroq(prompt, process.env.GROQ_API_KEY) },
      { name: 'Together', fn: () => callTogetherAI(prompt, process.env.TOGETHER_API_KEY) },
      { name: 'Ollama', fn: () => callOllama(prompt) },
    ];

    for (const provider of providers) {
      try {
        const response = await provider.fn();
        return parseTranslationResponse(response);
      } catch (error) {
        continue;
      }
    }

    return {
      translation: text,
      explanation: 'Traducción directa',
      alternatives: [],
    };
  } catch (error) {
    logger.error('Error en traducción con IA gratuita', error);
    return {
      translation: text,
      explanation: 'Traducción directa',
      alternatives: [],
    };
  }
}

export async function generateQuizWithFreeAI(
  words: Array<{ bubi: string; spanish: string }>
): Promise<Array<{
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}>> {
  if (words.length === 0) return [];

  const wordList = words.slice(0, 3).map(w => `${w.bubi} = ${w.spanish}`).join(', ');
  const prompt = `Crea 3 preguntas de opción múltiple para estas palabras Bubi: ${wordList}.
Formato para cada pregunta:
P: [pregunta]
A) [opción] B) [opción] C) [opción] D) [opción]
CORRECTA: [letra]
EXPLICACIÓN: [texto]`;

  try {
    const providers = [
      { name: 'Groq', fn: () => callGroq(prompt, process.env.GROQ_API_KEY) },
      { name: 'Together', fn: () => callTogetherAI(prompt, process.env.TOGETHER_API_KEY) },
      { name: 'Ollama', fn: () => callOllama(prompt) },
    ];

    for (const provider of providers) {
      try {
        const response = await provider.fn();
        const quiz = parseQuizResponse(response);
        if (quiz.length > 0) return quiz;
      } catch (error) {
        continue;
      }
    }

    // Fallback: quiz básico
    return generateBasicQuiz(words);
  } catch (error) {
    logger.error('Error generando quiz con IA gratuita', error);
    return generateBasicQuiz(words);
  }
}

// ============================================
// FUNCIONES DE PARSING
// ============================================

function parseTranslationResponse(response: string): {
  translation: string;
  explanation: string;
  alternatives: string[];
} {
  const parts = response.split('|');
  
  const translation = parts[0]?.replace(/TRADUCCIÓN:/i, '').trim() || response;
  const explanation = parts[1]?.replace(/EXPLICACIÓN:/i, '').trim() || 'Traducción proporcionada';
  const alternativesStr = parts[2]?.replace(/ALTERNATIVAS:/i, '').trim() || '';
  const alternatives = alternativesStr ? alternativesStr.split(',').map(a => a.trim()) : [];

  return { translation, explanation, alternatives };
}

function parseQuizResponse(response: string): Array<{
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}> {
  const quiz: any[] = [];
  const questions = response.split(/P:|PREGUNTA:/i).filter(q => q.trim());

  for (const q of questions.slice(0, 3)) {
    try {
      const lines = q.split('\n').filter(l => l.trim());
      const question = lines[0]?.trim() || '';
      
      const options: string[] = [];
      let correctLetter = 'A';
      let explanation = '';

      for (const line of lines) {
        if (/^[A-D]\)/.test(line)) {
          options.push(line.substring(2).trim());
        } else if (/CORRECTA:/i.test(line)) {
          correctLetter = line.match(/[A-D]/)?.[0] || 'A';
        } else if (/EXPLICACIÓN:/i.test(line)) {
          explanation = line.replace(/EXPLICACIÓN:/i, '').trim();
        }
      }

      if (question && options.length === 4) {
        const correctAnswer = correctLetter.charCodeAt(0) - 'A'.charCodeAt(0);
        quiz.push({ question, options, correctAnswer, explanation });
      }
    } catch (error) {
      continue;
    }
  }

  return quiz;
}

// ============================================
// FALLBACKS BÁSICOS
// ============================================

function generateBasicExamples(
  bubiWord: string,
  spanishTranslation: string,
  count: number
): string[] {
  const templates = [
    `La palabra "${bubiWord}" significa "${spanishTranslation}" en español.`,
    `En Bubi, "${bubiWord}" se usa para referirse a "${spanishTranslation}".`,
    `Ejemplo: "${bubiWord}" (${spanishTranslation}) es una palabra común en la cultura Bubi.`,
    `Contexto: "${bubiWord}" aparece frecuentemente en conversaciones sobre ${spanishTranslation}.`,
    `Uso tradicional: "${bubiWord}" tiene un significado especial relacionado con ${spanishTranslation}.`,
  ];

  return templates.slice(0, count);
}

function generateBasicQuiz(
  words: Array<{ bubi: string; spanish: string }>
): Array<{
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}> {
  const quiz: any[] = [];

  for (let i = 0; i < Math.min(3, words.length); i++) {
    const word = words[i];
    const otherWords = words.filter((_, idx) => idx !== i).slice(0, 3);
    
    const options = [
      word.spanish,
      ...otherWords.map(w => w.spanish),
    ].sort(() => Math.random() - 0.5);

    const correctAnswer = options.indexOf(word.spanish);

    quiz.push({
      question: `¿Qué significa "${word.bubi}" en español?`,
      options,
      correctAnswer,
      explanation: `"${word.bubi}" significa "${word.spanish}" en español.`,
    });
  }

  return quiz;
}

// ============================================
// VERIFICAR DISPONIBILIDAD
// ============================================

export async function checkFreeAIAvailability(): Promise<{
  groq: boolean;
  together: boolean;
  ollama: boolean;
  huggingface: boolean;
}> {
  const results = {
    groq: !!process.env.GROQ_API_KEY,
    together: !!process.env.TOGETHER_API_KEY,
    ollama: false,
    huggingface: !!process.env.HUGGINGFACE_API_KEY,
  };

  // Verificar Ollama
  try {
    await fetch('http://localhost:11434/api/tags', { method: 'GET' });
    results.ollama = true;
  } catch {
    results.ollama = false;
  }

  return results;
}
