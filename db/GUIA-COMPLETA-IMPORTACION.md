# 📚 Guía Completa - Importación del Diccionario Bubi

**Versión:** 1.0  
**Fecha:** 20 de enero de 2026  
**Total de entradas:** 5,446

---

## 📋 Tabla de Contenidos

1. [Inicio Rápido](#inicio-rápido)
2. [Requisitos Previos](#requisitos-previos)
3. [Proceso de Importación](#proceso-de-importación)
4. [Solución de Problemas](#solución-de-problemas)
5. [Verificación](#verificación)
6. [Preguntas Frecuentes](#preguntas-frecuentes)

---

## 🚀 Inicio Rápido

### Archivos Necesarios

En la carpeta `db/` encontrarás:

1. **`ELIMINAR-CONSTRAINT-FORZADO.sql`** ⭐ (ejecutar primero)
2. **`import-diccionario-entries-parte-1.sql`** (parte 1/4)
3. **`import-diccionario-entries-parte-2.sql`** (parte 2/4)
4. **`import-diccionario-entries-parte-3.sql`** (parte 3/4)
5. **`import-diccionario-entries-parte-4.sql`** (parte 4/4)

### Proceso en 5 Pasos

```
1. Abrir Supabase SQL Editor
2. Ejecutar ELIMINAR-CONSTRAINT-FORZADO.sql
3. Ejecutar import-diccionario-entries-parte-1.sql
4. Ejecutar import-diccionario-entries-parte-2.sql
5. Ejecutar import-diccionario-entries-parte-3.sql
6. Ejecutar import-diccionario-entries-parte-4.sql
```

**Tiempo total:** 2-4 minutos  
**Resultado:** 5,446 entradas profesionales

---

## ✅ Requisitos Previos

### Base de Datos

- ✅ Supabase configurado
- ✅ Tabla `dictionary_entries` existente
- ✅ Acceso a SQL Editor

### Estructura de la Tabla

La tabla `dictionary_entries` debe tener estas columnas:

```sql
- id (SERIAL PRIMARY KEY)
- bubi (VARCHAR 255)
- spanish (TEXT)
- word_type (VARCHAR 50)
- gender (VARCHAR 20)
- number (VARCHAR 20)
- nominal_class (VARCHAR 50)
- plural_form (VARCHAR 255)
- ipa (VARCHAR 255)
- examples (TEXT)
- variants (TEXT)
- notes (TEXT)
- created_at (TIMESTAMP)
- created_by (VARCHAR 255)
```

Si no tienes esta estructura, ejecuta primero los schemas en `db/schema.sql`.

---

## 📥 Proceso de Importación

### Paso 1: Limpiar y Preparar (OBLIGATORIO)

**Archivo:** `db/ELIMINAR-CONSTRAINT-FORZADO.sql`

**Qué hace:**
- Elimina constraint `unique_bubi_lower` (causa errores)
- Elimina TODOS los constraints únicos en columna `bubi`
- Limpia la tabla `dictionary_entries` (TRUNCATE)
- Reinicia contador de IDs
- Verifica que está lista para importar

**Cómo ejecutar:**
1. Abre Supabase → SQL Editor
2. Copia TODO el contenido de `ELIMINAR-CONSTRAINT-FORZADO.sql`
3. Pega en el editor
4. Haz clic en **Run**

**Resultado esperado:**
```
✅ Intentado eliminar: unique_bubi_lower
✅ Tabla dictionary_entries limpiada completamente
===========================================
VERIFICACIÓN FINAL
===========================================
Constraints únicos: 0
Índices únicos: 0
Registros en tabla: 0
✅✅✅ PERFECTO - Lista para importar
```

⚠️ **IMPORTANTE:** Si no ves este mensaje, NO continúes. Consulta la sección de [Solución de Problemas](#solución-de-problemas).

**NOTA:** Los archivos de importación han sido corregidos para tener espacios correctos después de las abreviaturas (adj., s., pl., Cl., etc.) y todas las abreviaturas están estandarizadas (Cl. en lugar de CI. o el., pl. en lugar de pI. o PI.).

---

### Paso 2: Importar Parte 1

**Archivo:** `db/import-diccionario-entries-parte-1.sql`

**Contenido:** Bloques 1-55 (~1,375 entradas)

**Cómo ejecutar:**
1. En el mismo SQL Editor
2. **Borra** el contenido anterior
3. Copia TODO el contenido de `import-diccionario-entries-parte-1.sql`
4. Pega y haz clic en **Run**
5. Espera 30-60 segundos

**Resultado esperado:**
```
===========================================
PARTE 1 DE 4 COMPLETADA
===========================================
Total acumulado: ~1375 entradas
Continúa con: import-diccionario-entries-parte-2.sql
```

---

### Paso 3: Importar Parte 2

**Archivo:** `db/import-diccionario-entries-parte-2.sql`

**Contenido:** Bloques 56-110 (~1,375 entradas)

**Cómo ejecutar:**
1. **Borra** el contenido anterior
2. Copia TODO el contenido de `import-diccionario-entries-parte-2.sql`
3. Pega y haz clic en **Run**
4. Espera 30-60 segundos

**Resultado esperado:**
```
===========================================
PARTE 2 DE 4 COMPLETADA
===========================================
Total acumulado: ~2750 entradas
Continúa con: import-diccionario-entries-parte-3.sql
```

---

### Paso 4: Importar Parte 3

**Archivo:** `db/import-diccionario-entries-parte-3.sql`

**Contenido:** Bloques 111-165 (~1,375 entradas)

**Cómo ejecutar:**
1. **Borra** el contenido anterior
2. Copia TODO el contenido de `import-diccionario-entries-parte-3.sql`
3. Pega y haz clic en **Run**
4. Espera 30-60 segundos

**Resultado esperado:**
```
===========================================
PARTE 3 DE 4 COMPLETADA
===========================================
Total acumulado: ~4125 entradas
Continúa con: import-diccionario-entries-parte-4.sql
```

---

### Paso 5: Importar Parte 4 (Final)

**Archivo:** `db/import-diccionario-entries-parte-4.sql`

**Contenido:** Bloques 166-218 (~1,321 entradas)

**Cómo ejecutar:**
1. **Borra** el contenido anterior
2. Copia TODO el contenido de `import-diccionario-entries-parte-4.sql`
3. Pega y haz clic en **Run**
4. Espera 30-60 segundos

**Resultado esperado:**
```
===========================================
PARTE 4 DE 4 COMPLETADA
===========================================
Total acumulado: 5446 entradas
✅ IMPORTACIÓN COMPLETA - 5446 entradas
```

🎉 **¡Felicidades!** Has importado exitosamente el diccionario completo.

---

## 🔍 Verificación

Después de completar la importación, ejecuta estos comandos para verificar:

### 1. Verificar Total de Entradas

```sql
SELECT COUNT(*) as total FROM dictionary_entries;
```

**Esperado:** 5446

---

### 2. Verificar Estructura Profesional

```sql
SELECT 
  COUNT(*) as total,
  COUNT(word_type) as con_tipo,
  COUNT(gender) as con_genero,
  COUNT(nominal_class) as con_clase
FROM dictionary_entries;
```

**Esperado:**
- total: 5446
- con_tipo: 5446
- con_genero: > 0
- con_clase: > 0

---

### 3. Ver Distribución por Tipo Gramatical

```sql
SELECT 
  word_type,
  COUNT(*) as total,
  ROUND(COUNT(*) * 100.0 / 5446, 1) as porcentaje
FROM dictionary_entries
WHERE word_type IS NOT NULL
GROUP BY word_type
ORDER BY total DESC;
```

**Esperado:**
```
word_type | total | porcentaje
----------|-------|------------
s.        | 4167  | 76.5%
antrop.   |  578  | 10.6%
adj.      |  267  |  4.9%
adv.      |   65  |  1.2%
v.        |   52  |  1.0%
```

---

### 4. Ver Primeras 10 Palabras

```sql
SELECT 
  id,
  bubi,
  word_type,
  gender,
  spanish
FROM dictionary_entries
ORDER BY id
LIMIT 10;
```

---

### 5. Verificar Acentos Preservados

```sql
SELECT bubi, spanish
FROM dictionary_entries
WHERE bubi ~ '[áéíóúñ]'
LIMIT 10;
```

Debe mostrar palabras con acentos correctos.

---

### 6. Buscar Palabras con Múltiples Tipos

```sql
SELECT 
  bubi,
  COUNT(*) as veces,
  STRING_AGG(word_type, ', ') as tipos
FROM dictionary_entries
GROUP BY bubi
HAVING COUNT(*) > 1
ORDER BY veces DESC
LIMIT 10;
```

Esto es **normal** - misma palabra puede ser sustantivo, verbo, adjetivo, etc.

---

## 🆘 Solución de Problemas

### Error: "duplicate key value violates unique constraint"

**Causa:** El constraint `unique_bubi_lower` no se eliminó correctamente.

**Solución:**

1. Verifica que ejecutaste `ELIMINAR-CONSTRAINT-FORZADO.sql` completo
2. Verifica que la tabla está vacía:
   ```sql
   SELECT COUNT(*) FROM dictionary_entries;
   -- Debe mostrar: 0
   ```
3. Verifica que no hay constraints únicos:
   ```sql
   SELECT conname 
   FROM pg_constraint 
   WHERE conrelid = 'dictionary_entries'::regclass 
   AND conname LIKE '%unique%';
   -- No debe mostrar unique_bubi_lower
   ```

**Si persiste:**

Ejecuta esto para recrear la tabla:

```sql
DROP TABLE dictionary_entries CASCADE;

CREATE TABLE dictionary_entries (
  id SERIAL PRIMARY KEY,
  bubi VARCHAR(255) NOT NULL,
  spanish TEXT NOT NULL,
  word_type VARCHAR(50),
  gender VARCHAR(20),
  number VARCHAR(20),
  nominal_class VARCHAR(50),
  plural_form VARCHAR(255),
  ipa VARCHAR(255),
  examples TEXT,
  variants TEXT,
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(255)
);

CREATE INDEX idx_dictionary_entries_bubi ON dictionary_entries(bubi);
CREATE INDEX idx_dictionary_entries_word_type ON dictionary_entries(word_type);
```

Luego ejecuta de nuevo desde el Paso 1.

---

### Error: "Query is too large"

**Causa:** Intentaste ejecutar el archivo completo sin dividir.

**Solución:** Usa los archivos divididos en 4 partes (parte-1, parte-2, parte-3, parte-4).

---

### Error: "column does not exist"

**Causa:** La tabla no tiene la estructura profesional.

**Solución:** Ejecuta primero `db/schema.sql` o crea la tabla con la estructura correcta (ver arriba).

---

### "Palabra del Día" muestra palabras antiguas

**Causa:** Caché del navegador.

**Solución:**
1. Presiona **Ctrl + Shift + R** (Windows) o **Cmd + Shift + R** (Mac)
2. Espera 60 segundos para que cambie automáticamente
3. Haz clic en el botón de refrescar del componente

---

## ❓ Preguntas Frecuentes

### ¿Por qué está dividido en 4 partes?

Supabase SQL Editor tiene un límite de tamaño para queries. El archivo completo (6,838 líneas) es demasiado grande, por eso se dividió en 4 partes manejables.

---

### ¿Puedo ejecutar las partes en diferente orden?

**NO.** Debes ejecutar en orden (1, 2, 3, 4) porque los IDs son secuenciales.

---

### ¿Qué pasa si se interrumpe en medio de una parte?

Cada parte es una transacción completa (BEGIN...COMMIT). Si se interrumpe:
- Los datos de esa parte NO se guardan
- Puedes ejecutar esa parte de nuevo
- Las partes anteriores ya están guardadas

---

### ¿Por qué hay palabras "duplicadas"?

No son duplicados, son palabras con diferentes tipos gramaticales. Por ejemplo:
- "aberí" como sustantivo (madre)
- "aberí" como adjetivo (maternal)

Esto es correcto en un diccionario profesional.

---

### ¿Puedo agregar más palabras después?

Sí. Usa el panel de administración o ejecuta:

```sql
INSERT INTO dictionary_entries (
  bubi, word_type, spanish, created_by
) VALUES (
  'nueva_palabra', 's.', 'definición', 'admin'
);
```

---

### ¿Cómo actualizo una palabra existente?

```sql
UPDATE dictionary_entries
SET spanish = 'nueva definición',
    updated_at = CURRENT_TIMESTAMP
WHERE bubi = 'palabra' AND word_type = 's.';
```

---

### ¿Cómo elimino una palabra?

```sql
DELETE FROM dictionary_entries
WHERE id = 123;
```

O desde el panel de administración.

---

## 📊 Estructura de Datos

Cada entrada tiene:

### Campos Principales
- `id` - ID único
- `bubi` - Palabra en Bubi
- `spanish` - Definición en español

### Campos Profesionales
- `word_type` - Tipo gramatical (s., v., adj., etc.)
- `gender` - Género (m., f., m/f)
- `number` - Número (sing., pl.)
- `nominal_class` - Clase nominal (Cl. 1-16)
- `plural_form` - Forma plural
- `ipa` - Pronunciación IPA
- `examples` - Ejemplos de uso
- `variants` - Variantes (Tb.)
- `notes` - Notas adicionales

### Metadatos
- `created_at` - Fecha de creación
- `created_by` - Usuario que creó
- `updated_at` - Fecha de actualización

---

## ✅ Checklist Final

Antes de dar por terminado:

- [ ] Ejecutaste `ELIMINAR-CONSTRAINT-FORZADO.sql`
- [ ] Importaste las 4 partes en orden
- [ ] Verificaste que hay 5,446 entradas
- [ ] Verificaste distribución por tipo gramatical
- [ ] Refrescaste el navegador (Ctrl + Shift + R)
- [ ] "Palabra del Día" muestra palabras nuevas
- [ ] Búsqueda funciona correctamente

---

## 🎯 Resultado Final

✅ **5,446 entradas profesionales** importadas  
✅ **Estructura profesional** completa  
✅ **Acentos preservados** correctamente  
✅ **Sin paréntesis** en definiciones  
✅ **Abreviaturas separadas** en campos propios  
✅ **Aplicación funcionando** sin cambios de código

---

## 📞 Soporte

Si tienes problemas no cubiertos en esta guía:

1. Revisa la sección [Solución de Problemas](#solución-de-problemas)
2. Verifica que seguiste todos los pasos en orden
3. Consulta los logs de Supabase para errores específicos

---

**Última actualización:** 20 de enero de 2026  
**Versión:** 1.0  
**Estado:** ✅ Completo y probado
