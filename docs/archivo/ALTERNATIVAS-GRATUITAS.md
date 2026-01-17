# 🆓 Alternativas Gratuitas de IA para BubiLex

**Fecha**: 2025-01-17  
**Versión**: 2.2  
**Estado**: ✅ IMPLEMENTADO

---

## 🎯 Resumen

BubiLex ahora soporta **múltiples proveedores de IA gratuitos** como alternativa a OpenAI y Anthropic. Esto permite usar todas las funcionalidades de IA sin costo alguno.

## ✨ Proveedores Gratuitos Soportados

### 1. 🚀 Groq (Recomendado)
- **Costo**: $0 (100% gratuito)
- **Velocidad**: ⚡⚡⚡⚡⚡ (hasta 10x más rápido que OpenAI)
- **Límites**: 14,400 requests/día
- **Modelos**: Llama 3, Mixtral, Gemma
- **Registro**: https://console.groq.com/

**Ventajas**:
- Extremadamente rápido
- Límites muy generosos
- Modelos de alta calidad
- Fácil de configurar

### 2. 🌐 Together AI
- **Costo**: $0 (créditos iniciales de $25)
- **Velocidad**: ⚡⚡⚡⚡
- **Límites**: Según créditos disponibles
- **Modelos**: Mixtral, Llama 2, RedPajama
- **Registro**: https://api.together.xyz/

**Ventajas**:
- Créditos gratuitos generosos
- Múltiples modelos disponibles
- Buena velocidad
- API compatible con OpenAI

### 3. 💻 Ollama (100% Local)
- **Costo**: $0 (sin límites)
- **Velocidad**: ⚡⚡⚡ (depende de tu hardware)
- **Límites**: Sin límites
- **Modelos**: Llama 2, Mixtral, CodeLlama, y más
- **Instalación**: https://ollama.ai/

**Ventajas**:
- 100% gratuito, sin límites
- Privacidad total (todo local)
- No requiere internet después de descargar
- Ideal para desarrollo

**Desventajas**:
- Requiere recursos (8GB+ RAM)
- Solo funciona localmente

### 4. 🤗 HuggingFace (Opcional)
- **Costo**: $0 (con límites)
- **Velocidad**: ⚡⚡⚡
- **Límites**: Según modelo
- **Modelos**: Miles de modelos disponibles
- **Registro**: https://huggingface.co/

**Nota**: Usado como último recurso, opcional.

---

## 🚀 Configuración Rápida

### Opción 1: Groq (5 minutos)

```bash
# 1. Obtén tu API key
# Visita: https://console.groq.com/
# Crea una cuenta y genera una API key

# 2. Agrega a .env.local
GROQ_API_KEY=gsk_tu_api_key_aqui

# 3. Reinicia el servidor
npm run dev

# 4. Prueba
curl http://localhost:3000/api/ai/quiz
```

### Opción 2: Ollama (10 minutos)

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

# 5. Prueba
curl http://localhost:3000/api/ai/quiz
```

### Opción 3: Together AI (5 minutos)

```bash
# 1. Regístrate en https://api.together.xyz/
# Recibes $25 en créditos gratuitos

# 2. Agrega a .env.local
TOGETHER_API_KEY=tu_api_key_aqui

# 3. Reinicia el servidor
npm run dev

# 4. Prueba
curl http://localhost:3000/api/ai/quiz
```

---

## 🔄 Sistema de Fallback

El sistema intenta usar los proveedores en este orden:

```
1. OpenAI/Anthropic (si está configurado)
   ↓ (si falla o no está configurado)
2. Groq (si está configurado)
   ↓ (si falla)
3. Together AI (si está configurado)
   ↓ (si falla)
4. Ollama (si está corriendo localmente)
   ↓ (si falla)
5. Fallback básico (respuestas simples sin IA)
```

**Ventajas del sistema de fallback**:
- Alta disponibilidad
- Redundancia automática
- Sin interrupciones de servicio
- Optimización de costos

---

## 📊 Comparación de Proveedores

| Característica | Groq | Together AI | Ollama | OpenAI |
|----------------|------|-------------|--------|--------|
| **Costo** | $0 | $0* | $0 | $$ |
| **Velocidad** | ⚡⚡⚡⚡⚡ | ⚡⚡⚡⚡ | ⚡⚡⚡ | ⚡⚡⚡⚡ |
| **Calidad** | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Límites** | 14.4k/día | Créditos | Sin límites | Según pago |
| **Internet** | Sí | Sí | No | Sí |
| **Privacidad** | Media | Media | Alta | Media |
| **Setup** | Fácil | Fácil | Medio | Fácil |
| **Producción** | ✅ | ✅ | ❌ | ✅ |

*Créditos iniciales, luego pago

---

## 🎯 Recomendaciones por Caso de Uso

### Desarrollo Local
```bash
# Mejor: Ollama
# - Sin límites
# - Privacidad total
# - No requiere internet
ollama pull llama2
```

### Producción (Bajo Presupuesto)
```bash
# Mejor: Groq + Together AI
GROQ_API_KEY=gsk_...
TOGETHER_API_KEY=...
```

### Producción (Alta Calidad)
```bash
# Mejor: OpenAI + Groq
OPENAI_API_KEY=sk-...
GROQ_API_KEY=gsk_...
```

### Testing/CI/CD
```bash
# Mejor: Groq
GROQ_API_KEY=gsk_...
```

---

## 🛠️ Implementación Técnica

### Archivos Modificados

```
src/
├── lib/
│   └── ai-free-alternatives.ts    # Lógica de proveedores gratuitos
├── app/api/ai/
│   ├── examples/route.ts          # Actualizado con fallback
│   ├── quiz/route.ts              # Actualizado con fallback
│   ├── translate/route.ts         # Actualizado con fallback
│   ├── etymology/route.ts         # Actualizado con fallback
│   └── pronunciation/route.ts     # Actualizado con fallback
```

### Funciones Principales

```typescript
// Generar ejemplos con IA gratuita
generateExamplesWithFreeAI(bubiWord, spanishTranslation, count)

// Traducir con IA gratuita
translateWithFreeAI(text, context)

// Generar quiz con IA gratuita
generateQuizWithFreeAI(words)

// Verificar disponibilidad
checkFreeAIAvailability()
```

### Flujo de Ejecución

```typescript
// Ejemplo: Generar ejemplos
try {
  // 1. Intentar con IA de pago (si está configurada)
  if (isAIAvailable()) {
    return await generateContextualExamples(...)
  }
  
  // 2. Usar alternativas gratuitas
  return await generateExamplesWithFreeAI(...)
} catch (error) {
  // 3. Fallback básico
  return generateBasicExamples(...)
}
```

---

## 🧪 Testing

### Verificar Disponibilidad

```bash
# Verificar qué proveedores están disponibles
curl http://localhost:3000/api/ai/quiz

# Respuesta incluye el proveedor usado:
{
  "quiz": [...],
  "provider": "groq" // o "together", "ollama", "free-ai"
}
```

### Probar Cada Proveedor

```bash
# 1. Solo Groq
GROQ_API_KEY=gsk_... npm run dev

# 2. Solo Together AI
TOGETHER_API_KEY=... npm run dev

# 3. Solo Ollama (debe estar corriendo)
ollama serve
npm run dev

# 4. Múltiples proveedores (redundancia)
GROQ_API_KEY=gsk_...
TOGETHER_API_KEY=...
npm run dev
```

---

## 🔒 Seguridad y Privacidad

### Groq
- Datos procesados en servidores de Groq
- No se almacenan conversaciones
- Cumple con GDPR

### Together AI
- Datos procesados en servidores de Together AI
- Política de privacidad estándar
- Cumple con regulaciones

### Ollama
- **100% privado**: Todo se ejecuta localmente
- No se envían datos a internet
- Ideal para datos sensibles

### HuggingFace
- Datos procesados en servidores de HuggingFace
- Modelos públicos
- Cumple con regulaciones

---

## 💡 Consejos y Mejores Prácticas

### Para Desarrollo
1. Usa Ollama para desarrollo local
2. No gastes créditos en desarrollo
3. Prueba diferentes modelos localmente

### Para Producción
1. Configura múltiples proveedores para redundancia
2. Usa Groq como principal (rápido y gratuito)
3. Mantén OpenAI como backup para alta calidad
4. Monitorea límites de rate limiting

### Para Optimizar Costos
1. Usa proveedores gratuitos primero
2. Implementa caché de respuestas comunes
3. Limita tokens por respuesta
4. Monitorea uso mensual

---

## 🐛 Solución de Problemas

### Groq no funciona

**Síntomas**:
- Error 401: API key inválida
- Error 429: Límite excedido

**Soluciones**:
```bash
# Verificar API key
echo $GROQ_API_KEY

# Verificar límites en dashboard
# https://console.groq.com/

# Esperar reset (límite diario)
# Se resetea cada 24 horas
```

### Ollama no funciona

**Síntomas**:
- Error de conexión
- Modelo no encontrado

**Soluciones**:
```bash
# Verificar que Ollama esté corriendo
ollama list

# Verificar puerto
curl http://localhost:11434/api/tags

# Descargar modelo si falta
ollama pull llama2

# Reiniciar Ollama
# Windows: Reiniciar desde el menú
# Mac/Linux: killall ollama && ollama serve
```

### Together AI no funciona

**Síntomas**:
- Error 401: API key inválida
- Error 402: Sin créditos

**Soluciones**:
```bash
# Verificar API key
echo $TOGETHER_API_KEY

# Verificar créditos en dashboard
# https://api.together.xyz/

# Agregar más créditos si es necesario
```

### Todos los proveedores fallan

**Síntomas**:
- Respuestas básicas sin IA

**Soluciones**:
1. Verificar que al menos un proveedor esté configurado
2. Revisar logs del servidor
3. Verificar conectividad a internet (excepto Ollama)
4. Reiniciar el servidor Next.js

---

## 📈 Monitoreo y Métricas

### Logs del Sistema

```typescript
// Los logs incluyen información del proveedor usado
logger.info('Generando ejemplos con IA', { 
  provider: 'groq',
  bubi: 'palabra',
  spanish: 'traducción'
});
```

### Métricas Recomendadas

1. **Tasa de éxito por proveedor**
2. **Tiempo de respuesta promedio**
3. **Uso de fallbacks**
4. **Errores por proveedor**

---

## 🚀 Deployment en Vercel

### Variables de Entorno

```bash
# En Vercel Dashboard → Settings → Environment Variables

# Opción recomendada: Groq
GROQ_API_KEY=gsk_...

# O múltiples para redundancia
GROQ_API_KEY=gsk_...
TOGETHER_API_KEY=...

# Opcional: OpenAI como backup premium
OPENAI_API_KEY=sk-...
GROQ_API_KEY=gsk_...
```

### Notas Importantes

- **Ollama NO funciona en Vercel** (solo local)
- Groq y Together AI funcionan perfectamente en Vercel
- Configura múltiples proveedores para alta disponibilidad
- Monitorea límites de rate limiting

---

## 📚 Recursos Adicionales

### Documentación Oficial

- **Groq**: https://console.groq.com/docs
- **Together AI**: https://docs.together.ai/
- **Ollama**: https://github.com/ollama/ollama
- **HuggingFace**: https://huggingface.co/docs

### Comunidad

- **Groq Discord**: https://discord.gg/groq
- **Ollama GitHub**: https://github.com/ollama/ollama/issues
- **Together AI Support**: support@together.ai

---

## 🎓 Ejemplos de Uso

### Ejemplo 1: Generar Ejemplos

```typescript
// Con Groq
const examples = await generateExamplesWithFreeAI(
  'palabra',
  'traducción',
  3
);

// Respuesta:
// [
//   "Ejemplo 1 usando 'palabra'...",
//   "Ejemplo 2 usando 'palabra'...",
//   "Ejemplo 3 usando 'palabra'..."
// ]
```

### Ejemplo 2: Traducir

```typescript
// Con Together AI
const result = await translateWithFreeAI(
  'texto en bubi',
  'contexto: conversación familiar'
);

// Respuesta:
// {
//   translation: "traducción al español",
//   explanation: "explicación del contexto",
//   alternatives: ["alternativa 1", "alternativa 2"]
// }
```

### Ejemplo 3: Generar Quiz

```typescript
// Con Ollama
const quiz = await generateQuizWithFreeAI([
  { bubi: 'palabra1', spanish: 'traducción1' },
  { bubi: 'palabra2', spanish: 'traducción2' },
]);

// Respuesta:
// [
//   {
//     question: "¿Qué significa 'palabra1'?",
//     options: ["opción1", "opción2", "opción3", "opción4"],
//     correctAnswer: 0,
//     explanation: "explicación..."
//   }
// ]
```

---

## ✅ Checklist de Implementación

- [x] Crear `src/lib/ai-free-alternatives.ts`
- [x] Actualizar 5 rutas de API con fallback
- [x] Agregar variables de entorno a `.env.example`
- [x] Actualizar documentación `FUNCIONALIDADES-IA.md`
- [x] Crear `ALTERNATIVAS-GRATUITAS.md`
- [x] Verificar TypeScript (0 errores)
- [ ] Probar con Groq
- [ ] Probar con Together AI
- [ ] Probar con Ollama
- [ ] Desplegar en Vercel
- [ ] Configurar variables en Vercel
- [ ] Verificar en producción

---

**Implementado por**: Kiro AI  
**Fecha**: 2025-01-17  
**Versión**: 2.2  
**Estado**: ✅ LISTO PARA TESTING Y DEPLOYMENT
