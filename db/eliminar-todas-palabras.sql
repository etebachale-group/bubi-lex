-- ⚠️ SCRIPT PELIGROSO: Eliminar TODAS las palabras del diccionario
-- 
-- ADVERTENCIA: Este script eliminará PERMANENTEMENTE todas las entradas
-- de la tabla dictionary_entries. Esta acción NO se puede deshacer.
--
-- USO RECOMENDADO:
-- 1. Hacer backup de la base de datos ANTES de ejecutar
-- 2. Verificar que realmente quieres eliminar todo
-- 3. Ejecutar en Supabase SQL Editor
--
-- ALTERNATIVAS MÁS SEGURAS:
-- - Para eliminar solo Bubi-Español: ver eliminar-bubi-espanol.sql
-- - Para eliminar solo Español-Bubi: ver eliminar-espanol-bubi.sql
--
-- Fecha de creación: 2026-01-21
-- ============================================================================

-- Paso 1: Verificar cuántas entradas hay actualmente
SELECT 
  'ANTES DE ELIMINAR' as momento,
  COUNT(*) as total_entradas,
  COUNT(CASE WHEN created_by = 'import-script' THEN 1 END) as bubi_espanol,
  COUNT(CASE WHEN created_by = 'import-espanol-bubi' THEN 1 END) as espanol_bubi,
  COUNT(CASE WHEN created_by NOT IN ('import-script', 'import-espanol-bubi') THEN 1 END) as otras
FROM dictionary_entries;

-- ============================================================================
-- ⚠️ PUNTO DE NO RETORNO
-- ============================================================================
-- Descomenta las siguientes líneas SOLO si estás SEGURO de eliminar todo:

/*
BEGIN;

-- Eliminar TODAS las entradas del diccionario
DELETE FROM dictionary_entries;

-- Verificar que la tabla está vacía
SELECT 
  'DESPUÉS DE ELIMINAR' as momento,
  COUNT(*) as total_entradas
FROM dictionary_entries;

-- Si todo está correcto, ejecuta COMMIT para confirmar
-- Si quieres cancelar, ejecuta ROLLBACK
COMMIT;
-- ROLLBACK;
*/

-- ============================================================================
-- INSTRUCCIONES DE USO:
-- ============================================================================
-- 
-- 1. Ejecuta primero el SELECT de verificación (líneas 23-29)
--    para ver cuántas entradas hay
--
-- 2. Si estás SEGURO de eliminar todo:
--    a. Descomenta las líneas 38-51 (quita /* y */)
--    b. Ejecuta el script completo
--    c. Verifica el resultado
--    d. Si está bien, deja el COMMIT
--    e. Si quieres cancelar, cambia COMMIT por ROLLBACK
--
-- 3. Después de eliminar, puedes reimportar con:
--    - db/import-diccionario-entries-parte-*.sql (Bubi-Español)
--    - db/import-espanol-bubi-parte-*.sql (Español-Bubi)
--
-- ============================================================================

-- Verificación final (ejecutar después de COMMIT)
SELECT 
  'VERIFICACIÓN FINAL' as momento,
  COUNT(*) as total_entradas,
  CASE 
    WHEN COUNT(*) = 0 THEN '✅ Tabla vacía - Listo para reimportar'
    ELSE '⚠️ Aún hay entradas en la tabla'
  END as estado
FROM dictionary_entries;
