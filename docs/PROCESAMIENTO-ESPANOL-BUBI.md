# 📚 Procesamiento del Diccionario Español-Bubi

## ✅ Proceso Completado

Se ha procesado exitosamente el archivo `de español a bubi.txt` y se ha organizado según la estructura de la base de datos.

---

## 📊 Resultados

### Estadísticas Generales

| Métrica | Cantidad |
|---------|----------|
| **Total de entradas procesadas** | 3,937 |
| **Entradas válidas** (con palabra Bubi) | 3,483 |
| **Entradas sin palabra Bubi** | 454 |
| **Tasa de éxito** | 88.5% |

---

## 📈 Distribución por Tipo Gramatical

| Tipo | Cantidad | Porcentaje |
|------|----------|------------|
| **s.** (sustantivo) | 1,644 | 47.2% |
| **v.** (verbo) | 771 | 22.1% |
| **S.** (sustantivo mayúscula) | 648 | 18.6% |
| **V.** (verbo mayúscula) | 183 | 5.3% |
| **adj.** (adjetivo) | 183 | 5.3% |
| **adv.** (adverbio) | 51 | 1.5% |
| **adJ.** (adjetivo variante) | 3 | 0.1% |

### Nota sobre Mayúsculas
El archivo original tiene inconsistencias con mayúsculas/minúsculas en los tipos gramaticales. Se recomienda normalizar a minúsculas.

---

## 👥 Distribución por Género

| Género | Cantidad | Porcentaje |
|--------|----------|------------|
| **Sin género** | 1,891 | 54.3% |
| **m.** (masculino) | 1,473 | 42.3% |
| **f.** (femenino) | 119 | 3.4% |

---

## 🏷️ Distribución por Clase Nominal

| Clase | Cantidad | Porcentaje |
|-------|----------|------------|
| **Sin clase** | 1,226 | 35.2% |
| **Cl. 7** | 574 | 16.5% |
| **Cl. 3** | 465 | 13.4% |
| **Cl. 5** | 337 | 9.7% |
| **Cl. 9** | 306 | 8.8% |
| **Cl. 1** | 295 | 8.5% |
| **Cl. 12** | 163 | 4.7% |
| **Cl. 11** | 46 | 1.3% |
| **Cl. 6** | 20 | 0.6% |
| **Cl. 13** | 19 | 0.5% |

---

## 📁 Archivos Generados

### 1. JSON Organizado
**Ubicación:** `palabras/espanol-bubi-organizado.json`

**Estructura:**
```json
[
  {
    "spanish_word": "abacería",
    "bubi": "sáppi",
    "word_type": "s.",
    "gender": "f.",
    "nominal_class": "Cl. 12",
    "spanish": "abacería, s. f sáppi) , la - e sáppo; -s tuáppo...",
    "notes": "Fuente: Diccionario Español-Bubi"
  },
  ...
]
```

**Características:**
- ✅ Ordenado alfabéticamente por palabra en español
- ✅ 3,483 entradas válidas
- ✅ Formato JSON estándar
- ✅ Listo para importar o procesar

### 2. Script SQL de Importación
**Ubicación:** `db/import-espanol-bubi.sql`

**Características:**
- ✅ Dividido en lotes de 25 entradas
- ✅ Formato compatible con PostgreSQL/Supabase
- ✅ Transacción completa (BEGIN...COMMIT)
- ✅ Listo para ejecutar

**Estructura:**
```sql
BEGIN;

-- Lote 1 (entradas 1 a 25)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, nominal_class,
  spanish, notes, created_by
) VALUES
  ('sáppi', 's.', 'f.', 'Cl. 12', 'abacería: ...', 'Fuente: Diccionario Español-Bubi', 'import-espanol-bubi'),
  ...
  ('palabra25', 's.', 'm.', 'Cl. 3', 'definición...', 'Fuente: Diccionario Español-Bubi', 'import-espanol-bubi');

-- Lote 2 (entradas 26 a 50)
...

COMMIT;
```

---

## 🔍 Ejemplos de Entradas Procesadas

### 1. Sustantivo con Género y Clase
```json
{
  "spanish_word": "abacería",
  "bubi": "sáppi",
  "word_type": "s.",
  "gender": "f.",
  "nominal_class": "Cl. 12",
  "spanish": "abacería, s. f sáppi) , la - e sáppo; -s tuáppo (el. 13)...",
  "notes": "Fuente: Diccionario Español-Bubi"
}
```

### 2. Verbo sin Género
```json
{
  "spanish_word": "abandonar",
  "bubi": "tyí'a",
  "word_type": "v.",
  "gender": null,
  "nominal_class": null,
  "spanish": "abandonar, v. inf o tyí'a, o sOlla; preso yo abandono...",
  "notes": "Fuente: Diccionario Español-Bubi"
}
```

### 3. Adverbio Simple
```json
{
  "spanish_word": "abajo",
  "bubi": "onno",
  "word_type": "adv.",
  "gender": null,
  "nominal_class": null,
  "spanish": "abajo, adv. onno, oke, onnotyé; voy hacia - n la hella onno...",
  "notes": "Fuente: Diccionario Español-Bubi"
}
```

---

## 🛠️ Script de Procesamiento

**Ubicación:** `scripts/parse-espanol-bubi.js`

### Funcionalidades

1. **Extracción de Tipo Gramatical**
   - Detecta: s., v., adj., adv., prep., conj., interj., pron.
   - Maneja variaciones de mayúsculas/minúsculas

2. **Extracción de Género**
   - Detecta: m., f.
   - Solo para sustantivos

3. **Extracción de Clase Nominal**
   - Detecta: (el. 1) a (el. 16)
   - Convierte a formato: Cl. 1 a Cl. 16

4. **Extracción de Palabra en Bubi**
   - Busca la primera palabra después del tipo gramatical
   - Preserva acentos y apóstrofes

5. **Limpieza de Definición**
   - Remueve información gramatical redundante
   - Remueve pronunciación entre corchetes
   - Limpia espacios múltiples

### Cómo Ejecutar

```bash
node scripts/parse-espanol-bubi.js
```

---

## ⚠️ Problemas Identificados

### 1. Entradas sin Palabra Bubi (454 entradas)
**Causa:** Formato inconsistente en el archivo original

**Ejemplos:**
- Entradas que solo tienen definición
- Entradas con formato no estándar
- Líneas de continuación mal detectadas

**Solución:** Revisar manualmente las 454 entradas no procesadas

### 2. Inconsistencia en Mayúsculas
**Problema:** Tipos gramaticales con mayúsculas (S., V., adJ.)

**Impacto:** 
- s. (1,644) vs S. (648)
- v. (771) vs V. (183)

**Solución Recomendada:** Normalizar todo a minúsculas

### 3. Definiciones Largas
**Problema:** Algunas definiciones incluyen conjugaciones completas

**Ejemplo:**
```
"abandonar, v. inf o tyí'a, o sOlla; preso yo abandono n la tyí'a, 
tú abandonas o la tyí'a, él abandona a la tyí'a, etc., paso punto 
yo abandoné n tyí'i, tú abandonaste o tyí'i..."
```

**Impacto:** Campo `spanish` puede ser muy largo

**Solución:** Considerar separar conjugaciones en campo `examples`

---

## 🔄 Comparación con Diccionario Bubi-Español

| Aspecto | Bubi-Español | Español-Bubi |
|---------|--------------|--------------|
| **Total de entradas** | 5,446 | 3,483 |
| **Sustantivos** | 76.5% | 47.2% |
| **Verbos** | 1.0% | 22.1% |
| **Adjetivos** | 4.9% | 5.3% |
| **Estructura** | Profesional | Necesita limpieza |
| **Calidad** | Alta | Media |

### Observaciones

1. **Español-Bubi tiene más verbos** (22.1% vs 1.0%)
   - Incluye conjugaciones completas
   - Más enfocado en uso práctico

2. **Bubi-Español tiene más sustantivos** (76.5% vs 47.2%)
   - Más completo en vocabulario
   - Incluye antropónimos y topónimos

3. **Español-Bubi necesita normalización**
   - Inconsistencias en formato
   - Definiciones muy largas
   - Mayúsculas/minúsculas mezcladas

---

## 📋 Próximos Pasos

### 1. Normalización (Recomendado)
```javascript
// Normalizar tipos gramaticales a minúsculas
entries.forEach(entry => {
  if (entry.word_type) {
    entry.word_type = entry.word_type.toLowerCase();
  }
});
```

### 2. Separar Conjugaciones
```javascript
// Extraer conjugaciones a campo examples
function extractConjugations(spanish) {
  const conjMatch = spanish.match(/preso yo .+?etc\./);
  if (conjMatch) {
    return {
      spanish: spanish.replace(conjMatch[0], '').trim(),
      examples: conjMatch[0]
    };
  }
  return { spanish, examples: null };
}
```

### 3. Revisar Entradas sin Bubi
- Revisar manualmente las 454 entradas
- Corregir formato en archivo original
- Re-procesar

### 4. Combinar con Bubi-Español
- Crear tabla unificada
- Evitar duplicados
- Mantener ambas direcciones de búsqueda

---

## 🚀 Importación a Base de Datos

### Opción 1: Importar Directamente
```bash
# En Supabase SQL Editor
# Ejecutar: db/import-espanol-bubi.sql
```

### Opción 2: Revisar y Normalizar Primero
```bash
# 1. Normalizar tipos gramaticales
node scripts/normalize-espanol-bubi.js

# 2. Separar conjugaciones
node scripts/extract-conjugations.js

# 3. Generar nuevo SQL
node scripts/generate-sql-espanol-bubi.js

# 4. Importar
# Ejecutar SQL generado en Supabase
```

---

## 📊 Impacto en la Aplicación

### Búsqueda Bidireccional
Con ambos diccionarios importados:
- ✅ Bubi → Español: 5,446 entradas
- ✅ Español → Bubi: 3,483 entradas
- ✅ **Total combinado: ~9,000 entradas**

### Funcionalidades Mejoradas
1. **Búsqueda en ambas direcciones**
2. **Más verbos disponibles** (conjugaciones)
3. **Ejemplos de uso práctico**
4. **Cobertura más completa**

---

## ✅ Checklist de Verificación

- [x] Archivo procesado exitosamente
- [x] JSON generado y ordenado
- [x] SQL generado en lotes
- [x] Estadísticas calculadas
- [x] Documentación creada
- [ ] Normalizar tipos gramaticales
- [ ] Separar conjugaciones
- [ ] Revisar entradas sin Bubi
- [ ] Importar a base de datos
- [ ] Verificar en aplicación

---

## 📝 Notas Finales

### Calidad de Datos
- **Alta:** Estructura básica bien extraída
- **Media:** Necesita normalización
- **Baja:** 454 entradas sin procesar

### Recomendaciones
1. Normalizar antes de importar
2. Revisar entradas problemáticas
3. Considerar combinar con Bubi-Español
4. Mantener ambos archivos originales

---

**Fecha de procesamiento:** 21 de enero de 2026  
**Script utilizado:** `scripts/parse-espanol-bubi.js`  
**Entradas procesadas:** 3,483 / 3,937 (88.5%)  
**Estado:** ✅ Procesado, pendiente normalización  
**Versión:** 1.0
