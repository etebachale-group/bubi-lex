# Sistema de Voz Mejorado con Normalización de Texto

## 🎙️ Mejoras Implementadas

He creado un sistema centralizado de síntesis de voz que normaliza el texto para una mejor pronunciación en español, especialmente para signos y símbolos.

## ✨ Características Principales

### 1. Normalización de Texto

El sistema convierte automáticamente símbolos y signos a palabras en español:

```typescript
// Antes
"¡Hola!" → Se pronunciaba mal o se saltaba

// Ahora
"¡Hola!" → "signo de exclamación de apertura Hola signo de exclamación"
```

#### Símbolos Soportados

| Símbolo | Se Pronuncia Como |
|---------|-------------------|
| `!` | signo de exclamación |
| `¡` | signo de exclamación de apertura |
| `?` | signo de interrogación |
| `¿` | signo de interrogación de apertura |
| `@` | arroba |
| `#` | numeral |
| `$` | dólar |
| `%` | por ciento |
| `&` | y |
| `*` | asterisco |
| `+` | más |
| `-` | menos |
| `=` | igual |
| `/` | barra |
| `\` | barra invertida |
| `(` | paréntesis de apertura |
| `)` | paréntesis de cierre |
| `[` | corchete de apertura |
| `]` | corchete de cierre |
| `{` | llave de apertura |
| `}` | llave de cierre |
| `"` | comillas |
| `:` | dos puntos |
| `;` | punto y coma |
| `,` | coma |
| `.` | punto |

### 2. Selección Inteligente de Voces

El sistema busca y selecciona automáticamente la mejor voz en español disponible:

**Prioridad de Voces**:
1. `es-ES` - Español de España (primera opción)
2. `es-MX` - Español de México
3. `es-US` - Español de Estados Unidos
4. `es-AR` - Español de Argentina
5. `es` - Español genérico
6. Cualquier voz que contenga "spanish" o "español" en el nombre

### 3. Carga Asíncrona de Voces

Maneja correctamente el caso donde las voces se cargan de forma asíncrona:

```typescript
const voices = await getAvailableVoices();
// Espera a que las voces estén disponibles antes de continuar
```

### 4. Funciones Completas

```typescript
// Hablar texto
await speak(text, { rate: 0.85, pitch: 1.0, volume: 1.0 }, normalizeText);

// Detener
stopSpeaking();

// Pausar
pauseSpeaking();

// Reanudar
resumeSpeaking();

// Verificar si está hablando
const speaking = isSpeaking();
```

## 📁 Archivo Creado

### `src/lib/speech-synthesis.ts`

Utilidad centralizada con las siguientes funciones:

#### Funciones Principales

1. **`speak(text, config, normalizeText)`**
   - Habla el texto con síntesis de voz
   - Normaliza símbolos si `normalizeText = true`
   - Selecciona automáticamente voz en español
   - Retorna Promise para manejo asíncrono

2. **`normalizeTextForSpeech(text)`**
   - Convierte símbolos a palabras
   - Limpia espacios múltiples
   - Retorna texto normalizado

3. **`pickSpanishVoice(voices)`**
   - Selecciona la mejor voz en español
   - Prioriza voces por región
   - Fallback a voz genérica

4. **`getAvailableVoices()`**
   - Obtiene voces disponibles
   - Maneja carga asíncrona
   - Timeout de seguridad

5. **`stopSpeaking()`**
   - Detiene síntesis en curso

6. **`pauseSpeaking()`**
   - Pausa síntesis

7. **`resumeSpeaking()`**
   - Reanuda síntesis pausada

8. **`isSpeaking()`**
   - Verifica si hay síntesis activa

## 🔄 Componentes Actualizados

### 1. `src/components/word-of-the-day.tsx`

**Antes**:
```typescript
function speak(text: string, voice: SpeechSynthesisVoice | null) {
  const u = new SpeechSynthesisUtterance(text);
  // ...
}
```

**Ahora**:
```typescript
import { speak, stopSpeaking } from "@/lib/speech-synthesis";

const onSpeak = async () => {
  await speak(entry.bubi, { rate: 0.85 }, true);
};
```

### 2. `src/components/ai/learning-system.tsx`

**Antes**:
```typescript
const speakWord = (text: string) => {
  const utterance = new SpeechSynthesisUtterance(text);
  utterance.lang = 'es-ES';
  window.speechSynthesis.speak(utterance);
};
```

**Ahora**:
```typescript
import { speak } from "@/lib/speech-synthesis";

const speakWord = async (text: string) => {
  await speak(text, { rate: 0.8 }, true);
};
```

### 3. `src/app/dictionary/dictionary-view-modern.tsx`

**Antes**:
```typescript
const handlePronounce = (word: string) => {
  const utterance = new SpeechSynthesisUtterance(word);
  utterance.lang = 'es-ES';
  window.speechSynthesis.speak(utterance);
};
```

**Ahora**:
```typescript
import { speak } from "@/lib/speech-synthesis";

const handlePronounce = async (word: string) => {
  await speak(word, { rate: 0.85 }, true);
};
```

## 🎯 Ejemplos de Uso

### Ejemplo 1: Pronunciar Palabra Simple
```typescript
await speak("bótó", { rate: 0.85 }, false);
// Pronuncia: "bótó"
```

### Ejemplo 2: Pronunciar con Símbolos
```typescript
await speak("¡Hola!", { rate: 0.85 }, true);
// Pronuncia: "signo de exclamación de apertura Hola signo de exclamación"
```

### Ejemplo 3: Pronunciar Oración Completa
```typescript
await speak("¿Cómo estás?", { rate: 0.85 }, true);
// Pronuncia: "signo de interrogación de apertura Cómo estás signo de interrogación"
```

### Ejemplo 4: Configuración Personalizada
```typescript
await speak("texto", {
  rate: 0.9,    // Velocidad (0.1 - 10)
  pitch: 1.2,   // Tono (0 - 2)
  volume: 0.8,  // Volumen (0 - 1)
}, true);
```

## 🔧 Configuración

### Parámetros de `speak()`

```typescript
interface SpeechConfig {
  lang?: string;      // Idioma (default: 'es-ES')
  rate?: number;      // Velocidad (default: 0.85)
  pitch?: number;     // Tono (default: 1.0)
  volume?: number;    // Volumen (default: 1.0)
}

speak(
  text: string,           // Texto a pronunciar
  config?: SpeechConfig,  // Configuración opcional
  normalizeText?: boolean // Normalizar símbolos (default: true)
)
```

## 📊 Flujo de Funcionamiento

```
1. Usuario hace click en botón de voz
   ↓
2. Se llama a speak(text, config, true)
   ↓
3. Se normaliza el texto (símbolos → palabras)
   ↓
4. Se obtienen voces disponibles
   ↓
5. Se selecciona mejor voz en español
   ↓
6. Se crea SpeechSynthesisUtterance
   ↓
7. Se configura voz, idioma y parámetros
   ↓
8. Se reproduce el audio
   ↓
9. Promise se resuelve al terminar
```

## 🎨 Beneficios

### 1. Pronunciación Mejorada
- Los signos de exclamación e interrogación se pronuncian correctamente
- Los símbolos matemáticos se leen como palabras
- Los caracteres especiales no se saltan

### 2. Código Centralizado
- Una sola utilidad para toda la aplicación
- Fácil de mantener y actualizar
- Comportamiento consistente

### 3. Mejor UX
- Los usuarios escuchan todo el contenido
- Pronunciación clara y natural
- Voces en español de calidad

### 4. Manejo de Errores
- Try-catch en todas las funciones
- Fallbacks cuando no hay voces
- Logs de errores para debugging

## 🌍 Compatibilidad

### Navegadores Soportados
- ✅ Chrome/Edge (Chromium)
- ✅ Safari
- ✅ Firefox
- ✅ Opera

### Voces Disponibles
Depende del sistema operativo y navegador:
- **Windows**: Microsoft voces (Helena, Sabina, etc.)
- **macOS**: Apple voces (Mónica, Paulina, etc.)
- **Android**: Google voces
- **iOS**: Apple voces

## 🔍 Testing

### Probar Normalización
```typescript
import { normalizeTextForSpeech } from '@/lib/speech-synthesis';

console.log(normalizeTextForSpeech("¡Hola!"));
// Output: " signo de exclamación de apertura Hola signo de exclamación "

console.log(normalizeTextForSpeech("¿Qué tal?"));
// Output: " signo de interrogación de apertura Qué tal signo de interrogación "
```

### Probar Voces
```typescript
import { getAvailableVoices, pickSpanishVoice } from '@/lib/speech-synthesis';

const voices = await getAvailableVoices();
console.log('Voces disponibles:', voices.length);

const spanishVoice = pickSpanishVoice(voices);
console.log('Voz seleccionada:', spanishVoice?.name, spanishVoice?.lang);
```

## 📋 Checklist de Funcionalidades

- ✅ Normalización de símbolos a palabras
- ✅ Selección inteligente de voces en español
- ✅ Carga asíncrona de voces
- ✅ Configuración personalizable (rate, pitch, volume)
- ✅ Funciones de control (play, pause, stop)
- ✅ Manejo de errores robusto
- ✅ Integración en todos los componentes
- ✅ Código centralizado y reutilizable
- ✅ Documentación completa

## 🚀 Próximas Mejoras Posibles

1. **Cache de Voces**: Guardar voz seleccionada en localStorage
2. **Selector de Voz**: Permitir al usuario elegir su voz preferida
3. **Velocidad Ajustable**: Control deslizante para velocidad
4. **Resaltado de Texto**: Resaltar palabra mientras se pronuncia
5. **Subtítulos**: Mostrar texto mientras se pronuncia
6. **Grabación**: Grabar pronunciación del usuario
7. **Comparación**: Comparar pronunciación con referencia
8. **Modo Práctica**: Repetir hasta pronunciar correctamente

## 📦 Commit

**Commit**: `aa40e72` - feat: sistema de voz mejorado con normalización de texto

### Archivos Modificados
1. **`src/lib/speech-synthesis.ts`** (nuevo) - Utilidad centralizada
2. **`src/components/word-of-the-day.tsx`** - Usa nueva utilidad
3. **`src/components/ai/learning-system.tsx`** - Usa nueva utilidad
4. **`src/app/dictionary/dictionary-view-modern.tsx`** - Usa nueva utilidad

## 🎉 Resultado

El sistema de voz ahora:
- ✅ Pronuncia correctamente signos y símbolos
- ✅ Usa voces en español de calidad
- ✅ Maneja errores gracefully
- ✅ Es fácil de usar y mantener
- ✅ Funciona en todos los componentes
- ✅ Ofrece mejor experiencia de usuario

Los usuarios ahora pueden escuchar todo el contenido correctamente, incluyendo signos de exclamación, interrogación y otros símbolos especiales.
