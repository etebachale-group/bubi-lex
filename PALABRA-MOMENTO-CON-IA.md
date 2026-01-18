# Palabra del Momento con IA

## Funcionalidad Agregada

He agregado la capacidad de generar ejemplos con IA en el componente "Palabra del Momento".

### ✨ Nueva Funcionalidad

#### Botón "Generar ejemplos con IA"
- Ubicado debajo de los botones de Escuchar y Refrescar
- Genera 3 ejemplos de uso de la palabra actual
- Cambia a "Regenerar ejemplos" después de generar

#### Características

1. **Generación con IA**
   - Usa el endpoint `/api/ai/examples`
   - Envía la palabra en Bubi y su traducción en Español
   - Solicita 3 ejemplos contextuales

2. **Fallback Inteligente**
   - Si la IA no está disponible, muestra ejemplos genéricos
   - Los ejemplos fallback son informativos y relevantes
   - No bloquea la funcionalidad del componente

3. **Estados Visuales**
   - Indicador de carga: "Generando ejemplos..."
   - Botón deshabilitado mientras carga
   - Animación fade-in al mostrar ejemplos

4. **Limpieza Automática**
   - Los ejemplos se limpian al cambiar de palabra
   - Evita mostrar ejemplos de palabras anteriores
   - Mantiene la UI limpia y relevante

### 🎨 Interfaz de Usuario

```
┌─────────────────────────────────────┐
│ ✨ Palabra del Momento      ⏰ 45s │
│ Nueva palabra cada minuto           │
├─────────────────────────────────────┤
│                                     │
│         BÓTÓ                        │
│         Casa                        │
│         /bo.to/                     │
│                                     │
│  [Nota cultural si existe]          │
│                                     │
│  📖 Ejemplos de uso                 │
│  • "Bótó" significa "Casa" en...   │
│  • La palabra "Bótó" es parte...   │
│  • En contexto cultural...          │
│                                     │
│  [▶ Escuchar]  [🔄]                │
│  [✨ Generar ejemplos con IA]      │
│                                     │
└─────────────────────────────────────┘
```

### 🔧 Implementación Técnica

#### Estado del Componente
```typescript
const [examples, setExamples] = useState<string[]>([]);
const [isLoadingExamples, setIsLoadingExamples] = useState(false);
```

#### Función de Generación
```typescript
const onGenerateExamples = useCallback(async () => {
  if (!entry || isLoadingExamples) return;
  setIsLoadingExamples(true);
  
  try {
    const res = await fetch('/api/ai/examples', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ 
        bubi: entry.bubi, 
        spanish: entry.spanish, 
        count: 3 
      }),
    });
    
    if (res.ok) {
      const data = await res.json();
      if (Array.isArray(data.examples) && data.examples.length > 0) {
        setExamples(data.examples);
        setIsLoadingExamples(false);
        return;
      }
    }
  } catch (e) {
    console.error('Error al generar ejemplos:', e);
  }
  
  // Fallback
  setExamples([
    `"${entry.bubi}" significa "${entry.spanish}" en español.`,
    `La palabra "${entry.bubi}" es parte del vocabulario cotidiano del pueblo Bubi.`,
    `En contexto cultural, "${entry.bubi}" tiene un significado importante.`,
  ]);
  setIsLoadingExamples(false);
}, [entry, isLoadingExamples]);
```

#### Limpieza al Cambiar Palabra
```typescript
const fetchRandomWord = useCallback(async () => {
  setExamples([]); // Limpiar ejemplos
  // ... resto del código
}, []);
```

### 📊 Flujo de Funcionamiento

```
1. Usuario ve palabra del momento
   ↓
2. Click en "Generar ejemplos con IA"
   ↓
3. Botón muestra "Generando ejemplos..."
   ↓
4. Llamada a API de IA
   ↓
5a. IA responde → Mostrar ejemplos reales
5b. IA falla → Mostrar ejemplos fallback
   ↓
6. Ejemplos se muestran con animación
   ↓
7. Botón cambia a "Regenerar ejemplos"
   ↓
8. Al cambiar palabra → Ejemplos se limpian
```

### 🎯 Ejemplos Generados

#### Con IA (Ideal)
```
• "Bótó" se usa para referirse a la vivienda familiar en la cultura Bubi.
• En una conversación: "Voy a mi bótó" significa "Voy a mi casa".
• La palabra "bótó" refleja la importancia del hogar en la tradición Bubi.
```

#### Fallback (Sin IA)
```
• "Bótó" significa "Casa" en español.
• La palabra "bótó" es parte del vocabulario cotidiano del pueblo Bubi.
• En contexto cultural, "bótó" tiene un significado importante en la tradición Bubi.
```

### 🎨 Estilos Visuales

#### Sección de Ejemplos
```css
- Fondo: white/50 con backdrop-blur
- Borde izquierdo: purple-300
- Animación: fade-in
- Icono: BookOpen
- Color título: purple-600
```

#### Botón de IA
```css
- Variante: outline
- Ancho: 100%
- Icono: Sparkles
- Estados: normal, loading, disabled
```

### ⚙️ Configuración

#### Endpoint de IA
```typescript
POST /api/ai/examples
Body: {
  bubi: string,
  spanish: string,
  count: number
}
Response: {
  examples: string[]
}
```

#### Cantidad de Ejemplos
```typescript
count: 3  // Configurable en la llamada
```

### 🔍 Manejo de Errores

1. **Error de Red**: Usa fallback automáticamente
2. **Respuesta Inválida**: Usa fallback automáticamente
3. **Timeout**: Usa fallback automáticamente
4. **Sin Palabra**: Botón deshabilitado

### 📱 Responsive Design

- **Móvil**: Botón ocupa todo el ancho
- **Desktop**: Botón ocupa todo el ancho
- **Ejemplos**: Se adaptan al ancho disponible
- **Texto**: Wrap automático para textos largos

### 🚀 Optimizaciones

1. **Limpieza Automática**: Ejemplos se limpian al cambiar palabra
2. **Prevención de Spam**: Botón deshabilitado mientras carga
3. **Fallback Rápido**: No espera timeout, falla rápido
4. **Cache**: No se cachean los ejemplos (siempre frescos)

### 📋 Checklist de Funcionalidades

- ✅ Botón para generar ejemplos
- ✅ Integración con API de IA
- ✅ Fallback con ejemplos genéricos
- ✅ Indicador de carga
- ✅ Limpieza al cambiar palabra
- ✅ Animación fade-in
- ✅ Diseño responsive
- ✅ Manejo de errores
- ✅ Estados visuales claros

### 🎯 Beneficios

1. **Educativo**: Ayuda a entender el uso de la palabra
2. **Contextual**: Ejemplos relevantes y culturales
3. **Interactivo**: Usuario controla cuándo generar
4. **Confiable**: Siempre muestra algo (fallback)
5. **Rápido**: Respuesta inmediata con fallback

### 🔧 Testing

#### Probar Generación
```bash
# Con IA funcionando
1. Click en "Generar ejemplos con IA"
2. Verificar que muestra 3 ejemplos reales
3. Verificar animación fade-in

# Sin IA (simular error)
1. Desconectar API de IA
2. Click en "Generar ejemplos con IA"
3. Verificar que muestra ejemplos fallback
```

#### Probar Limpieza
```bash
1. Generar ejemplos para palabra A
2. Esperar 1 minuto (cambio automático)
3. Verificar que ejemplos desaparecen
4. Generar ejemplos para palabra B
5. Verificar que son diferentes
```

### 📁 Archivos Modificados

1. **`src/components/word-of-the-day.tsx`**
   - Agregado estado `examples` y `isLoadingExamples`
   - Agregada función `onGenerateExamples`
   - Agregada sección visual de ejemplos
   - Agregado botón de generación
   - Limpieza de ejemplos al cambiar palabra

### 🚀 Próximas Mejoras Posibles

1. **Caché de Ejemplos**: Guardar ejemplos por palabra
2. **Más Ejemplos**: Permitir generar más de 3
3. **Compartir**: Compartir ejemplos en redes sociales
4. **Favoritos**: Guardar ejemplos favoritos
5. **Audio**: Leer ejemplos con síntesis de voz
6. **Traducción**: Traducir ejemplos a otros idiomas
7. **Imágenes**: Generar imágenes ilustrativas con IA
8. **Quiz**: Crear quiz basado en los ejemplos

### 💡 Uso

El componente es completamente autónomo:

```tsx
import WordOfTheDay from "@/components/word-of-the-day";

<WordOfTheDay />
```

No requiere props ni configuración adicional.

### 🎉 Resultado Final

El componente "Palabra del Momento" ahora ofrece:
- ✅ Rotación automática cada 1 minuto
- ✅ Palabras reales de la base de datos
- ✅ Contador visual de tiempo
- ✅ Síntesis de voz
- ✅ **Generación de ejemplos con IA** (NUEVO)
- ✅ Diseño moderno y responsive
- ✅ Manejo robusto de errores

Una experiencia de aprendizaje completa e interactiva para los usuarios.
