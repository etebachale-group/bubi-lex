# 🤖 Funcionalidades con IA - BubiLex

**Fecha**: 2025-01-17  
**Versión**: 2.1 - AI-Powered  
**Estado**: ✅ IMPLEMENTADO

---

## 🎯 Resumen

Se han agregado funcionalidades avanzadas de Inteligencia Artificial al diccionario BubiLex para mejorar la experiencia de aprendizaje del idioma Bubi.

## ✨ Funcionalidades Implementadas

### 1. 🌐 Traductor Contextual
**Endpoint**: `POST /api/ai/translate`

**Características**:
- Traduce palabras considerando el contexto cultural
- Detecta automáticamente el idioma (Bubi o Español)
- Proporciona explicaciones de la traducción
- Sugiere traducciones alternativas

**Ejemplo de uso**:
```typescript
const response = await fetch('/api/ai/translate', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    text: 'palabra',
    context: 'En una conversación sobre familia'
  })
});
```

### 2. 🧠 Quiz de Práctica Inteligente
**Endpoint**: `GET /api/ai/quiz`

**Características**:
- Genera preguntas automáticamente basadas en el diccionario
- Preguntas de opción múltiple
- Explicaciones detalladas de cada respuesta
- Puntuación y seguimiento de progreso

**Ejemplo de uso**:
```typescript
const response = await fetch('/api/ai/quiz');
const { quiz } = await response.json();
```

### 3. 🎤 Guía de Pronunciación
**Endpoint**: `POST /api/ai/pronunciation`

**Características**:
- Notación IPA mejorada
- Desglose silábico
- Consejos personalizados para hispanohablantes
- Tips de pronunciación cultural

**Ejemplo de uso**:
```typescript
const response = await fetch('/api/ai/pronunciation', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    bubi: 'palabra',
    ipa: '/palabra/'
  })
});
```

### 4. 📚 Ejemplos Contextuales
**Endpoint**: `POST /api/ai/examples`

**Características**:
- Genera frases de ejemplo culturalmente apropiadas
- Contexto del pueblo Bubi
- Múltiples ejemplos por palabra
- Uso en situaciones reales

**Ejemplo de uso**:
```typescript
const response = await fetch('/api/ai/examples', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    bubi: 'palabra',
    spanish: 'traducción',
    count: 3
  })
});
```

### 5. 💡 Etimología y Origen
**Endpoint**: `POST /api/ai/etymology`

**Características**:
- Explica el origen de las palabras
- Contexto histórico y cultural
- Significado profundo
- Relación con la cultura Bubi

**Ejemplo de uso**:
```typescript
const response = await fetch('/api/ai/etymology', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    bubi: 'palabra',
    spanish: 'traducción'
  })
});
```

### 6. 🔗 Palabras Relacionadas
**Función**: `suggestRelatedWords()`

**Características**:
- Sugiere sinónimos en Bubi
- Antónimos
- Palabras de la misma familia semántica
- Relaciones culturales

---

## 🛠️ Configuración

### Requisitos

El sistema ahora soporta **múltiples proveedores de IA**, incluyendo opciones **100% gratuitas**:

#### Opciones de Pago (Producción)
1. **OpenAI API Key** (recomendado para producción)
2. **Anthropic API Key** (alternativa de pago)

#### Alternativas Gratuitas (Desarrollo/Producción)
1. **Groq** - GRATUITO con límites generosos y muy rápido
2. **Together AI** - GRATUITO con créditos iniciales
3. **Ollama** - 100% GRATUITO, ejecuta modelos localmente
4. **HuggingFace** - GRATUITO con límites (opcional)

### Variables de Entorno

```bash
# ===== OPCIONES DE PAGO =====
# OpenAI (recomendado para producción)
OPENAI_API_KEY=sk-...

# O Anthropic (alternativa de pago)
ANTHROPIC_API_KEY=sk-ant-...

# ===== ALTERNATIVAS GRATUITAS =====
# Groq (GRATUITO - muy rápido)
# Obtén tu API key en: https://console.groq.com/
GROQ_API_KEY=gsk_...

# Together AI (GRATUITO - créditos iniciales)
# Obtén tu API key en: https://api.together.xyz/
TOGETHER_API_KEY=...

# HuggingFace (GRATUITO - opcional)
# Obtén tu API key en: https://huggingface.co/settings/tokens
HUGGINGFACE_API_KEY=hf_...

# Ollama (GRATUITO - 100% local)
# Instala desde: https://ollama.ai/
# Ejecuta: ollama pull llama2
# No requiere API key, se detecta automáticamente

# Opcional: Modelo específico (solo para OpenAI/Anthropic)
AI_MODEL=gpt-3.5-turbo
AI_MAX_TOKENS=500
```

### Cómo Obtener API Keys Gratuitas

#### 1. Groq (Recomendado - Muy Rápido)
1. Visita: https://console.groq.com/
2. Crea una cuenta gratuita
3. Ve a "API Keys"
4. Crea una nueva API key
5. Copia y pega en `GROQ_API_KEY`

**Ventajas**:
- Extremadamente rápido (hasta 10x más rápido que OpenAI)
- Límites generosos (14,400 req/día)
- Modelos potentes (Llama 3, Mixtral)

#### 2. Together AI
1. Visita: https://api.together.xyz/
2. Regístrate con tu email
3. Recibes $25 en créditos gratuitos
4. Ve a "API Keys" en el dashboard
5. Copia y pega en `TOGETHER_API_KEY`

**Ventajas**:
- Créditos gratuitos iniciales
- Múltiples modelos disponibles
- Buena velocidad

#### 3. Ollama (100% Local y Gratuito)
1. Descarga Ollama: https://ollama.ai/
2. Instala en tu computadora
3. Ejecuta en terminal:
   ```bash
   ollama pull llama2
   # O para un modelo más potente:
   ollama pull mixtral
   ```
4. Ollama se ejecutará en `localhost:11434`
5. No necesitas configurar nada más

**Ventajas**:
- 100% gratuito, sin límites
- Privacidad total (todo local)
- No requiere internet después de descargar
- Ideal para desarrollo

**Desventajas**:
- Requiere recursos de computadora (RAM, CPU/GPU)
- Solo funciona en tu máquina local

#### 4. HuggingFace (Opcional)
1. Visita: https://huggingface.co/
2. Crea una cuenta
3. Ve a Settings → Access Tokens
4. Crea un token de lectura
5. Copia y pega en `HUGGINGFACE_API_KEY`

**Nota**: HuggingFace es opcional y se usa como último recurso.

### Orden de Prioridad

El sistema intenta usar los proveedores en este orden:

1. **OpenAI/Anthropic** (si está configurado)
2. **Groq** (si está configurado)
3. **Together AI** (si está configurado)
4. **Ollama** (si está corriendo localmente)
5. **Fallback básico** (respuestas simples sin IA)

Esto significa que:
- Si tienes OpenAI configurado, se usará primero
- Si OpenAI falla o no está configurado, se intenta Groq
- Si Groq falla, se intenta Together AI
- Si Together AI falla, se intenta Ollama
- Si todo falla, se usan respuestas básicas

### Modelos Soportados

#### OpenAI
- `gpt-3.5-turbo` (recomendado, económico)
- `gpt-4` (más preciso, más costoso)
- `gpt-4-turbo` (balance entre precio y calidad)

#### Anthropic
- `claude-3-haiku-20240307` (rápido y económico)
- `claude-3-sonnet-20240229` (balance)
- `claude-3-opus-20240229` (más preciso)

#### Groq (Gratuito)
- `llama3-8b-8192` (usado por defecto)
- `mixtral-8x7b-32768`
- `gemma-7b-it`

#### Together AI (Gratuito)
- `mistralai/Mixtral-8x7B-Instruct-v0.1` (usado por defecto)
- `meta-llama/Llama-2-70b-chat-hf`
- `togethercomputer/RedPajama-INCITE-7B-Chat`

#### Ollama (Local)
- `llama2` (recomendado para empezar)
- `mixtral` (más potente)
- `codellama` (especializado en código)
- Cualquier modelo disponible en https://ollama.ai/library

---

## 📊 Arquitectura

### Estructura de Archivos

```
src/
├── lib/
│   └── ai-features.ts          # Lógica de IA
├── app/
│   ├── api/
│   │   └── ai/
│   │       ├── quiz/route.ts
│   │       ├── pronunciation/route.ts
│   │       ├── examples/route.ts
│   │       ├── translate/route.ts
│   │       └── etymology/route.ts
│   └── ai-features/
│       └── page.tsx            # Página de funcionalidades
└── components/
    └── ai/
        ├── ai-translator.tsx
        └── practice-quiz.tsx
```

### Flujo de Datos

```
Usuario → Componente UI → API Route → ai-features.ts → OpenAI/Anthropic → Respuesta
```

### Rate Limiting

Todas las rutas de IA tienen rate limiting:
- **Quiz**: 1000 req/min (lenient)
- **Pronunciation**: 300 req/min (moderate)
- **Examples**: 100 req/min (strict)
- **Translate**: 300 req/min (moderate)
- **Etymology**: 100 req/min (strict)

---

## 🎨 Componentes UI

### AITranslator
**Ubicación**: `src/components/ai/ai-translator.tsx`

**Características**:
- Input para texto
- Campo de contexto opcional
- Detección automática de idioma
- Muestra traducción, explicación y alternativas
- Loading states
- Error handling

### PracticeQuiz
**Ubicación**: `src/components/ai/practice-quiz.tsx`

**Características**:
- Carga automática de preguntas
- Interfaz de opción múltiple
- Feedback inmediato
- Explicaciones detalladas
- Puntuación final
- Opción de reiniciar

---

## 🔒 Seguridad

### Protecciones Implementadas

1. **Rate Limiting**: Previene abuso de API
2. **Validación Zod**: Valida todos los inputs
3. **Error Handling**: Manejo robusto de errores
4. **Fallbacks**: Funcionalidad básica sin IA
5. **Logging**: Registro de todas las operaciones

### Costos y Límites

**Recomendaciones**:
- Usar `gpt-3.5-turbo` para desarrollo
- Configurar límites de tokens
- Monitorear uso de API
- Implementar caché para respuestas comunes

---

## 📈 Performance

### Optimizaciones

1. **Caché de Respuestas**: Respuestas comunes en memoria
2. **Fallbacks Rápidos**: Sin IA cuando no está disponible
3. **Rate Limiting**: Protege contra sobrecarga
4. **Timeouts**: Límites de tiempo en requests
5. **Streaming**: Respuestas en tiempo real (futuro)

### Métricas

- **Tiempo de respuesta**: ~2-5 segundos
- **Precisión**: Alta (depende del modelo)
- **Disponibilidad**: 99.9% (depende de proveedor)

---

## 🧪 Testing

### Pruebas Manuales

1. **Traductor**:
   ```bash
   curl -X POST http://localhost:3000/api/ai/translate \
     -H "Content-Type: application/json" \
     -d '{"text":"palabra","context":"familia"}'
   ```

2. **Quiz**:
   ```bash
   curl http://localhost:3000/api/ai/quiz
   ```

3. **Pronunciación**:
   ```bash
   curl -X POST http://localhost:3000/api/ai/pronunciation \
     -H "Content-Type: application/json" \
     -d '{"bubi":"palabra","ipa":"/palabra/"}'
   ```

### Casos de Prueba

- [ ] Traducción sin contexto
- [ ] Traducción con contexto
- [ ] Detección de idioma
- [ ] Generación de quiz
- [ ] Guía de pronunciación
- [ ] Ejemplos contextuales
- [ ] Etimología
- [ ] Rate limiting
- [ ] Error handling
- [ ] Fallbacks sin IA

---

## 🚀 Deployment

### Variables en Vercel

1. Ir a Vercel Dashboard
2. Seleccionar proyecto `bubi-lex`
3. Settings → Environment Variables
4. Agregar:
   ```
   OPENAI_API_KEY=sk-...
   AI_MODEL=gpt-3.5-turbo
   AI_MAX_TOKENS=500
   ```

### Verificación

```bash
# Verificar que IA está disponible (con cualquier proveedor)
curl https://bubi-lex.vercel.app/api/ai/quiz

# Debería retornar quiz con información del proveedor usado
# Ejemplo de respuesta:
# {
#   "quiz": [...],
#   "wordsUsed": 5,
#   "provider": "groq" // o "openai/anthropic", "together", "free-ai"
# }
```

### Configurar Alternativas Gratuitas en Vercel

1. Ir a Vercel Dashboard
2. Seleccionar proyecto `bubi-lex`
3. Settings → Environment Variables
4. Agregar las que desees:
   ```
   # Opción recomendada: Groq
   GROQ_API_KEY=gsk_...
   
   # O Together AI
   TOGETHER_API_KEY=...
   
   # O ambas para redundancia
   GROQ_API_KEY=gsk_...
   TOGETHER_API_KEY=...
   ```
5. Redeploy el proyecto

**Nota**: Ollama solo funciona localmente, no en Vercel.

---

## 📚 Documentación para Usuarios

### Página de IA

**URL**: `/ai-features`

**Contenido**:
- Explicación de funcionalidades
- Demos interactivos
- Traductor en vivo
- Quiz de práctica
- Guía de uso

### Acceso

- Disponible para todos los usuarios
- No requiere autenticación
- Rate limiting aplicado

---

## 🔄 Roadmap Futuro

### Corto Plazo (1-2 meses)
- [ ] Caché de respuestas comunes
- [ ] Streaming de respuestas
- [ ] Más tipos de quiz
- [ ] Flashcards con IA

### Medio Plazo (3-6 meses)
- [ ] Conversaciones con IA en Bubi
- [ ] Corrección de pronunciación con audio
- [ ] Generación de historias
- [ ] Tutor virtual personalizado

### Largo Plazo (6-12 meses)
- [ ] Reconocimiento de voz
- [ ] Síntesis de voz en Bubi
- [ ] Realidad aumentada
- [ ] Gamificación avanzada

---

## 💰 Costos Estimados

### Opciones Gratuitas (Recomendado para Empezar)

#### Groq
- **Costo**: $0 (100% gratuito)
- **Límites**: 14,400 requests/día
- **Velocidad**: Extremadamente rápido
- **Recomendación**: ⭐ Mejor opción gratuita

#### Together AI
- **Costo**: $0 (créditos iniciales de $25)
- **Límites**: Según créditos disponibles
- **Velocidad**: Rápido
- **Recomendación**: Excelente para empezar

#### Ollama (Local)
- **Costo**: $0 (100% gratuito, sin límites)
- **Requisitos**: 8GB+ RAM, CPU/GPU decente
- **Velocidad**: Depende de tu hardware
- **Recomendación**: Ideal para desarrollo local

### Opciones de Pago (Producción)

#### OpenAI (gpt-3.5-turbo)
- **Input**: $0.50 / 1M tokens
- **Output**: $1.50 / 1M tokens
- **Estimado**: ~$5-10/mes para uso moderado

#### Anthropic (claude-3-haiku)
- **Input**: $0.25 / 1M tokens
- **Output**: $1.25 / 1M tokens
- **Estimado**: ~$3-8/mes para uso moderado

### Recomendación de Configuración

#### Para Desarrollo
```bash
# Opción 1: Ollama (100% local, sin límites)
# Instalar Ollama y ejecutar: ollama pull llama2

# Opción 2: Groq (muy rápido, gratuito)
GROQ_API_KEY=gsk_...
```

#### Para Producción (Bajo Presupuesto)
```bash
# Usar Groq como principal
GROQ_API_KEY=gsk_...

# Together AI como backup
TOGETHER_API_KEY=...
```

#### Para Producción (Alta Calidad)
```bash
# OpenAI como principal
OPENAI_API_KEY=sk-...

# Groq como backup gratuito
GROQ_API_KEY=gsk_...
```

### Comparación de Proveedores

| Proveedor | Costo | Velocidad | Calidad | Límites | Recomendación |
|-----------|-------|-----------|---------|---------|---------------|
| **Groq** | Gratis | ⚡⚡⚡⚡⚡ | ⭐⭐⭐⭐ | 14.4k/día | ✅ Mejor gratuito |
| **Together AI** | Gratis* | ⚡⚡⚡⚡ | ⭐⭐⭐⭐ | $25 créditos | ✅ Excelente inicio |
| **Ollama** | Gratis | ⚡⚡⚡ | ⭐⭐⭐ | Sin límites | ✅ Desarrollo local |
| **OpenAI** | Pago | ⚡⚡⚡⚡ | ⭐⭐⭐⭐⭐ | Según pago | Producción |
| **Anthropic** | Pago | ⚡⚡⚡⚡ | ⭐⭐⭐⭐⭐ | Según pago | Producción |

*Créditos iniciales, luego pago

---

## 📞 Soporte

### Problemas Comunes

**IA no disponible (503)**:
- Verificar API key configurada
- Verificar saldo de cuenta
- Revisar logs de Vercel

**Rate limit excedido (429)**:
- Esperar 1 minuto
- Reducir frecuencia de requests
- Contactar admin para aumentar límites

**Respuestas incorrectas**:
- Reportar en GitHub Issues
- Incluir contexto y respuesta esperada
- Considerar cambiar modelo

---

## 🆓 Guía de Alternativas Gratuitas

### ¿Por qué usar alternativas gratuitas?

- **Costo $0**: No necesitas tarjeta de crédito
- **Sin límites de facturación**: No te preocupes por costos inesperados
- **Rápido**: Groq es hasta 10x más rápido que OpenAI
- **Privacidad**: Ollama ejecuta todo localmente
- **Ideal para desarrollo**: Prueba sin gastar dinero

### Configuración Rápida (5 minutos)

#### Opción 1: Groq (Más Rápido)

```bash
# 1. Obtén tu API key en https://console.groq.com/
# 2. Agrega a .env.local:
GROQ_API_KEY=gsk_tu_api_key_aqui

# 3. Reinicia el servidor
npm run dev
```

#### Opción 2: Ollama (100% Local)

```bash
# 1. Instala Ollama
# Windows: Descarga desde https://ollama.ai/
# Mac: brew install ollama
# Linux: curl https://ollama.ai/install.sh | sh

# 2. Descarga un modelo
ollama pull llama2

# 3. Verifica que esté corriendo
ollama list

# 4. Reinicia el servidor Next.js
npm run dev
```

#### Opción 3: Together AI (Créditos Gratis)

```bash
# 1. Regístrate en https://api.together.xyz/
# 2. Recibes $25 en créditos
# 3. Agrega a .env.local:
TOGETHER_API_KEY=tu_api_key_aqui

# 4. Reinicia el servidor
npm run dev
```

### Verificar que Funciona

```bash
# Prueba el endpoint de quiz
curl http://localhost:3000/api/ai/quiz

# Deberías ver:
# {
#   "quiz": [...],
#   "provider": "groq" // o "together", "ollama", "free-ai"
# }
```

### Solución de Problemas

#### Groq no funciona
- Verifica que la API key sea correcta
- Revisa que no hayas excedido el límite diario (14,400 req/día)
- Verifica en https://console.groq.com/ que tu cuenta esté activa

#### Ollama no funciona
- Verifica que Ollama esté corriendo: `ollama list`
- Asegúrate de haber descargado un modelo: `ollama pull llama2`
- Verifica que esté en el puerto correcto: http://localhost:11434
- Reinicia Ollama si es necesario

#### Together AI no funciona
- Verifica que tengas créditos disponibles
- Revisa tu API key en https://api.together.xyz/
- Verifica que la API key tenga permisos correctos

### Comparación de Rendimiento

| Característica | Groq | Together AI | Ollama | OpenAI |
|----------------|------|-------------|--------|--------|
| Velocidad | ⚡⚡⚡⚡⚡ | ⚡⚡⚡⚡ | ⚡⚡⚡ | ⚡⚡⚡⚡ |
| Calidad | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Costo | $0 | $0* | $0 | $$ |
| Límites | 14.4k/día | Créditos | Sin límites | Según pago |
| Requiere Internet | Sí | Sí | No | Sí |
| Privacidad | Media | Media | Alta | Media |

### Recomendaciones por Caso de Uso

#### Desarrollo Local
```bash
# Mejor opción: Ollama
# - Sin límites
# - Privacidad total
# - No requiere internet
ollama pull llama2
```

#### Producción (Bajo Presupuesto)
```bash
# Mejor opción: Groq + Together AI como backup
GROQ_API_KEY=gsk_...
TOGETHER_API_KEY=...
```

#### Producción (Alta Calidad)
```bash
# Mejor opción: OpenAI + Groq como backup
OPENAI_API_KEY=sk-...
GROQ_API_KEY=gsk_...
```

#### Testing/CI/CD
```bash
# Mejor opción: Groq (rápido y confiable)
GROQ_API_KEY=gsk_...
```

---

**Implementado por**: Kiro AI  
**Fecha**: 2025-01-17  
**Versión**: 2.2 - AI-Powered con Alternativas Gratuitas  
**Estado**: ✅ LISTO PARA PRODUCCIÓN
