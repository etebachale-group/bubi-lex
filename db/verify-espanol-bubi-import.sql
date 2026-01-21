-- Script de verificación para importación Español-Bubi
-- Ejecutar después de importar todas las partes

-- 1. Verificar total de entradas
SELECT COUNT(*) as total
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi';
-- Esperado: 2230

-- 2. Verificar distribución por tipo
SELECT
  word_type,
  COUNT(*) as total,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dictionary_entries WHERE created_by = 'import-espanol-bubi'), 1) as porcentaje
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi'
GROUP BY word_type
ORDER BY total DESC;

-- 3. Verificar entradas con ejemplos
SELECT COUNT(*) as con_ejemplos
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi'
AND examples IS NOT NULL;

-- 4. Verificar entradas con variantes
SELECT COUNT(*) as con_variantes
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi'
AND variants IS NOT NULL;

-- 5. Ver primeras 10 entradas
SELECT
  bubi,
  word_type,
  gender,
  number,
  nominal_class,
  LEFT(spanish, 50) as spanish_preview,
  notes
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi'
ORDER BY id
LIMIT 10;

-- 6. Buscar posibles duplicados con diccionario Bubi-Español
SELECT
  d1.bubi,
  d1.word_type as tipo_es_bubi,
  d2.word_type as tipo_bubi_es,
  d1.spanish as def_es_bubi,
  d2.spanish as def_bubi_es
FROM dictionary_entries d1
INNER JOIN dictionary_entries d2 ON LOWER(d1.bubi) = LOWER(d2.bubi)
WHERE d1.created_by = 'import-espanol-bubi'
AND d2.created_by = 'import-script'
LIMIT 20;