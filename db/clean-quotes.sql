-- Script para limpiar palabras que empiezan con comillas simples
-- IMPORTANTE: Ejecutar en Supabase SQL Editor
-- NOTA: Este script maneja duplicados automáticamente

-- ============================================
-- PASO 1: Ver palabras que empiezan con comillas simples
-- ============================================
SELECT id, bubi, spanish, created_at
FROM dictionary_entries
WHERE bubi LIKE '''%' OR spanish LIKE '''%'
ORDER BY id;

-- ============================================
-- PASO 2: Identificar duplicados potenciales
-- ============================================
-- Ver qué palabras con comillas se convertirían en duplicados
SELECT 
  TRIM(BOTH '''' FROM bubi) as palabra_limpia,
  COUNT(*) as total_ocurrencias,
  STRING_AGG(id::text, ', ') as ids_afectados
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%'
GROUP BY TRIM(BOTH '''' FROM bubi)
HAVING COUNT(*) > 1 
   OR EXISTS (
     SELECT 1 FROM dictionary_entries de2 
     WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
     AND de2.bubi NOT LIKE '''%'
   )
ORDER BY total_ocurrencias DESC;

-- ============================================
-- PASO 3: Eliminar duplicados con comillas (mantener sin comillas)
-- ============================================
-- Eliminar entradas con comillas si ya existe la versión sin comillas
DELETE FROM dictionary_entries
WHERE id IN (
  SELECT de1.id
  FROM dictionary_entries de1
  WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
  AND EXISTS (
    SELECT 1 
    FROM dictionary_entries de2
    WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
    AND de2.bubi NOT LIKE '''%'
    AND de2.bubi NOT LIKE '%''%'
    AND de2.id != de1.id
  )
);

-- ============================================
-- PASO 4: Limpiar comillas de palabras restantes (sin duplicados)
-- ============================================
-- Ahora podemos limpiar las comillas sin conflictos
UPDATE dictionary_entries
SET bubi = TRIM(BOTH '''' FROM bubi)
WHERE (bubi LIKE '''%' OR bubi LIKE '%''%')
AND NOT EXISTS (
  SELECT 1 
  FROM dictionary_entries de2
  WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
  AND de2.id != dictionary_entries.id
  AND de2.bubi NOT LIKE '''%'
  AND de2.bubi NOT LIKE '%''%'
);

-- ============================================
-- PASO 5: Limpiar comillas en español
-- ============================================
UPDATE dictionary_entries
SET spanish = TRIM(BOTH '''' FROM spanish)
WHERE spanish LIKE '''%' OR spanish LIKE '%''%';

-- ============================================
-- PASO 6: Verificar que se limpiaron correctamente
-- ============================================
SELECT COUNT(*) as palabras_con_comillas
FROM dictionary_entries
WHERE bubi LIKE '''%' OR spanish LIKE '''%';
-- Debe devolver 0

-- ============================================
-- PASO 7: Ver palabras después de la limpieza
-- ============================================
SELECT id, bubi, spanish
FROM dictionary_entries
ORDER BY id
LIMIT 20;

-- ============================================
-- PASO 8: Verificar que no hay duplicados
-- ============================================
SELECT 
  LOWER(TRIM(BOTH FROM bubi)) as palabra,
  COUNT(*) as total,
  STRING_AGG(id::text, ', ') as ids
FROM dictionary_entries
GROUP BY LOWER(TRIM(BOTH FROM bubi))
HAVING COUNT(*) > 1
ORDER BY total DESC;

-- ============================================
-- PASO 9: Vaciar backup (después de verificar que todo está bien)
-- ============================================
-- Ejecutar solo cuando estés seguro de que todo funcionó correctamente
-- DROP TABLE IF EXISTS dictionary_entries_backup;
