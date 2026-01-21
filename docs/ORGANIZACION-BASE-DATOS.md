# 📊 Organización de las Palabras en la Base de Datos

## 🗄️ Estructura de la Tabla `dictionary_entries`

### Campos Principales

La tabla `dictionary_entries` tiene **13 columnas** organizadas de la siguiente manera:

```sql
CREATE TABLE dictionary_entries (
  -- Identificación
  id                SERIAL PRIMARY KEY,
  
  -- Palabra en Bubi
  bubi              VARCHAR(255) NOT NULL,
  
  -- Información Gramatical (Estructura Profesional)
  word_type         VARCHAR(50),      -- Tipo gramatical
  gender            VARCHAR(20),      -- Género
  number            VARCHAR(20),      -- Número
  nominal_class     VARCHAR(50),      -- Clase nominal
  plural_form       VARCHAR(255),     -- Forma plural
  
  -- Traducción y Detalles
  spanish           TEXT NOT NULL,    -- Definición en español
  ipa               VARCHAR(255),     -- Pronunciación IPA
  examples          TEXT,             -- Ejemplos de uso
  variants          TEXT,             -- Variantes (Tb.)
  notes             TEXT,             -- Notas adicionales
  
  -- Metadatos
  created_at        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_by        VARCHAR(255),
  updated_at        TIMESTAMP,
  updated_by        VARCHAR(255)
);
```

---

## 📋 Descripción de Cada Campo

### 1. **id** (Identificador Único)
- **Tipo:** Serial/Integer (auto-incremento)
- **Propósito:** Identificador único de cada entrada
- **Ejemplo:** 1, 2, 3, 4...

### 2. **bubi** (Palabra en Bubi)
- **Tipo:** VARCHAR(255)
- **Propósito:** La palabra en idioma Bubi
- **Características:**
  - Preserva acentos (crítico para el idioma)
  - Puede contener apóstrofes
  - Case-sensitive
- **Ejemplos:**
  - `'e` (uña)
  - `abélla` (guías)
  - `aba'o` (caseríos)

### 3. **word_type** (Tipo Gramatical)
- **Tipo:** VARCHAR(50)
- **Propósito:** Categoría gramatical de la palabra
- **Valores posibles:**
  - `s.` - sustantivo (76.5% de las entradas)
  - `v.` - verbo (1.0%)
  - `adj.` - adjetivo (4.9%)
  - `adv.` - adverbio (1.2%)
  - `antrop.` - antropónimo (10.6%)
  - `prep.` - preposición
  - `conj.` - conjunción
  - `interj.` - interjección
  - `pron.` - pronombre
  - `loc.` - locución
  - `morf.` - morfema
  - `topo.` - topónimo
  - `aum.` - aumento
  - `conec.` - conectivo
  - `dem.` - demostrativo

### 4. **gender** (Género)
- **Tipo:** VARCHAR(20)
- **Propósito:** Género gramatical
- **Valores posibles:**
  - `m.` - masculino
  - `f.` - femenino
  - `m/f.` - masculino/femenino
  - `NULL` - no aplica

### 5. **number** (Número)
- **Tipo:** VARCHAR(20)
- **Propósito:** Número gramatical
- **Valores posibles:**
  - `sing.` - singular
  - `pl.` - plural
  - `NULL` - no especificado

### 6. **nominal_class** (Clase Nominal)
- **Tipo:** VARCHAR(50)
- **Propósito:** Clase nominal del sistema Bantú
- **Valores posibles:**
  - `Cl. 1` a `Cl. 16` - clases nominales
  - `NULL` - no aplica
- **Nota:** El Bubi, como lengua bantú, tiene 16 clases nominales que determinan concordancia y prefijos

### 7. **plural_form** (Forma Plural)
- **Tipo:** VARCHAR(255)
- **Propósito:** Forma plural de la palabra (si aplica)
- **Ejemplo:** 
  - Singular: `obio` → Plural: `biobó`

### 8. **spanish** (Definición en Español)
- **Tipo:** TEXT
- **Propósito:** Traducción y definición en español
- **Características:**
  - Puede incluir múltiples significados
  - Información gramatical integrada
  - Ejemplos de uso
  - Referencias cruzadas
- **Ejemplo:**
  ```
  "pl. caseríos, aldeas. barrios, distritos en una ciudad, barriadas. Cl. 6"
  ```

### 9. **ipa** (Pronunciación IPA)
- **Tipo:** VARCHAR(255)
- **Propósito:** Transcripción fonética en Alfabeto Fonético Internacional
- **Estado:** Puede generarse con IA
- **Ejemplo:** `/aˈbe.ʎa/`

### 10. **examples** (Ejemplos de Uso)
- **Tipo:** TEXT
- **Propósito:** Frases de ejemplo que muestran el uso de la palabra
- **Formato:** Múltiples ejemplos separados por `|`
- **Ejemplo:**
  ```
  "n ka óttá'á ba billo | voy a vender sacos de ñames"
  ```

### 11. **variants** (Variantes)
- **Tipo:** TEXT
- **Propósito:** Formas alternativas de escribir la palabra
- **Marcador:** "Tb." (también)
- **Ejemplo:**
  ```
  "abela" (variante de "abélla")
  "o e'iáa" (variante de "'ee")
  ```

### 12. **notes** (Notas)
- **Tipo:** TEXT
- **Propósito:** Información adicional, contexto cultural, etimología
- **Ejemplo:**
  ```
  "Fuente: bubi-español"
  ```

### 13. **Metadatos** (created_at, created_by, updated_at, updated_by)
- **Propósito:** Auditoría y seguimiento de cambios
- **created_at:** Fecha de creación
- **created_by:** Usuario que creó la entrada
- **updated_at:** Fecha de última actualización
- **updated_by:** Usuario que actualizó

---

## 📊 Estadísticas de Organización

### Total de Entradas
- **5,446 palabras** en total

### Distribución por Tipo Gramatical

| Tipo | Cantidad | Porcentaje |
|------|----------|------------|
| Sustantivos (s.) | 4,167 | 76.5% |
| Antropónimos (antrop.) | 578 | 10.6% |
| Adjetivos (adj.) | 267 | 4.9% |
| Adverbios (adv.) | 65 | 1.2% |
| Verbos (v.) | 52 | 1.0% |
| Otros | 317 | 5.8% |

### Campos Poblados

| Campo | Entradas con Datos | Porcentaje |
|-------|-------------------|------------|
| bubi | 5,446 | 100% |
| spanish | 5,446 | 100% |
| word_type | 5,446 | 100% |
| nominal_class | ~3,500 | ~64% |
| gender | ~2,800 | ~51% |
| number | ~4,200 | ~77% |
| variants | ~800 | ~15% |
| examples | ~600 | ~11% |
| ipa | ~50 | ~1% (generado con IA) |

---

## 🔍 Índices y Búsqueda

### Índices Creados

```sql
-- Índice en palabra Bubi
CREATE INDEX idx_dictionary_entries_bubi 
ON dictionary_entries(bubi);

-- Índice en tipo gramatical
CREATE INDEX idx_dictionary_entries_word_type 
ON dictionary_entries(word_type);

-- Índice de texto completo (búsqueda)
CREATE INDEX idx_dictionary_entries_fulltext 
ON dictionary_entries USING GIN(
  to_tsvector('spanish', bubi || ' ' || spanish)
);
```

### Capacidades de Búsqueda

1. **Búsqueda por palabra exacta** (Bubi o Español)
2. **Búsqueda parcial** (contiene texto)
3. **Búsqueda por tipo gramatical**
4. **Búsqueda por clase nominal**
5. **Búsqueda de texto completo** (GIN index)

---

## 📝 Ejemplos de Consultas

### 1. Buscar una palabra en Bubi
```sql
SELECT * FROM dictionary_entries 
WHERE bubi = 'abélla';
```

### 2. Buscar palabras que contengan texto
```sql
SELECT * FROM dictionary_entries 
WHERE bubi ILIKE '%aba%';
```

### 3. Buscar por tipo gramatical
```sql
SELECT * FROM dictionary_entries 
WHERE word_type = 'v.';
```

### 4. Buscar sustantivos de clase 6
```sql
SELECT * FROM dictionary_entries 
WHERE word_type = 's.' 
AND nominal_class = 'Cl. 6';
```

### 5. Buscar palabras con variantes
```sql
SELECT bubi, variants 
FROM dictionary_entries 
WHERE variants IS NOT NULL;
```

### 6. Buscar en español
```sql
SELECT * FROM dictionary_entries 
WHERE spanish ILIKE '%casa%';
```

### 7. Contar palabras por tipo
```sql
SELECT 
  word_type,
  COUNT(*) as total,
  ROUND(COUNT(*) * 100.0 / 5446, 1) as porcentaje
FROM dictionary_entries
GROUP BY word_type
ORDER BY total DESC;
```

### 8. Palabras con múltiples tipos gramaticales
```sql
SELECT 
  bubi,
  COUNT(*) as veces,
  STRING_AGG(word_type, ', ') as tipos
FROM dictionary_entries
GROUP BY bubi
HAVING COUNT(*) > 1
ORDER BY veces DESC;
```

---

## 🎯 Características Especiales

### 1. Duplicados Permitidos
- La misma palabra puede aparecer múltiples veces
- Cada entrada representa un tipo gramatical diferente
- Ejemplo: "aberí" como sustantivo Y como adjetivo

### 2. Acentos Preservados
- Crítico para el idioma Bubi
- Búsqueda case-insensitive pero accent-sensitive
- Ejemplos: `abélla`, `abákeri`, `abállá`

### 3. Clases Nominales
- Sistema Bantú de 16 clases
- Determina concordancia gramatical
- Prefijos específicos por clase

### 4. Información Integrada
- Definición en español incluye contexto
- Puede contener conjugaciones verbales
- Referencias cruzadas a otras palabras

---

## 🔄 Actualización en Tiempo Real

La aplicación usa **Supabase Realtime** para sincronizar cambios:

```typescript
// Escucha cambios en la tabla
supabase
  .channel('dictionary-realtime')
  .on('postgres_changes', 
    { event: 'INSERT', schema: 'public', table: 'dictionary_entries' },
    (payload) => {
      // Agregar nueva palabra
    }
  )
  .on('postgres_changes',
    { event: 'UPDATE', schema: 'public', table: 'dictionary_entries' },
    (payload) => {
      // Actualizar palabra existente
    }
  )
  .subscribe();
```

---

## 📦 Formato de Importación

Las palabras se importan en **4 archivos SQL** divididos:

```
db/import-diccionario-entries-parte-1.sql  (~1,375 entradas)
db/import-diccionario-entries-parte-2.sql  (~1,375 entradas)
db/import-diccionario-entries-parte-3.sql  (~1,375 entradas)
db/import-diccionario-entries-parte-4.sql  (~1,321 entradas)
```

Cada archivo contiene bloques INSERT de 25 palabras:

```sql
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('palabra1', 's.', 'm.', 'sing.', 'Cl. 1', NULL, 'definición...', ...),
  ('palabra2', 'v.', NULL, NULL, NULL, NULL, 'definición...', ...),
  -- ... 23 palabras más
  ('palabra25', 'adj.', 'f.', 'pl.', 'Cl. 6', NULL, 'definición...', ...);
```

---

## 🎨 Visualización en la Aplicación

### Vista de Usuario
```
┌─────────────────────────────────┐
│ abélla                          │ ← Palabra en Bubi (grande, gradiente)
│ /aˈbe.ʎa/                       │ ← IPA (si existe)
│                                 │
│ ┌─────────────────────────────┐ │
│ │ Español                     │ │
│ │ guías, anunciantes          │ │ ← Definición en español
│ └─────────────────────────────┘ │
│                                 │
│ 📝 Tipo: s. (sustantivo)        │ ← Información gramatical
│ 📊 Clase: Cl. 6                 │
│ 🔄 Variante: abela              │
│                                 │
│ ✨ Ver ejemplos con IA          │ ← Link a funciones IA
└─────────────────────────────────┘
```

### Vista de Administrador
- Todos los campos editables
- Historial de cambios
- Generación de IPA con IA
- Gestión de duplicados
- Importación masiva

---

## 🚀 Próximas Mejoras

### Campos Adicionales Propuestos
1. **etymology** - Etimología de la palabra
2. **audio_url** - URL de pronunciación en audio
3. **usage_frequency** - Frecuencia de uso
4. **difficulty_level** - Nivel de dificultad (básico, intermedio, avanzado)
5. **related_words** - Palabras relacionadas
6. **synonyms** - Sinónimos en Bubi
7. **antonyms** - Antónimos en Bubi

### Funcionalidades Futuras
1. Búsqueda por similitud fonética
2. Filtros avanzados por múltiples campos
3. Exportación a diferentes formatos
4. API pública para desarrolladores
5. Integración con diccionarios externos

---

## 📚 Referencias

- **Fuente principal:** Diccionario Bubi-Español (AECID/Ediciones Akal)
- **Sistema de clases:** Sistema nominal Bantú (16 clases)
- **Formato IPA:** Alfabeto Fonético Internacional
- **Base de datos:** PostgreSQL (Supabase)

---

**Última actualización:** 21 de enero de 2026  
**Total de entradas:** 5,446  
**Estado:** ✅ Estructura profesional implementada  
**Versión:** 2.0
