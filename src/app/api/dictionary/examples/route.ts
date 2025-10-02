import { NextResponse } from 'next/server';

type RequestBody = { bubi: string; spanish: string };

async function generateWithOpenAI(bubi: string, spanish: string) {
  const apiKey = process.env.OPENAI_API_KEY;
  const baseUrl = process.env.OPENAI_BASE_URL || 'https://api.openai.com';
  const model = process.env.OPENAI_MODEL || 'gpt-4o-mini';
  if (!apiKey) return null;
  const system = 'Eres un lingüista experto en lengua Bubi y español. Devuelve exactamente un JSON con un array de 3 oraciones de ejemplo (strings) usando la palabra dada en Bubi, con su traducción contextual al español.';
  const user = `Palabra Bubi: ${bubi}\nSignificado en español: ${spanish}\nDevuelve SOLO JSON válido: ["ejemplo1", "ejemplo2", "ejemplo3"]`;
  const res = await fetch(`${baseUrl}/v1/chat/completions`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${apiKey}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      model,
      messages: [
        { role: 'system', content: system },
        { role: 'user', content: user },
      ],
      temperature: 0.7,
    }),
  });
  if (!res.ok) return null;
  const data = await res.json();
  const content = data?.choices?.[0]?.message?.content;
  if (typeof content !== 'string') return null;
  try {
    const parsed = JSON.parse(content);
    if (Array.isArray(parsed)) return parsed as string[];
  } catch {}
  // intento de extraer JSON de un texto
  const match = content.match(/\[[\s\S]*\]/);
  if (match) {
    try { const arr = JSON.parse(match[0]); if (Array.isArray(arr)) return arr as string[]; } catch {}
  }
  return null;
}

async function generateWithAzureOpenAI(bubi: string, spanish: string) {
  const apiKey = process.env.AZURE_OPENAI_API_KEY;
  const endpoint = process.env.AZURE_OPENAI_ENDPOINT; // ej: https://<resource>.openai.azure.com
  const deployment = process.env.AZURE_OPENAI_DEPLOYMENT || 'gpt-4o-mini';
  if (!apiKey || !endpoint) return null;
  const url = `${endpoint}/openai/deployments/${deployment}/chat/completions?api-version=2024-02-15-preview`;
  const system = 'Eres un lingüista experto en lengua Bubi y español. Devuelve exactamente un JSON con un array de 3 oraciones de ejemplo (strings).';
  const user = `Palabra Bubi: ${bubi}\nSignificado en español: ${spanish}\nDevuelve SOLO JSON válido: ["ejemplo1", "ejemplo2", "ejemplo3"]`;
  const res = await fetch(url, {
    method: 'POST',
    headers: {
      'api-key': apiKey,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      messages: [
        { role: 'system', content: system },
        { role: 'user', content: user },
      ],
      temperature: 0.7,
    }),
  });
  if (!res.ok) return null;
  const data = await res.json();
  const content = data?.choices?.[0]?.message?.content;
  if (typeof content !== 'string') return null;
  try {
    const parsed = JSON.parse(content);
    if (Array.isArray(parsed)) return parsed as string[];
  } catch {}
  const match = content.match(/\[[\s\S]*\]/);
  if (match) {
    try { const arr = JSON.parse(match[0]); if (Array.isArray(arr)) return arr as string[]; } catch {}
  }
  return null;
}

function localFallback(bubi: string, spanish: string) {
  return [
    `En Bubi: «${bubi}». En español: «${spanish}».`,
    `Uso cotidiano: Hoy aprendí «${bubi}», que significa «${spanish}».`,
    `Contexto cultural: «${bubi}» se relaciona con «${spanish}».`,
  ];
}

export async function POST(req: Request) {
  try {
    const body = (await req.json()) as RequestBody;
    const bubi = (body?.bubi || '').trim();
    const spanish = (body?.spanish || '').trim();
    if (!bubi || !spanish) {
      return NextResponse.json({ error: 'Missing bubi/spanish' }, { status: 400 });
    }

    // Provider priority: Azure OpenAI -> OpenAI -> fallback local
    let examples: string[] | null = null;
    try { examples = await generateWithAzureOpenAI(bubi, spanish); } catch {}
    if (!examples) { try { examples = await generateWithOpenAI(bubi, spanish); } catch {} }
    if (!examples) { examples = localFallback(bubi, spanish); }

    return NextResponse.json({ examples });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
