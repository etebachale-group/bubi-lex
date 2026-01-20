// Alternativas gratuitas de IA para funcionalidades del diccionario
// Sin necesidad de API keys de pago

import { logger } from './logger';

// ============================================
// INTERFACES Y CACHE
// ============================================

interface GrammarContext {
  grammar: any[];
  conjugations: any[];
  patterns: any[];
}

let grammarContextCache: GrammarContext | null = null;
let grammarCacheTime: number = 0;
const CACHE_DURATION = 5 * 60 * 1000; // 5 minutos

// Cache de estructura lingüística completa
let linguisticStructureCache: string | null = null;
let linguisticCacheTime: number = 0;

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
      model: 'llama-3.3-70b-versatile',
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
  // Cargar contexto gramatical completo
  const grammarContext = await loadGrammarContextFree();
  const grammarPrompt = await formatCompleteContextFree(grammarContext);
  
  const prompt = `${grammarPrompt}Usando el contexto gramatical y estructura lingüística del Bubi, genera ${count} ejemplos de uso de la palabra "${bubiWord}" (que significa "${spanishTranslation}"). 

IMPORTANTE:
- Respeta las clases nominales y prefijos
- Considera los tonos (alto/bajo)
- Usa el orden S-V-O
- Ortografía fonética

Cada ejemplo debe ser una frase corta en contexto cultural Bubi, siguiendo las reglas gramaticales.`;

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
  // Cargar contexto gramatical completo
  const grammarContext = await loadGrammarContextFree();
  const grammarPrompt = await formatCompleteContextFree(grammarContext);
  
  const prompt = `${grammarPrompt}Traduce "${text}" al español${context ? ` en el contexto: ${context}` : ''}. 

IMPORTANTE:
- Considera clases nominales y prefijos
- Analiza tonos (alto/bajo)
- Respeta concordancia
- Ten en cuenta el sistema de aumentos

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

  // Cargar contexto gramatical completo
  const grammarContext = await loadGrammarContextFree();
  const grammarPrompt = await formatCompleteContextFree(grammarContext);
  
  const wordList = words.slice(0, 3).map(w => `${w.bubi} = ${w.spanish}`).join(', ');
  const prompt = `${grammarPrompt}Crea 3 preguntas de opción múltiple para estas palabras Bubi: ${wordList}.

IMPORTANTE:
- Incluye preguntas sobre clases nominales
- Pregunta sobre tonos y significado
- Considera prefijos y concordancia

Formato para cada pregunta:
P: [pregunta]
A) [opción] B) [opción] C) [opción] D) [opción]
CORRECTA: [letra]
EXPLICACIÓN: [texto con referencia a reglas]`;

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


// ============================================
// FUNCIONES DE CONTEXTO GRAMATICAL
// ============================================

async function loadLinguisticStructureFree(): Promise<string> {
  const now = Date.now();
  if (linguisticStructureCache && (now - linguisticCacheTime) < CACHE_DURATION) {
    return linguisticStructureCache;
  }

  try {
    const fs = await import('fs/promises');
    const path = await import('path');
    
    const filePath = path.join(process.cwd(), 'src', 'app', 'admin', 'grammar', 'estructura_de_la_lengua_bubi_para_ia.md');
    const content = await fs.readFile(filePath, 'utf-8');
    
    linguisticStructureCache = content;
    linguisticCacheTime = now;
    
    return content;
  } catch (error) {
    logger.error('Error loading linguistic structure', error);
    return '';
  }
}

async function loadGrammarContextFree(): Promise<GrammarContext> {
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

function formatGrammarContextFree(context: GrammarContext): string {
  let formatted = '\n\n=== CONTEXTO GRAMATICAL DEL IDIOMA BUBI ===\n\n';
  
  if (context.grammar.length > 0) {
    formatted += 'REGLAS GRAMATICALES:\n';
    context.grammar.forEach(g => {
      formatted += `\n[${g.category}] ${g.title}: ${g.content}\n`;
      if (g.rules) formatted += `Reglas: ${g.rules}\n`;
    });
  }
  
  if (context.conjugations.length > 0) {
    formatted += '\n\nCONJUGACIONES VERBALES:\n';
    const verbGroups = context.conjugations.reduce((acc: any, c: any) => {
      if (!acc[c.verb]) acc[c.verb] = [];
      acc[c.verb].push(c);
      return acc;
    }, {});
    
    Object.entries(verbGroups).forEach(([verb, conjugs]: [string, any]) => {
      formatted += `${verb}: `;
      formatted += conjugs.map((c: any) => `${c.tense}-${c.person}=${c.form}`).join(', ');
      formatted += '\n';
    });
  }
  
  if (context.patterns.length > 0) {
    formatted += '\n\nPATRONES: ';
    formatted += context.patterns.map((p: any) => `${p.name}(${p.structure})`).join(', ');
    formatted += '\n';
  }
  
  formatted += '\n=== FIN DEL CONTEXTO ===\n\n';
  return formatted;
}

async function formatCompleteContextFree(context: GrammarContext): Promise<string> {
  let formatted = formatGrammarContextFree(context);
  
  // Agregar estructura lingüística completa (versión compacta)
  const linguisticStructure = await loadLinguisticStructureFree();
  if (linguisticStructure) {
    // Extraer solo las secciones más importantes para APIs con límites
    const sections = [
      'Sistema fonético',
      'Clases nominales',
      'Verbos',
      'Orden sintáctico',
      'Reglas clave para IA'
    ];
    
    formatted += '\n\n=== ESTRUCTURA LINGÜÍSTICA BUBI (COMPACTA) ===\n\n';
    
    // Extraer secciones relevantes
    sections.forEach(section => {
      const regex = new RegExp(`##.*${section}[\\s\\S]*?(?=##|$)`, 'i');
      const match = linguisticStructure.match(regex);
      if (match) {
        formatted += match[0].substring(0, 500) + '\n\n';
      }
    });
    
    formatted += '\n=== FIN DE LA ESTRUCTURA ===\n\n';
  }
  
  return formatted;
}
