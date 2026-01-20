# Mejoras del Sistema de Aprendizaje Avanzado

## Fecha: 20 de enero de 2026

---

## Objetivo

Mejorar el sistema de aprendizaje para que:
1. Empiece desde cero con progreso guardado
2. No repita palabras ya aprendidas
3. Sea más avanzado con niveles y seguimiento
4. Tenga mejor experiencia de usuario

---

## Mejoras a Implementar

### 1. Sistema de Progreso con LocalStorage

**Estructura de datos:**
```typescript
type UserProgress = {
  learnedWords: number[];        // IDs de palabras aprendidas
  completedTopics: string[];     // Temas completados
  totalScore: number;            // Puntuación total acumulada
  quizzesTaken: number;          // Cantidad de quizzes realizados
  level: number;                 // Nivel actual del usuario
};
```

**Constantes:**
```typescript
const WORDS_PER_SESSION = 5;   // Palabras por sesión
const WORDS_PER_LEVEL = 20;    // Palabras para subir de nivel
```

**Funciones:**
```typescript
// Cargar progreso al iniciar
useEffect(() => {
  const savedProgress = localStorage.getItem('bubilex_learning_progress');
  if (savedProgress) {
    setProgress(JSON.parse(savedProgress));
  }
}, []);

// Guardar progreso
const saveProgress = (newProgress: UserProgress) => {
  setProgress(newProgress);
  localStorage.setItem('bubilex_learning_progress', JSON.stringify(newProgress));
};
```

### 2. Obtener Palabras No Aprendidas

**Función:**
```typescript
const getUnlearnedWords = async () => {
  const res = await fetch('/api/dictionary');
  const data = await res.json();
  const allWords = data.entries || [];
  
  // Filtrar palabras ya aprendidas
  const unlearnedWords = allWords.filter((word: any) => 
    !progress.learnedWords.includes(word.id)
  );
  
  return unlearnedWords;
};
```

**Beneficios:**
- ✅ No repite palabras
- ✅ Siempre muestra contenido nuevo
- ✅ Progreso real del usuario

### 3. Sesión de Aprendizaje Mejorada

**Flujo:**
```typescript
const generateLearningSession = async () => {
  // 1. Obtener palabras no aprendidas
  const unlearnedWords = await getUnlearnedWords();
  
  // 2. Verificar si hay palabras disponibles
  if (unlearnedWords.length === 0) {
    alert('¡Felicidades! Has aprendido todas las palabras disponibles.');
    return;
  }
  
  // 3. Seleccionar palabras aleatorias
  const selectedWords = unlearnedWords
    .sort(() => Math.random() - 0.5)
    .slice(0, WORDS_PER_SESSION);
  
  // 4. Generar sesión con IA
  const res = await fetch('/api/ai/learning-session', {
    method: 'POST',
    body: JSON.stringify({ 
      words: selectedWords,
      topic: topic || 'vocabulario básico'
    }),
  });
  
  // 5. Mostrar sesión
  setSessionData(data);
  setMode('session');
};
```

**Características:**
- ✅ Solo palabras nuevas
- ✅ Aleatorización para variedad
- ✅ Límite de palabras por sesión
- ✅ Contexto de IA mejorado

### 4. Completar Sesión

**Función:**
```typescript
const completeSession = () => {
  if (!sessionData) return;
  
  // Agregar palabras aprendidas
  const newLearnedWords = [
    ...progress.learnedWords,
    ...sessionData.words.map(w => w.id)
  ];
  
  // Calcular nuevo nivel
  const newLevel = Math.floor(newLearnedWords.length / WORDS_PER_LEVEL) + 1;
  
  // Guardar progreso
  const newProgress = {
    ...progress,
    learnedWords: newLearnedWords,
    level: newLevel,
  };
  
  saveProgress(newProgress);
  alert(`¡Sesión completada! Has aprendido ${sessionData.words.length} palabras nuevas.`);
};
```

**Botón en la interfaz:**
```tsx
<Button onClick={completeSession} className="w-full">
  <CheckCircle2 className="w-4 h-4 mr-2" />
  Marcar como Completada
</Button>
```

### 5. Quiz con Palabras Aprendidas

**Flujo:**
```typescript
const generateQuiz = async () => {
  // 1. Verificar palabras aprendidas
  if (progress.learnedWords.length < 3) {
    alert('Necesitas aprender al menos 3 palabras antes de hacer un quiz.');
    return;
  }
  
  // 2. Obtener palabras aprendidas
  const res = await fetch('/api/dictionary');
  const allWords = await res.json();
  const learnedWords = allWords.filter(word => 
    progress.learnedWords.includes(word.id)
  );
  
  // 3. Generar quiz con IA
  const quizRes = await fetch('/api/ai/quiz', {
    method: 'POST',
    body: JSON.stringify({ 
      words: learnedWords.slice(0, 10),
      count: 5
    }),
  });
  
  // 4. Mostrar quiz
  setQuizData(data.questions);
  setMode('quiz');
};
```

**Características:**
- ✅ Solo palabras ya aprendidas
- ✅ Refuerza el aprendizaje
- ✅ Progreso medible

### 6. Completar Quiz

**Función:**
```typescript
const completeQuiz = () => {
  const newProgress = {
    ...progress,
    totalScore: progress.totalScore + score,
    quizzesTaken: progress.quizzesTaken + 1,
  };
  
  saveProgress(newProgress);
};
```

**Llamar al completar:**
```typescript
{isQuizComplete && (
  <Button onClick={() => {
    completeQuiz();
    resetToMenu();
  }}>
    Finalizar Quiz
  </Button>
)}
```

### 7. Pantalla de Progreso

**Nueva vista:**
```tsx
{mode === 'progress' && (
  <Card>
    <CardHeader>
      <CardTitle>Tu Progreso</CardTitle>
    </CardHeader>
    <CardContent>
      <div className="space-y-6">
        {/* Nivel */}
        <div className="text-center">
          <Trophy className="w-16 h-16 mx-auto mb-2 text-yellow-600" />
          <div className="text-4xl font-bold">Nivel {progress.level}</div>
          <div className="text-sm text-muted-foreground">
            {progress.learnedWords.length} palabras aprendidas
          </div>
        </div>
        
        {/* Barra de progreso */}
        <div>
          <div className="flex justify-between text-sm mb-2">
            <span>Progreso al siguiente nivel</span>
            <span>{progress.learnedWords.length % WORDS_PER_LEVEL}/{WORDS_PER_LEVEL}</span>
          </div>
          <div className="w-full bg-gray-200 rounded-full h-3">
            <div 
              className="bg-gradient-to-r from-purple-600 to-pink-600 h-3 rounded-full"
              style={{ 
                width: `${((progress.learnedWords.length % WORDS_PER_LEVEL) / WORDS_PER_LEVEL) * 100}%` 
              }}
            />
          </div>
        </div>
        
        {/* Estadísticas */}
        <div className="grid grid-cols-2 gap-4">
          <div className="p-4 bg-blue-50 dark:bg-blue-950/30 rounded-lg text-center">
            <div className="text-2xl font-bold text-blue-600">
              {progress.quizzesTaken}
            </div>
            <div className="text-sm text-muted-foreground">Quizzes</div>
          </div>
          <div className="p-4 bg-green-50 dark:bg-green-950/30 rounded-lg text-center">
            <div className="text-2xl font-bold text-green-600">
              {progress.totalScore}
            </div>
            <div className="text-sm text-muted-foreground">Puntos</div>
          </div>
        </div>
        
        {/* Botón reiniciar */}
        <Button 
          variant="outline" 
          onClick={resetProgress}
          className="w-full"
        >
          Reiniciar Progreso
        </Button>
      </div>
    </CardContent>
  </Card>
)}
```

### 8. Menú Principal Mejorado

**Agregar botón de progreso:**
```tsx
<div className="flex items-center justify-between mb-4">
  <h2>Sistema de Aprendizaje</h2>
  <Button 
    variant="outline" 
    size="sm"
    onClick={() => setMode('progress')}
  >
    <Trophy className="w-4 h-4 mr-2" />
    Ver Progreso
  </Button>
</div>
```

**Mostrar nivel actual:**
```tsx
<div className="p-3 bg-gradient-to-r from-purple-100 to-pink-100 dark:from-purple-900 dark:to-pink-900 rounded-lg">
  <div className="flex items-center justify-between">
    <div>
      <div className="text-sm text-muted-foreground">Tu nivel actual</div>
      <div className="text-2xl font-bold">Nivel {progress.level}</div>
    </div>
    <Trophy className="w-10 h-10 text-yellow-600" />
  </div>
  <div className="mt-2 text-xs text-muted-foreground">
    {progress.learnedWords.length} palabras aprendidas
  </div>
</div>
```

### 9. Reiniciar Progreso

**Función:**
```typescript
const resetProgress = () => {
  if (confirm('¿Estás seguro? Esta acción no se puede deshacer.')) {
    const newProgress = {
      learnedWords: [],
      completedTopics: [],
      totalScore: 0,
      quizzesTaken: 0,
      level: 1,
    };
    saveProgress(newProgress);
    alert('Progreso reiniciado correctamente.');
  }
};
```

---

## Flujo de Usuario Mejorado

### Primera Vez

1. **Usuario abre el sistema**
   - Ve nivel 1, 0 palabras aprendidas
   - Puede empezar una sesión de aprendizaje

2. **Inicia sesión de aprendizaje**
   - Sistema selecciona 5 palabras aleatorias no aprendidas
   - Muestra palabras, ejemplos y notas culturales
   - Usuario estudia el contenido

3. **Completa la sesión**
   - Hace clic en "Marcar como Completada"
   - Sistema guarda las 5 palabras como aprendidas
   - Progreso se actualiza

4. **Hace un quiz**
   - Sistema usa solo las palabras aprendidas
   - Usuario responde preguntas
   - Puntuación se guarda

### Usuario Recurrente

1. **Abre el sistema**
   - Ve su nivel actual y progreso
   - Puede ver estadísticas detalladas

2. **Nueva sesión**
   - Sistema automáticamente excluye palabras aprendidas
   - Siempre muestra contenido nuevo
   - Progreso continúa desde donde quedó

3. **Quiz de repaso**
   - Puede hacer quiz de palabras aprendidas
   - Refuerza el conocimiento
   - Acumula puntos

---

## Beneficios

### Para el Usuario

1. **Progreso real:**
   - Ve su avance claramente
   - Motivación con niveles
   - Estadísticas detalladas

2. **No repetición:**
   - Siempre contenido nuevo
   - Aprendizaje eficiente
   - No pierde tiempo

3. **Gamificación:**
   - Niveles y puntos
   - Sensación de logro
   - Engagement mejorado

### Para el Sistema

1. **Mejor UX:**
   - Experiencia personalizada
   - Contenido relevante
   - Flujo natural

2. **Datos útiles:**
   - Tracking de progreso
   - Métricas de aprendizaje
   - Análisis de uso

3. **Escalabilidad:**
   - Fácil agregar más palabras
   - Sistema adaptable
   - Mantenible

---

## Implementación Técnica

### LocalStorage

**Ventajas:**
- ✅ No requiere backend adicional
- ✅ Funciona offline
- ✅ Rápido y eficiente
- ✅ Privacidad del usuario

**Limitaciones:**
- ⚠️ Solo en el navegador actual
- ⚠️ Se pierde si se limpia el navegador
- ⚠️ No sincroniza entre dispositivos

**Futuras mejoras:**
- [ ] Sincronización con cuenta de usuario
- [ ] Backup en servidor
- [ ] Exportar/importar progreso

### Algoritmo de Selección

**Palabras para sesión:**
```typescript
// 1. Obtener todas las palabras
const allWords = await fetchAllWords();

// 2. Filtrar no aprendidas
const unlearned = allWords.filter(w => 
  !progress.learnedWords.includes(w.id)
);

// 3. Aleatorizar
const shuffled = unlearned.sort(() => Math.random() - 0.5);

// 4. Seleccionar cantidad
const selected = shuffled.slice(0, WORDS_PER_SESSION);
```

**Palabras para quiz:**
```typescript
// 1. Obtener todas las palabras
const allWords = await fetchAllWords();

// 2. Filtrar aprendidas
const learned = allWords.filter(w => 
  progress.learnedWords.includes(w.id)
);

// 3. Aleatorizar
const shuffled = learned.sort(() => Math.random() - 0.5);

// 4. Seleccionar para quiz
const selected = shuffled.slice(0, 10);
```

---

## Testing

### Casos de Prueba

1. **Primera sesión:**
   - ✅ Muestra 5 palabras aleatorias
   - ✅ Al completar, guarda progreso
   - ✅ Nivel se mantiene en 1

2. **Múltiples sesiones:**
   - ✅ No repite palabras
   - ✅ Progreso se acumula
   - ✅ Nivel sube cada 20 palabras

3. **Quiz:**
   - ✅ Solo palabras aprendidas
   - ✅ Mínimo 3 palabras requeridas
   - ✅ Puntuación se guarda

4. **Progreso:**
   - ✅ Se guarda en localStorage
   - ✅ Se carga al iniciar
   - ✅ Se puede reiniciar

5. **Sin palabras:**
   - ✅ Mensaje cuando se aprenden todas
   - ✅ No crashea
   - ✅ Sugiere esperar más contenido

---

## Próximos Pasos

### Corto Plazo
- [ ] Implementar sistema de progreso
- [ ] Agregar pantalla de estadísticas
- [ ] Mejorar algoritmo de selección

### Mediano Plazo
- [ ] Sincronización con cuenta
- [ ] Exportar/importar progreso
- [ ] Logros y badges

### Largo Plazo
- [ ] Modo de repaso espaciado
- [ ] Recomendaciones personalizadas
- [ ] Competencias entre usuarios

---

**Estado:** 📝 DOCUMENTADO (Pendiente de implementación)  
**Prioridad:** Alta  
**Complejidad:** Media  
**Impacto:** Alto (mejora significativa de UX)
