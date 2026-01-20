# Sistema de Gramática Bubi para IA

## Descripción General

El sistema de gramática Bubi es una funcionalidad avanzada que proporciona contexto gramatical estructurado a las funciones de IA del diccionario. Esto permite que la IA genere traducciones, ejemplos y explicaciones más precisas y culturalmente apropiadas, siguiendo las reglas gramaticales reales del idioma Bubi.

## Arquitectura del Sistema

### 1. Base de Datos

El sistema utiliza 3 tablas principales en Supabase:

#### `bubi_grammar`
Almacena reglas gramaticales generales organizadas por categorías.

**Campos:**
- `id`: Identificador único
- `category`: Categoría (verbos, sustantivos, pronombres, etc.)
- `subcategory`: Subcategoría opcional (tiempos, género, número, etc.)
- `title`: Título descriptivo de la regla
- `content`: Explicación detallada de la regla
- `examples`: Ejemplos en formato JSON
- `rules`: Reglas específicas (texto multilínea)
- `notes`: Notas adicionales
- `order_index`: Orden de presentación
- `is_active`: Si la regla está activa
- `created_at`, `updated_at`: Timestamps
- `created_by`, `updated_by`: Auditoría

**Ejemplo de entrada:**
```json
{
  "category": "verbos",
  "subcategory": "tiempos",
  "title": "Presente Simple",
  "content": "El presente simple en Bubi se forma con el verbo en su forma base...",
  "examples": "[{\"bubi\": \"Mɛ́ rí\", \"spanish\": \"Yo como\"}]",
  "rules": "1. El verbo no cambia según la persona\n2. Se puede agregar marcadores temporales",
  "order_index": 1,
  "is_active": true
}
```

#### `bubi_verb_conjugations`
Almacena conjugaciones verbales específicas.

**Campos:**
- `id`: Identificador único
- `verb_infinitive`: Verbo en infinitivo (Bubi)
- `verb_spanish`: Traducción al español
- `tense`: Tiempo verbal (presente, pasado, futuro)
- `person`: Persona gramatical (yo, tú, él, nosotros, etc.)
- `conjugation`: Forma conjugada
- `example`: Ejemplo de uso
- `notes`: Notas adicionales

**Ejemplo:**
```json
{
  "verb_infinitive": "rí",
  "verb_spanish": "comer",
  "tense": "presente",
  "person": "yo",
  "conjugation": "mɛ́ rí",
  "example": "Mɛ́ rí mba (Yo como agua)"
}
```

#### `bubi_grammar_patterns`
Almacena patrones de estructura de oraciones.

**Campos:**
- `id`: Identificador único
- `pattern_type`: Tipo de patrón (estructura_oracion, orden_palabras, etc.)
- `pattern_name`: Nombre descriptivo
- `description`: Descripción del patrón
- `structure`: Estructura del patrón (ej: "Sujeto + Verbo + Objeto")
- `examples`: Ejemplos en formato JSON
- `usage_notes`: Notas de uso
- `is_active`: Si el patrón está activo

**Ejemplo:**
```json
{
  "pattern_type": "estructura_oracion",
  "pattern_name": "Oración Afirmativa Simple",
  "description": "Estructura básica para oraciones afirmativas",
  "structure": "Sujeto + Verbo + Objeto",
  "examples": "[{\"bubi\": \"Mɛ́ rí mba\", \"spanish\": \"Yo como agua\"}]",
  "is_active": true
}
```

### 2. APIs

#### API Pública: `/api/grammar`
Endpoint público para que la IA acceda al contexto gramatical.

**Métodos:**
- `GET`: Obtener toda la gramática

**Parámetros de consulta:**
- `category`: Filtrar por categoría (opcional)
- `format`: `full` (completo) o `compact` (compacto para IA)

**Respuesta (formato compact):**
```json
{
  "grammar": [
    {
      "category": "verbos",
      "title": "Presente Simple",
      "content": "...",
      "rules": "...",
      "examples": "[...]"
    }
  ],
  "conjugations": [
    {
      "verb": "rí",
      "spanish": "comer",
      "tense": "presente",
      "person": "yo",
      "form": "mɛ́ rí",
      "example": "..."
    }
  ],
  "patterns": [
    {
      "type": "estructura_oracion",
      "name": "Oración Afirmativa Simple",
      "structure": "Sujeto + Verbo + Objeto",
      "examples": "[...]"
    }
  ]
}
```

#### API Admin: `/api/admin/grammar`
Endpoints para administración de gramática (requiere autenticación de admin).

**Métodos:**
- `GET`: Listar todas las entradas
- `POST`: Crear nueva entrada

**API Admin Individual: `/api/admin/grammar/id-route?id={id}`**
- `GET`: Obtener entrada específica
- `PUT`: Actualizar entrada
- `DELETE`: Eliminar entrada

### 3. Interfaz de Administración

**Ruta:** `/admin/grammar`

**Características:**
- Lista de todas las entradas de gramática
- Búsqueda en tiempo real
- Filtrado por categoría
- Formulario de creación/edición
- Activar/desactivar entradas
- Ordenamiento personalizado
- Vista previa de ejemplos
- Diseño responsivo

**Componentes:**
- `src/app/admin/grammar/page.tsx`: Página principal
- `src/app/admin/grammar/grammar-management.tsx`: Componente de gestión

### 4. Integración con IA

#### Funciones Modificadas

**`src/lib/ai-features.ts`:**
- `generateContextualExamples()`: Ahora incluye contexto gramatical
- `contextualTranslation()`: Usa reglas gramaticales para traducciones
- `loadGrammarContext()`: Carga y cachea el contexto gramatical
- `formatGrammarContext()`: Formatea el contexto para el prompt de IA

**`src/lib/ai-free-alternatives.ts`:**
- `generateExamplesWithFreeAI()`: Incluye contexto gramatical
- `loadGrammarContextFree()`: Versión para APIs gratuitas
- `formatGrammarContextFree()`: Formato compacto para APIs con límites

#### Sistema de Cache

Para optimizar el rendimiento, el contexto gramatical se cachea en memoria:
- **Duración del cache:** 5 minutos
- **Invalidación:** Automática después de 5 minutos
- **Beneficio:** Reduce llamadas a la base de datos

#### Ejemplo de Prompt con Contexto

```
=== CONTEXTO GRAMATICAL DEL IDIOMA BUBI ===

REGLAS GRAMATICALES:

[verbos] Presente Simple:
El presente simple en Bubi se forma con el verbo en su forma base...
Reglas:
1. El verbo no cambia según la persona
2. Se puede agregar marcadores temporales
Ejemplos: "Mɛ́ rí" = "Yo como"

CONJUGACIONES VERBALES:

rí (comer):
  presente - yo: mɛ́ rí
  presente - tú: wɛ́ rí
  pasado - yo: mɛ́ a-rí

PATRONES GRAMATICALES:

Oración Afirmativa Simple (estructura_oracion):
Estructura: Sujeto + Verbo + Objeto

=== FIN DEL CONTEXTO GRAMATICAL ===

Usando el contexto gramatical del Bubi proporcionado, genera 3 ejemplos...
```

## Flujo de Trabajo

### Para Administradores

1. **Acceder al panel de gramática:**
   - Ir a `/admin/grammar`
   - Requiere permisos de administrador

2. **Agregar nueva regla gramatical:**
   - Clic en "Nueva Entrada"
   - Completar formulario:
     - Categoría (verbos, sustantivos, etc.)
     - Subcategoría (opcional)
     - Título descriptivo
     - Contenido explicativo
     - Reglas (multilínea)
     - Ejemplos en JSON
     - Notas adicionales
   - Guardar

3. **Editar entrada existente:**
   - Clic en botón "Editar" de la entrada
   - Modificar campos necesarios
   - Guardar cambios

4. **Activar/Desactivar entradas:**
   - Usar checkbox "Activo" en el formulario
   - Las entradas inactivas no se envían a la IA

5. **Organizar entradas:**
   - Usar campo "Orden" para controlar la secuencia
   - Números más bajos aparecen primero

### Para la IA

1. **Carga automática del contexto:**
   - Al llamar funciones de IA, se carga automáticamente el contexto
   - El contexto se cachea para optimizar rendimiento

2. **Uso del contexto:**
   - La IA recibe las reglas gramaticales en el prompt
   - Genera respuestas siguiendo las reglas proporcionadas
   - Mejora la precisión de traducciones y ejemplos

## Seguridad

### Row Level Security (RLS)

**Lectura pública:**
- Cualquiera puede leer entradas activas
- Solo entradas con `is_active = true` son visibles públicamente

**Escritura restringida:**
- Solo usuarios autenticados con rol de admin pueden:
  - Crear nuevas entradas
  - Actualizar entradas existentes
  - Eliminar entradas

### Auditoría

Todas las operaciones de escritura se registran en el sistema de audit logs:
- `grammar.create`: Creación de entrada
- `grammar.update`: Actualización de entrada
- `grammar.delete`: Eliminación de entrada

Cada registro incluye:
- Email del administrador
- Timestamp
- ID de la entrada afectada
- Metadata (título, categoría)

## Datos Iniciales

El sistema incluye datos de ejemplo al instalarse:

**5 entradas de gramática:**
1. Presente Simple (verbos)
2. Pasado (verbos)
3. Género en Sustantivos
4. Pronombres Personales
5. Orden de Palabras

**6 conjugaciones verbales:**
- Verbo "rí" (comer) en presente y pasado
- Personas: yo, tú, él/ella

**3 patrones gramaticales:**
1. Oración Afirmativa Simple
2. Oración Negativa
3. Pregunta Simple

## Instalación

### 1. Ejecutar Script SQL

```bash
# Aplicar el schema
psql -h [host] -U [user] -d [database] -f db/add-grammar-system.sql
```

O desde Supabase Dashboard:
- SQL Editor → New Query
- Copiar contenido de `db/add-grammar-system.sql`
- Run

### 2. Verificar Instalación

```sql
-- Verificar tablas creadas
SELECT COUNT(*) FROM bubi_grammar;
SELECT COUNT(*) FROM bubi_verb_conjugations;
SELECT COUNT(*) FROM bubi_grammar_patterns;
```

Deberías ver:
- 5 entradas en `bubi_grammar`
- 6 entradas en `bubi_verb_conjugations`
- 3 entradas en `bubi_grammar_patterns`

### 3. Acceder a la Interfaz

1. Iniciar sesión como administrador
2. Ir a `/admin`
3. Clic en "Gramática Bubi"
4. Verificar que aparecen las entradas iniciales

## Uso de la API

### Obtener gramática completa

```javascript
const response = await fetch('/api/grammar?format=full');
const data = await response.json();
console.log(data.grammar); // Reglas gramaticales
console.log(data.conjugations); // Conjugaciones
console.log(data.patterns); // Patrones
```

### Obtener gramática compacta (para IA)

```javascript
const response = await fetch('/api/grammar?format=compact');
const data = await response.json();
// Formato optimizado para prompts de IA
```

### Filtrar por categoría

```javascript
const response = await fetch('/api/grammar?category=verbos');
const data = await response.json();
// Solo reglas de verbos
```

## Mejores Prácticas

### Para Administradores

1. **Organización:**
   - Usar categorías consistentes
   - Mantener subcategorías claras
   - Numerar el orden lógicamente

2. **Contenido:**
   - Escribir explicaciones claras y concisas
   - Incluir ejemplos relevantes
   - Documentar excepciones en notas

3. **Ejemplos JSON:**
   - Usar formato válido
   - Incluir contexto cuando sea útil
   - Mantener ejemplos cortos y claros

4. **Mantenimiento:**
   - Revisar y actualizar regularmente
   - Desactivar entradas obsoletas (no eliminar)
   - Documentar cambios importantes

### Para Desarrolladores

1. **Cache:**
   - El contexto se cachea 5 minutos
   - No hacer llamadas excesivas
   - Confiar en el sistema de cache

2. **Formato:**
   - Usar `format=compact` para IA
   - Usar `format=full` para interfaces
   - Filtrar por categoría cuando sea posible

3. **Errores:**
   - Manejar fallos de carga gracefully
   - Tener fallbacks sin contexto gramatical
   - Loggear errores para debugging

## Beneficios del Sistema

### Para la IA

1. **Precisión mejorada:**
   - Traducciones más exactas
   - Ejemplos gramaticalmente correctos
   - Conjugaciones apropiadas

2. **Consistencia:**
   - Respuestas coherentes
   - Uso correcto de estructuras
   - Respeto a las reglas del idioma

3. **Contexto cultural:**
   - Ejemplos culturalmente apropiados
   - Uso idiomático correcto
   - Respeto a las convenciones

### Para los Usuarios

1. **Aprendizaje efectivo:**
   - Ejemplos correctos
   - Explicaciones precisas
   - Patrones claros

2. **Confianza:**
   - Información verificada
   - Respuestas consistentes
   - Calidad garantizada

## Futuras Mejoras

### Corto Plazo

- [ ] Importación masiva desde CSV/JSON
- [ ] Exportación de gramática completa
- [ ] Búsqueda avanzada con filtros múltiples
- [ ] Versionado de entradas

### Mediano Plazo

- [ ] Sistema de revisión por pares
- [ ] Comentarios y discusiones en entradas
- [ ] Integración con diccionario (vincular palabras)
- [ ] Sugerencias automáticas de gramática

### Largo Plazo

- [ ] IA que aprende de correcciones
- [ ] Generación automática de ejercicios
- [ ] Sistema de validación gramatical
- [ ] API pública para terceros

## Soporte y Contacto

Para preguntas o problemas con el sistema de gramática:
- Revisar logs de auditoría en `/admin/audit`
- Verificar estado de las tablas en Supabase
- Consultar documentación de IA en `docs/`

---

**Última actualización:** 20 de enero de 2026
**Versión del sistema:** 1.0.0
