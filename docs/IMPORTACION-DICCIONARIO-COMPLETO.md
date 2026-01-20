# Importación del Diccionario Completo Bubi

## Fecha: 20 de enero de 2026

---

## Resumen Ejecutivo

Se ha procesado exitosamente el diccionario completo Bubi con **11,375 palabras** listas para importar a la base de datos PostgreSQL/Supabase.

---

## Archivos Procesados

### Archivos de Origen
1. **`palabras/de bubi a español.txt`**
   - Líneas: 25,352
   - Entradas extraídas: 5,439
   - Formato: Palabra Bubi → Definición en Español

2. **`palabras/de español a bubi.txt`**
   - Líneas: 16,765
   - Entradas extraídas: 11,696
   - Formato: Palabra Español → Traducción en Bubi

### Archivos Generados
1. **`db/import-diccionario-completo.sql`**
   - Tamaño: ~13,932 líneas
   - Formato: PostgreSQL/Supabase
   - Listo para ejecutar

2. **`db/diccionario-completo.json`**
   - Formato: JSON
   - Uso: Referencia y backup

---

## Proceso de Parsing

### Script Utilizado
**`scripts/parse-palabras-mejorado.js`**

### Características del Parsing

#### 1. Limpieza de Texto
- ✅ **Paréntesis removidos** según instrucciones
- ✅ **Acentos mantenidos** (crítico para el Bubi)
- ✅ **Corchetes removidos** (notación fonética)
- ✅ **Espacios normalizados**

#### 2. Detección de Entradas
- Patrón: `palabra, tipo. definición`
- Tipos reconocidos: `s.`, `v.`, `adj.`, `adv.`, `prep.`, `conj.`, `interj.`, `pron.`, `loc.`, `morf.`, `antrop.`
- Lectura multi-línea hasta siguiente entrada

#### 3. Validaciones
- Longitud mínima: 2 caracteres (Bubi), 3 caracteres (Español)
- Longitud máxima: 100 caracteres (Bubi), 1500 caracteres (Español)
- Filtrado de entradas solo numéricas
- Filtrado de entradas vacías

#### 4. Deduplicación
- Basada en palabra Bubi (case-insensitive)
- Prioridad: Bubi → Español sobre Español → Bubi
- Mantiene definición más larga en caso de duplicados

---

## Estadísticas

### Números Finales
- **Total de entradas:** 11,375
- **Entradas válidas:** 11,375 (99.9%)
- **Entradas filtradas:** 12 (0.1%)

### Promedios
- **Longitud palabra Bubi:** 7 caracteres
- **Longitud definición:** 58 caracteres

### Distribución por Fuente
- **Bubi → Español:** 5,439 entradas (47.8%)
- **Español → Bubi:** 5,936 entradas (52.2%)

---

## Estructura del SQL Generado

### Formato de INSERT
```sql
INSERT INTO dictionary (bubi, spanish, ipa, notes, created_by) VALUES
  ('palabra', 'definición', NULL, 'Fuente: bubi-español', 'import-script'),
  ('palabra2', 'definición2', NULL, 'Fuente: español-bubi', 'import-script');
```

### Características
- **Lotes de 50 entradas** por INSERT
- **Transacción única** (BEGIN/COMMIT)
- **Campo IPA:** NULL (se puede completar después)
- **Campo notes:** Indica fuente del diccionario
- **Campo created_by:** 'import-script'

---

## Ejemplos de Entradas

### Entrada 1
```json
{
  "bubi": "'e",
  "spanish": "sing. uña, pezuña. el. 7 . Tb. ekke",
  "source": "bubi-español"
}
```

### Entrada 2
```json
{
  "bubi": "abba",
  "spanish": "v. repartir algo. distribuir. dar",
  "source": "bubi-español"
}
```

### Entrada 3
```json
{
  "bubi": "botyo",
  "spanish": "s. sing. persona, alguien, individuo. Cl. 1",
  "source": "bubi-español"
}
```

### Entrada 4
```json
{
  "bubi": "waísso",
  "spanish": "s. f. mujer, esposa. Cl. 1",
  "source": "bubi-español"
}
```

### Entrada 5
```json
{
  "bubi": "eriia",
  "spanish": "s. sing. pueblo, poblado. Cl. 7",
  "source": "bubi-español"
}
```

---

## Instrucciones de Importación

### Paso 1: Preparación

#### A. Backup de Base de Datos
```sql
-- Crear backup antes de importar
pg_dump -U postgres -d bubi_lex > backup_antes_importacion.sql
```

#### B. Verificar Tabla
```sql
-- Verificar que la tabla existe
SELECT COUNT(*) FROM dictionary;

-- Ver estructura
\d dictionary
```

### Paso 2: Importación

#### Opción A: Desde archivo SQL
```bash
# Conectar a Supabase/PostgreSQL
psql -h [HOST] -U [USER] -d [DATABASE] -f db/import-diccionario-completo.sql
```

#### Opción B: Desde Supabase Dashboard
1. Abrir Supabase Dashboard
2. Ir a SQL Editor
3. Copiar contenido de `import-diccionario-completo.sql`
4. Ejecutar

#### Opción C: Desde pgAdmin
1. Abrir pgAdmin
2. Conectar a base de datos
3. Tools → Query Tool
4. Abrir archivo `import-diccionario-completo.sql`
5. Ejecutar (F5)

### Paso 3: Verificación

#### A. Contar Entradas
```sql
-- Debe mostrar 11,375 (o más si ya había entradas)
SELECT COUNT(*) FROM dictionary;
```

#### B. Verificar Acentos
```sql
-- Verificar que los acentos se mantienen
SELECT bubi, spanish 
FROM dictionary 
WHERE bubi LIKE '%á%' OR bubi LIKE '%é%' OR bubi LIKE '%í%'
LIMIT 10;
```

#### C. Buscar Duplicados
```sql
-- Verificar duplicados
SELECT bubi, COUNT(*) as count
FROM dictionary
GROUP BY bubi
HAVING COUNT(*) > 1
ORDER BY count DESC
LIMIT 20;
```

#### D. Verificar Fuentes
```sql
-- Ver distribución por fuente
SELECT 
  notes,
  COUNT(*) as count
FROM dictionary
WHERE notes LIKE 'Fuente:%'
GROUP BY notes;
```

### Paso 4: Optimización

#### A. Vacuum y Analyze
```sql
-- Optimizar tabla después de importación masiva
VACUUM ANALYZE dictionary;
```

#### B. Reindexar
```sql
-- Reindexar para mejorar búsquedas
REINDEX TABLE dictionary;
```

#### C. Actualizar Estadísticas
```sql
-- Actualizar estadísticas de la tabla
ANALYZE dictionary;
```

---

## Manejo de Duplicados

### Si Hay Duplicados

#### Opción 1: Mantener Primera Entrada
```sql
-- Eliminar duplicados manteniendo el ID más bajo
DELETE FROM dictionary a
USING dictionary b
WHERE a.id > b.id
AND a.bubi = b.bubi;
```

#### Opción 2: Mantener Definición Más Larga
```sql
-- Eliminar duplicados manteniendo la definición más completa
DELETE FROM dictionary a
USING dictionary b
WHERE a.id > b.id
AND a.bubi = b.bubi
AND LENGTH(a.spanish) < LENGTH(b.spanish);
```

#### Opción 3: Combinar Definiciones
```sql
-- Combinar definiciones de duplicados
UPDATE dictionary a
SET spanish = a.spanish || ' | ' || b.spanish
FROM dictionary b
WHERE a.id < b.id
AND a.bubi = b.bubi;

-- Luego eliminar duplicados
DELETE FROM dictionary a
USING dictionary b
WHERE a.id > b.id
AND a.bubi = b.bubi;
```

---

## Problemas Comunes y Soluciones

### Problema 1: Error de Codificación
**Síntoma:** Acentos aparecen como caracteres extraños

**Solución:**
```sql
-- Verificar codificación de la base de datos
SHOW SERVER_ENCODING;

-- Debe ser UTF8
-- Si no, crear nueva base de datos con UTF8
CREATE DATABASE bubi_lex_new
WITH ENCODING 'UTF8'
LC_COLLATE = 'es_ES.UTF-8'
LC_CTYPE = 'es_ES.UTF-8';
```

### Problema 2: Timeout en Importación
**Síntoma:** Script se detiene antes de completar

**Solución:**
```sql
-- Aumentar timeout
SET statement_timeout = '30min';

-- O dividir el script en partes más pequeñas
```

### Problema 3: Memoria Insuficiente
**Síntoma:** Error de memoria durante importación

**Solución:**
```sql
-- Aumentar work_mem temporalmente
SET work_mem = '256MB';

-- Ejecutar importación
-- Luego restaurar
RESET work_mem;
```

### Problema 4: Conflicto con Entradas Existentes
**Síntoma:** Error de clave duplicada

**Solución:**
```sql
-- Opción A: Eliminar entradas existentes primero
TRUNCATE TABLE dictionary;

-- Opción B: Usar ON CONFLICT (requiere modificar script)
INSERT INTO dictionary (bubi, spanish, ipa, notes, created_by)
VALUES (...)
ON CONFLICT (bubi) DO UPDATE
SET spanish = EXCLUDED.spanish,
    notes = EXCLUDED.notes;
```

---

## Mejoras Futuras

### Corto Plazo
- [ ] Agregar campo IPA (pronunciación)
- [ ] Clasificar por tipo de palabra (sustantivo, verbo, etc.)
- [ ] Agregar ejemplos de uso
- [ ] Incluir clase nominal (Cl. 1, Cl. 2, etc.)

### Mediano Plazo
- [ ] Extraer información gramatical estructurada
- [ ] Agregar etimología
- [ ] Incluir variantes regionales
- [ ] Agregar audio de pronunciación

### Largo Plazo
- [ ] Sistema de revisión colaborativa
- [ ] Integración con sistema de IA
- [ ] API pública de diccionario
- [ ] Aplicación móvil

---

## Scripts Disponibles

### 1. parse-palabras-completo.js
- **Uso:** Parsing básico
- **Resultado:** 13,647 entradas (con problemas)
- **Estado:** Obsoleto

### 2. parse-palabras-mejorado.js ⭐
- **Uso:** Parsing mejorado con validaciones
- **Resultado:** 11,375 entradas limpias
- **Estado:** Recomendado

### Ejecutar Script
```bash
# Desde la raíz del proyecto
node scripts/parse-palabras-mejorado.js
```

---

## Estructura de Archivos

```
bubi-lex/
├── palabras/
│   ├── de bubi a español.txt (25,352 líneas)
│   └── de español a bubi.txt (16,765 líneas)
├── scripts/
│   ├── parse-palabras-completo.js (obsoleto)
│   └── parse-palabras-mejorado.js ⭐
├── db/
│   ├── import-diccionario-completo.sql ⭐ (13,932 líneas)
│   └── diccionario-completo.json (backup)
└── docs/
    └── IMPORTACION-DICCIONARIO-COMPLETO.md (este archivo)
```

---

## Contacto y Soporte

### Problemas Durante Importación
1. Verificar logs de PostgreSQL
2. Revisar archivo `diccionario-completo.json` para debugging
3. Ejecutar queries de verificación

### Modificar Script
El script está en `scripts/parse-palabras-mejorado.js` y puede ser modificado para:
- Ajustar validaciones
- Cambiar formato de salida
- Agregar campos adicionales
- Modificar limpieza de texto

---

## Changelog

### Versión 2.0 - 20 de enero de 2026
- ✅ Parsing mejorado con detección de tipos
- ✅ Validaciones más estrictas
- ✅ Deduplicación inteligente
- ✅ Limpieza de paréntesis
- ✅ Mantenimiento de acentos
- ✅ 11,375 entradas válidas

### Versión 1.0 - 20 de enero de 2026
- ✅ Parsing básico
- ✅ 13,647 entradas (con problemas)
- ❌ Palabras divididas incorrectamente

---

**Estado:** ✅ LISTO PARA IMPORTAR  
**Calidad:** Alta  
**Entradas:** 11,375  
**Formato:** PostgreSQL/Supabase  
**Codificación:** UTF-8  
**Acentos:** Preservados  

**Próximo paso:** Ejecutar `db/import-diccionario-completo.sql` en Supabase

