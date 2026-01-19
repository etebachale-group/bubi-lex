-- Script SEGURO para limpiar comillas con manejo de duplicados
-- IMPORTANTE: Ejecutar en Supabase SQL Editor
-- Este script es más conservador y te permite revisar antes de eliminar

-- ============================================
-- PASO 1: Ver todas las palabras con comillas
-- ============================================
SELECT 
  id, 
  bubi as palabra_original,
  TRIM(BOTH '''' FROM bubi) as palabra_limpia,
  spanish,
  created_at
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%'
ORDER BY bubi;

-- ============================================
-- PASO 2: Identificar duplicados exactos
-- ============================================
-- Ver qué palabras con comillas ya tienen una versión sin comillas
SELECT 
  de1.id as id_con_comillas,
  de1.bubi as con_comillas,
  de2.id as id_sin_comillas,
  de2.bubi as sin_comillas,
  de1.spanish as traduccion_1,
  de2.spanish as traduccion_2,
  CASE 
    WHEN de1.spanish = de2.spanish THEN '✅ Mismo significado - ELIMINAR'
    ELSE '⚠️ Diferente significado - REVISAR'
  END as accion_recomendada
FROM dictionary_entries de1
JOIN dictionary_entries de2 
  ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
  AND de2.bubi NOT LIKE '''%'
  AND de2.bubi NOT LIKE '%''%'
  AND de1.id != de2.id
ORDER BY de1.bubi;

-- ============================================
-- PASO 3A: Eliminar duplicados con MISMO significado
-- ============================================
-- Solo elimina si la traducción es idéntica (seguro)
DELETE FROM dictionary_entries
WHERE id IN (
  SELECT de1.id
  FROM dictionary_entries de1
  JOIN dictionary_entries de2 
    ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
  WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
    AND de2.bubi NOT LIKE '''%'
    AND de2.bubi NOT LIKE '%''%'
    AND de1.id != de2.id
    AND de1.spanish = de2.spanish  -- Solo si tienen el mismo significado
);

-- ============================================
-- PASO 3B: Ver duplicados con DIFERENTE significado
-- ============================================
-- Estos requieren revisión manual
SELECT 
  de1.id as id_con_comillas,
  de1.bubi as con_comillas,
  de1.spanish as significado_1,
  de2.id as id_sin_comillas,
  de2.bubi as sin_comillas,
  de2.spanish as significado_2,
  '⚠️ REVISAR MANUALMENTE' as nota
FROM dictionary_entries de1
JOIN dictionary_entries de2 
  ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
  AND de2.bubi NOT LIKE '''%'
  AND de2.bubi NOT LIKE '%''%'
  AND de1.id != de2.id
  AND de1.spanish != de2.spanish;

-- ============================================
-- PASO 4: Limpiar comillas de palabras SIN duplicados
-- ============================================
-- Solo limpia palabras que no causarán conflictos
UPDATE dictionary_entries
SET bubi = TRIM(BOTH '''' FROM bubi)
WHERE (bubi LIKE '''%' OR bubi LIKE '%''%')
AND NOT EXISTS (
  SELECT 1 
  FROM dictionary_entries de2
  WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
  AND de2.id != dictionary_entries.id
);

-- ============================================
-- PASO 5: Limpiar comillas en español (más seguro)
-- ============================================
UPDATE dictionary_entries
SET spanish = TRIM(BOTH '''' FROM spanish)
WHERE spanish LIKE '''%' OR spanish LIKE '%''%';

-- ============================================
-- PASO 6: Verificar resultados
-- ============================================
-- Contar palabras que aún tienen comillas
SELECT COUNT(*) as palabras_con_comillas_restantes
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%';

-- Ver cuáles quedaron (si hay)
SELECT id, bubi, spanish, 'Requiere revisión manual' as nota
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%'
ORDER BY bubi;

-- ============================================
-- PASO 7: Verificar integridad
-- ============================================
-- Verificar que no hay duplicados
SELECT 
  LOWER(TRIM(BOTH FROM bubi)) as palabra,
  COUNT(*) as total,
  STRING_AGG(id::text || ' (' || spanish || ')', ', ') as detalles
FROM dictionary_entries
GROUP BY LOWER(TRIM(BOTH FROM bubi))
HAVING COUNT(*) > 1
ORDER BY total DESC;

-- ============================================
-- OPCIONAL: Eliminar duplicado específico por ID
-- ============================================
-- Si necesitas eliminar un duplicado específico después de revisar:
-- DELETE FROM dictionary_entries WHERE id = 123;  -- Reemplaza 123 con el ID correcto

-- ============================================
-- PASO FINAL: Vaciar backup (después de verificar)
-- ============================================
-- Ejecutar solo cuando estés 100% seguro de que todo funcionó
-- DROP TABLE IF EXISTS dictionary_entries_backup;
