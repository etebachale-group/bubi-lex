-- Script para eliminar SOLO el diccionario Bubi-Español
-- 
-- Este script elimina únicamente las entradas importadas desde
-- el diccionario Bubi-Español (created_by = 'import-script')
--
-- Mantiene intactas:
-- - Entradas del diccionario Español-Bubi
-- - Entradas creadas por colaboradores
-- - Entradas creadas por administradores
--
-- Fecha de creación: 2026-01-21
-- ============================================================================

-- Paso 1: Verificar cuántas entradas se eliminarán
SELECT 
  'ENTRADAS A ELIMINAR' as tipo,
  COUNT(*) as total,
  MIN(created_at) as primera_entrada,
  MAX(created_at) as ultima_entrada
FROM dictionary_entries
WHERE created_by = 'import-script';

-- Paso 2: Ver ejemplos de las primeras 10 entradas que se eliminarán
SELECT 
  id,
  bubi,
  word_type,
  LEFT(spanish, 50) as spanish_preview,
  created_by
FROM dictionary_entries
WHERE created_by = 'import-script'
ORDER BY id
LIMIT 10;

-- ============================================================================
-- ⚠️ ELIMINACIÓN
-- ============================================================================
-- Descomenta las siguientes líneas para eliminar:

/*
BEGIN;

-- Eliminar solo entradas del diccionario Bubi-Español
DELETE FROM dictionary_entries
WHERE created_by = 'import-script';

-- Verificar resultado
SELECT 
  'DESPUÉS DE ELIMINAR' as momento,
  COUNT(*) as total_restante,
  COUNT(CASE WHEN created_by = 'import-espanol-bubi' THEN 1 END) as espanol_bubi,
  COUNT(CASE WHEN created_by NOT IN ('import-script', 'import-espanol-bubi') THEN 1 END) as otras
FROM dictionary_entries;

COMMIT;
-- ROLLBACK;
*/

-- ============================================================================
-- Para reimportar después de eliminar:
-- Ejecutar en orden:
-- 1. db/import-diccionario-entries-parte-1.sql
-- 2. db/import-diccionario-entries-parte-2.sql
-- 3. db/import-diccionario-entries-parte-3.sql
-- 4. db/import-diccionario-entries-parte-4.sql
-- ============================================================================
