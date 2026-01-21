-- Script para hacer BACKUP antes de eliminar palabras
-- 
-- Este script te permite exportar todas las entradas a un formato
-- que puedes guardar como respaldo antes de eliminar
--
-- INSTRUCCIONES:
-- 1. Ejecuta este script en Supabase SQL Editor
-- 2. Copia el resultado completo
-- 3. Guárdalo en un archivo .sql o .txt
-- 4. Ahora puedes eliminar con seguridad
--
-- Fecha de creación: 2026-01-21
-- ============================================================================

-- Estadísticas generales
SELECT 
  '=== ESTADÍSTICAS GENERALES ===' as seccion,
  COUNT(*) as total_entradas,
  COUNT(CASE WHEN created_by = 'import-script' THEN 1 END) as bubi_espanol,
  COUNT(CASE WHEN created_by = 'import-espanol-bubi' THEN 1 END) as espanol_bubi,
  COUNT(CASE WHEN created_by NOT IN ('import-script', 'import-espanol-bubi') THEN 1 END) as otras,
  MIN(created_at) as primera_entrada,
  MAX(created_at) as ultima_entrada,
  NOW() as fecha_backup
FROM dictionary_entries;

-- ============================================================================
-- BACKUP COMPLETO EN FORMATO JSON
-- ============================================================================
-- Este query exporta todas las entradas en formato JSON
-- Copia el resultado y guárdalo en un archivo

SELECT 
  json_agg(
    json_build_object(
      'id', id,
      'bubi', bubi,
      'word_type', word_type,
      'gender', gender,
      'number', number,
      'nominal_class', nominal_class,
      'spanish', spanish,
      'ipa', ipa,
      'examples', examples,
      'variants', variants,
      'notes', notes,
      'plural_form', plural_form,
      'created_by', created_by,
      'created_at', created_at,
      'updated_at', updated_at
    )
  ) as backup_json
FROM dictionary_entries;

-- ============================================================================
-- BACKUP POR DICCIONARIO
-- ============================================================================

-- Backup solo Bubi-Español
SELECT 
  '=== BACKUP BUBI-ESPAÑOL ===' as seccion,
  COUNT(*) as total_entradas
FROM dictionary_entries
WHERE created_by = 'import-script';

-- Backup solo Español-Bubi
SELECT 
  '=== BACKUP ESPAÑOL-BUBI ===' as seccion,
  COUNT(*) as total_entradas
FROM dictionary_entries
WHERE created_by = 'import-espanol-bubi';

-- ============================================================================
-- VERIFICACIÓN DE INTEGRIDAD
-- ============================================================================

-- Verificar que no hay entradas con datos críticos faltantes
SELECT 
  '=== VERIFICACIÓN DE INTEGRIDAD ===' as seccion,
  COUNT(*) as total,
  COUNT(CASE WHEN bubi IS NULL OR bubi = '' THEN 1 END) as sin_bubi,
  COUNT(CASE WHEN spanish IS NULL OR spanish = '' THEN 1 END) as sin_spanish,
  COUNT(CASE WHEN word_type IS NULL OR word_type = '' THEN 1 END) as sin_tipo
FROM dictionary_entries;

-- ============================================================================
-- INSTRUCCIONES PARA RESTAURAR
-- ============================================================================
/*
Si necesitas restaurar después de eliminar:

OPCIÓN 1: Reimportar desde archivos SQL
- Bubi-Español: db/import-diccionario-entries-parte-*.sql
- Español-Bubi: db/import-espanol-bubi-parte-*.sql

OPCIÓN 2: Restaurar desde este backup JSON
1. Guarda el resultado del query JSON en un archivo
2. Usa un script de importación personalizado
3. O contacta al administrador del sistema

OPCIÓN 3: Restaurar desde backup de Supabase
1. Ve a Supabase Dashboard > Database > Backups
2. Selecciona el backup más reciente
3. Restaura la base de datos completa
*/
