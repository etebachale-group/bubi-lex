-- Script para eliminar SOLO el diccionario Español-Bubi
-- 
-- Este script elimina únicamente las entradas importadas desde
-- el diccionario Español-Bubi (created_by = 'import-espanol-bubi')
--
-- Mantiene intactas:
-- - Entradas del diccionario Bubi-Español
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
WHERE created_by = 'import-espanol-bubi';

-- Paso 2: Ver ejemplos de las primeras 10 entradas que se eliminarán
SELECT 
  id,
  bubi,
  word_type,
  notes,
  created_by
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi'
ORDER BY id
LIMIT 10;

-- ============================================================================
-- ⚠️ ELIMINACIÓN
-- ============================================================================
-- Descomenta las siguientes líneas para eliminar:

/*
BEGIN;

-- Eliminar solo entradas del diccionario Español-Bubi
DELETE FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi';

-- Verificar resultado
SELECT 
  'DESPUÉS DE ELIMINAR' as momento,
  COUNT(*) as total_restante,
  COUNT(CASE WHEN created_by = 'import-script' THEN 1 END) as bubi_espanol,
  COUNT(CASE WHEN created_by NOT IN ('import-script', 'import-espanol-bubi') THEN 1 END) as otras
FROM dictionary_entries;

COMMIT;
-- ROLLBACK;
*/

-- ============================================================================
-- Para reimportar después de eliminar:
-- Ejecutar en orden:
-- 1. db/import-espanol-bubi-parte-1.sql
-- 2. db/import-espanol-bubi-parte-2.sql
-- ============================================================================
