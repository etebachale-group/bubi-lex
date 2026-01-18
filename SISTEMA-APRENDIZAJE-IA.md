# Sistema Avanzado de Aprendizaje con IA

## 🎓 Sistema Completo Implementado

He creado un sistema avanzado de aprendizaje que combina sesiones personalizadas, quiz interactivos y ejemplos contextuales, todo potenciado por IA.

## 🎯 Características Principales

### 1. Menú Principal
- **Entrada de tema personalizado**: El usuario escribe qué quiere aprender
- **Dos modos de aprendizaje**:
  - 📚 Sesión de Aprendizaje
  - 🎯 Quiz Interactivo
- **Indicadores visuales**: Personalizado, Interactivo, Progreso

### 2. Sesión de Aprendizaje

#### Vocabulario
- 5 palabras relacionadas con el tema
- Palabra en Bubi (grande, destacada)
- Traducción al español
- Pronunciación IPA
- Botón de síntesis de voz para cada palabra

#### Ejemplos de Uso
- Oraciones completas en Bubi
- Traducción al español
- Numeración clara
- Síntesis de voz para cada ejemplo

#### Notas Culturales
- Contexto histórico
- Significado cultural
- Información relevante del tema
- Iconos visuales (💡)

### 3. Quiz Interactivo

#### Características
- 5 preguntas por quiz
- Opciones múltiples (4 opciones)
- Barra de progreso visual
- Contador de puntuación en tiempo real
- Explicación detallada para cada respuesta

#### Estados Visuales
- **Sin responder**: Opciones normales
- **Respuesta correcta**: Verde con ✓
- **Respuesta incorrecta**: Rojo con ✗
- **Explicación**: Panel morado con detalles

#### Resultados Finales
- Trofeo visual
- Puntuación final (X/5)
- Mensaje motivacional según rendimiento:
  - 5/5: "¡Perfecto! Dominas este tema"
  - 3-4/5: "¡Muy bien! Sigue practicando"
  - 0-2/5: "Sigue aprendiendo, vas por buen camino"
- Opciones: Volver al menú o Nuevo Quiz

## 🎨 Interfaz de Usuario

### Menú Principal
```
┌─────────────────────────────────────────────┐
│ 🧠 Sistema de Aprendizaje Avanzado         │
│ Aprende Bubi con sesiones personalizadas   │
├─────────────────────────────────────────────┤
│                                             │
│ ¿Qué quieres aprender hoy?                 │
│ [Input: saludos, familia, números...]      │
│                                             │
│ ┌──────────────┐  ┌──────────────┐        │
│ │ 📚 Sesión    │  │ 🎯 Quiz      │        │
│ │ Aprendizaje  │  │ Interactivo  │        │
│ └──────────────┘  └──────────────┘        │
│                                             │
│ ✨ Personalizado  ⚡ Interactivo  🏆 Progreso│
└─────────────────────────────────────────────┘
```

### Sesión de Aprendizaje
```
┌─────────────────────────────────────────────┐
│ 📚 Sesión: Saludos        [Volver al menú] │
├─────────────────────────────────────────────┤
│                                             │
│ ✨ Vocabulario                              │
│ ┌──────────────┐  ┌──────────────┐        │
│ │ BÓTÓ      🔊 │  │ MÓLÓ      🔊 │        │
│ │ Casa         │  │ Agua         │        │
│ │ /bo.to/      │  │ /mo.lo/      │        │
│ └──────────────┘  └──────────────┘        │
│                                             │
│ 📖 Ejemplos de Uso                          │
│ 1️⃣ Bótó lá móló                            │
│    La casa tiene agua                       │
│                                             │
│ ✨ Notas Culturales                         │
│ 💡 El idioma Bubi tiene tonos...           │
│                                             │
│ [Hacer Quiz sobre este tema →]             │
└─────────────────────────────────────────────┘
```

### Quiz Interactivo
```
┌─────────────────────────────────────────────┐
│ 🎯 Quiz: Saludos              [Salir]      │
│ Pregunta 1 de 5        Puntuación: 0/0     │
│ ████████░░░░░░░░░░░░░░░░░░░░░░░░░░ 20%    │
├─────────────────────────────────────────────┤
│                                             │
│ ¿Qué significa "bótó" en español?          │
│                                             │
│ [ ] Casa                                    │
│ [ ] Agua                                    │
│ [ ] Comida                                  │
│ [ ] Árbol                                   │
│                                             │
│ ✨ Explicación                              │
│ "Bótó" significa "casa" en Bubi...         │
│                                             │
│ [Siguiente pregunta →]                      │
└─────────────────────────────────────────────┘
```

## 🔧 Implementación Técnica

### Componente Principal
**Archivo**: `src/components/ai/learning-system.tsx`

#### Estados
```typescript
const [mode, setMode] = useState<'menu' | 'session' | 'quiz'>('menu');
const [topic, setTopic] = useState('');
const [sessionData, setSessionData] = useState<SessionData | null>(null);
const [quizData, setQuizData] = useState<QuizQuestion[]>([]);
const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
const [score, setScore] = useState(0);
```

#### Tipos
```typescript
type SessionData = {
  words: Word[];
  examples: Example[];
  culturalNotes: string[];
};

type QuizQuestion = {
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
};
```

### API Endpoint
**Archivo**: `src/app/api/ai/learning-session/route.ts`

#### Request
```typescript
POST /api/ai/learning-session
Body: {
  topic: string,
  wordCount: number
}
```

#### Response
```typescript
{
  words: [
    { bubi: string, spanish: string, ipa?: string }
  ],
  examples: [
    { bubi: string, spanish: string }
  ],
  culturalNotes: string[]
}
```

### Integración con IA

#### Prompt para Sesión
```
Eres un experto en el idioma Bubi de Guinea Ecuatorial.
Crea una sesión de aprendizaje sobre "{topic}" en Bubi.

Genera exactamente {wordCount} palabras relacionadas con el tema,
con ejemplos de uso y notas culturales.

Responde SOLO con un JSON válido...
```

#### Prompt para Quiz
```
Genera {count} preguntas de opción múltiple sobre "{topic}"
en el idioma Bubi.

Cada pregunta debe tener 4 opciones y una explicación detallada.
```

## 🎨 Estilos y Diseño

### Gradientes
- **Menú**: Purple → Pink → Blue
- **Sesión**: Purple → Pink (vocabulario), Blue (ejemplos), Orange (notas)
- **Quiz**: Blue → Cyan
- **Resultados**: Purple → Pink

### Animaciones
- `animate-fade-in`: Entrada suave
- `animate-fade-in-up`: Entrada desde abajo
- `hover-lift`: Elevación al hover
- Transiciones suaves en todos los estados

### Colores por Sección
- **Vocabulario**: Purple/Pink
- **Ejemplos**: Blue
- **Notas Culturales**: Orange
- **Quiz**: Blue/Cyan
- **Correcto**: Green
- **Incorrecto**: Red
- **Explicación**: Purple

## 🚀 Funcionalidades

### Síntesis de Voz
```typescript
const speakWord = (text: string) => {
  if ('speechSynthesis' in window) {
    const utterance = new SpeechSynthesisUtterance(text);
    utterance.lang = 'es-ES';
    utterance.rate = 0.8;
    window.speechSynthesis.speak(utterance);
  }
};
```

### Sistema de Puntuación
- Contador en tiempo real
- Porcentaje de aciertos
- Mensajes motivacionales
- Trofeo visual al completar

### Navegación
- Menú → Sesión → Quiz
- Botón "Volver al menú" siempre visible
- Transición fluida entre modos
- Estado persistente durante la sesión

## 📊 Flujo de Usuario

```
1. Usuario entra a página de IA
   ↓
2. Ve el Sistema de Aprendizaje Avanzado
   ↓
3. Escribe un tema (ej: "saludos")
   ↓
4a. Click en "Sesión de Aprendizaje"
    ↓
    - Ve vocabulario con pronunciación
    - Lee ejemplos de uso
    - Aprende notas culturales
    ↓
    - Click en "Hacer Quiz"
    
4b. Click en "Quiz Interactivo"
    ↓
    - Responde 5 preguntas
    - Ve explicaciones
    - Obtiene puntuación
    ↓
    - Nuevo Quiz o Volver al menú
```

## 🎯 Fallbacks

### Sin IA Disponible
- Vocabulario de ejemplo (bótó, móló, rìbà)
- Ejemplos genéricos pero útiles
- Notas culturales básicas
- Quiz con preguntas predefinidas

### Ventajas del Fallback
- Siempre funcional
- No bloquea la experiencia
- Contenido educativo de calidad
- Transición transparente

## 📱 Responsive Design

### Móvil
- Botones apilados verticalmente
- Texto adaptado
- Grid de 1 columna para vocabulario
- Padding reducido

### Tablet
- Grid de 2 columnas
- Botones en fila
- Mejor aprovechamiento del espacio

### Desktop
- Grid de 2-3 columnas
- Espaciado amplio
- Animaciones más elaboradas

## 🔍 Características Avanzadas

### 1. Aprendizaje Contextual
- Palabras relacionadas con el tema
- Ejemplos en contexto real
- Notas culturales relevantes

### 2. Interactividad
- Síntesis de voz
- Quiz con feedback inmediato
- Navegación fluida

### 3. Gamificación
- Sistema de puntuación
- Trofeos y logros
- Mensajes motivacionales
- Progreso visual

### 4. Personalización
- Tema elegido por el usuario
- Cantidad de palabras configurable
- Dificultad adaptativa (futuro)

## 📋 Checklist de Funcionalidades

- ✅ Menú principal con entrada de tema
- ✅ Sesión de aprendizaje con vocabulario
- ✅ Pronunciación IPA
- ✅ Síntesis de voz
- ✅ Ejemplos de uso en contexto
- ✅ Notas culturales
- ✅ Quiz interactivo con 5 preguntas
- ✅ Opciones múltiples (4 opciones)
- ✅ Feedback visual inmediato
- ✅ Explicaciones detalladas
- ✅ Sistema de puntuación
- ✅ Barra de progreso
- ✅ Resultados finales con trofeo
- ✅ Fallbacks sin IA
- ✅ Diseño responsive
- ✅ Animaciones suaves
- ✅ Navegación intuitiva

## 🚀 Próximas Mejoras Posibles

1. **Historial de Aprendizaje**: Guardar sesiones completadas
2. **Niveles de Dificultad**: Básico, Intermedio, Avanzado
3. **Modo Práctica**: Repetir palabras difíciles
4. **Estadísticas**: Gráficos de progreso
5. **Logros**: Badges y recompensas
6. **Modo Competitivo**: Comparar con otros usuarios
7. **Flashcards**: Tarjetas de memoria
8. **Dictado**: Escribir lo que escuchas
9. **Conversación**: Diálogos interactivos
10. **Certificados**: Al completar niveles

## 📁 Archivos Creados/Modificados

1. **`src/components/ai/learning-system.tsx`** - Componente principal (nuevo)
2. **`src/app/api/ai/learning-session/route.ts`** - Endpoint de API (nuevo)
3. **`src/app/ai-features/page.tsx`** - Página actualizada

## 💡 Uso

El sistema se integra automáticamente en la página de funcionalidades IA:

```tsx
import LearningSystem from '@/components/ai/learning-system';

<LearningSystem />
```

No requiere props, es completamente autónomo.

## 🎉 Resultado Final

Un sistema completo de aprendizaje que ofrece:
- 📚 Sesiones personalizadas por tema
- 🎯 Quiz interactivos con feedback
- 🗣️ Pronunciación con síntesis de voz
- 📖 Ejemplos contextuales
- 💡 Notas culturales
- 🏆 Sistema de puntuación
- ✨ Potenciado por IA
- 🎨 Diseño moderno y atractivo
- 📱 Completamente responsive

Una experiencia de aprendizaje completa, interactiva y efectiva para dominar el idioma Bubi.
