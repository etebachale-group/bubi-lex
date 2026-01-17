// Script de prueba para verificar que Groq funciona correctamente
// Ejecutar con: node test-groq.js

const fs = require('fs');

// Leer .env.local manualmente
function loadEnv() {
  try {
    const envContent = fs.readFileSync('.env.local', 'utf8');
    const lines = envContent.split('\n');
    for (const line of lines) {
      if (line.startsWith('GROQ_API_KEY=')) {
        return line.split('=')[1].trim();
      }
    }
  } catch (error) {
    return null;
  }
  return null;
}

async function testGroq() {
  const apiKey = loadEnv();
  
  if (!apiKey) {
    console.error('❌ Error: GROQ_API_KEY no está configurada');
    console.log('Verifica que .env.local contenga: GROQ_API_KEY=gsk_...');
    process.exit(1);
  }

  console.log('✅ GROQ_API_KEY encontrada');
  console.log('🔄 Probando conexión con Groq...\n');

  try {
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
            content: 'Eres un experto en el idioma Bubi.',
          },
          {
            role: 'user',
            content: 'Genera 2 ejemplos cortos de uso de la palabra "bubi" (que significa "persona" en español).',
          },
        ],
        temperature: 0.7,
        max_tokens: 200,
      }),
    });

    if (!response.ok) {
      const error = await response.text();
      console.error('❌ Error en la respuesta de Groq:');
      console.error(`Status: ${response.status}`);
      console.error(`Mensaje: ${error}`);
      process.exit(1);
    }

    const data = await response.json();
    const content = data.choices[0]?.message?.content || '';

    console.log('✅ ¡Groq funciona correctamente!\n');
    console.log('📝 Respuesta de Groq:');
    console.log('─'.repeat(60));
    console.log(content);
    console.log('─'.repeat(60));
    console.log('\n✨ Todo listo para usar las funcionalidades de IA con Groq');
    console.log('🚀 Inicia el servidor con: npm run dev');
    console.log('🌐 Visita: http://localhost:3000/ai-features');

  } catch (error) {
    console.error('❌ Error al conectar con Groq:');
    console.error(error.message);
    console.log('\n💡 Posibles soluciones:');
    console.log('1. Verifica tu conexión a internet');
    console.log('2. Verifica que la API key sea correcta');
    console.log('3. Verifica en https://console.groq.com/ que tu cuenta esté activa');
    process.exit(1);
  }
}

testGroq();
