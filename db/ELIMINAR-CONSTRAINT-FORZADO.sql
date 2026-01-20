-- Script para eliminar FORZADAMENTE el constraint problemático
-- Fecha: 2026-01-20

-- ⚠️ EJECUTAR ESTE SCRIPT PRIMERO ANTES DE IMPORTAR

BEGIN;

-- ============================================
-- PASO 1: Mostrar constraints actuales
-- ============================================

DO $$
DECLARE
  constraint_list TEXT;
BEGIN
  SELECT string_agg(conname, ', ') INTO constraint_list
  FROM pg_constraint 
  WHERE conrelid = 'dictionary_entries'::regclass;
  
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'CONSTRAINTS ACTUALES';
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'Constraints: %', COALESCE(constraint_list, 'Ninguno');
  RAISE NOTICE '===========================================';
END $$;

-- ============================================
-- PASO 2: Eliminar TODOS los constraints únicos
-- ============================================

-- Eliminar unique_bubi_lower
DO $$
BEGIN
  ALTER TABLE dictionary_entries DROP CONSTRAINT IF EXISTS unique_bubi_lower;
  RAISE NOTICE '✅ Intentado eliminar: unique_bubi_lower';
EXCEPTION
  WHEN undefined_object THEN
    RAISE NOTICE 'ℹ️  unique_bubi_lower no existe';
  WHEN OTHERS THEN
    RAISE NOTICE '⚠️  Error al eliminar unique_bubi_lower: %', SQLERRM;
END $$;

-- Eliminar unique_bubi_entry
DO $$
BEGIN
  ALTER TABLE dictionary_entries DROP CONSTRAINT IF EXISTS unique_bubi_entry;
  RAISE NOTICE '✅ Intentado eliminar: unique_bubi_entry';
EXCEPTION
  WHEN undefined_object THEN
    RAISE NOTICE 'ℹ️  unique_bubi_entry no existe';
  WHEN OTHERS THEN
    RAISE NOTICE '⚠️  Error al eliminar unique_bubi_entry: %', SQLERRM;
END $$;

-- Eliminar unique_bubi
DO $$
BEGIN
  ALTER TABLE dictionary_entries DROP CONSTRAINT IF EXISTS unique_bubi;
  RAISE NOTICE '✅ Intentado eliminar: unique_bubi';
EXCEPTION
  WHEN undefined_object THEN
    RAISE NOTICE 'ℹ️  unique_bubi no existe';
  WHEN OTHERS THEN
    RAISE NOTICE '⚠️  Error al eliminar unique_bubi: %', SQLERRM;
END $$;

-- Eliminar dictionary_entries_bubi_key
DO $$
BEGIN
  ALTER TABLE dictionary_entries DROP CONSTRAINT IF EXISTS dictionary_entries_bubi_key;
  RAISE NOTICE '✅ Intentado eliminar: dictionary_entries_bubi_key';
EXCEPTION
  WHEN undefined_object THEN
    RAISE NOTICE 'ℹ️  dictionary_entries_bubi_key no existe';
  WHEN OTHERS THEN
    RAISE NOTICE '⚠️  Error al eliminar dictionary_entries_bubi_key: %', SQLERRM;
END $$;

-- ============================================
-- PASO 3: Eliminar TODOS los índices únicos en columna bubi
-- ============================================

DO $$
DECLARE
  idx_record RECORD;
BEGIN
  FOR idx_record IN 
    SELECT indexname 
    FROM pg_indexes 
    WHERE tablename = 'dictionary_entries' 
    AND indexdef LIKE '%UNIQUE%'
    AND indexdef LIKE '%bubi%'
  LOOP
    EXECUTE 'DROP INDEX IF EXISTS ' || idx_record.indexname || ' CASCADE';
    RAISE NOTICE '✅ Índice único eliminado: %', idx_record.indexname;
  END LOOP;
END $$;

-- ============================================
-- PASO 4: Limpiar TODOS los datos
-- ============================================

TRUNCATE TABLE dictionary_entries RESTART IDENTITY CASCADE;

DO $$
BEGIN
  RAISE NOTICE '✅ Tabla dictionary_entries limpiada completamente';
END $$;

-- ============================================
-- PASO 5: Verificar que NO hay constraints únicos
-- ============================================

DO $$
DECLARE
  constraint_count INTEGER;
  unique_index_count INTEGER;
  total_count INTEGER;
BEGIN
  -- Contar constraints únicos
  SELECT COUNT(*) INTO constraint_count
  FROM pg_constraint 
  WHERE conrelid = 'dictionary_entries'::regclass
  AND contype = 'u';
  
  -- Contar índices únicos
  SELECT COUNT(*) INTO unique_index_count
  FROM pg_indexes 
  WHERE tablename = 'dictionary_entries' 
  AND indexdef LIKE '%UNIQUE%';
  
  -- Contar registros
  SELECT COUNT(*) INTO total_count FROM dictionary_entries;
  
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'VERIFICACIÓN FINAL';
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'Constraints únicos: %', constraint_count;
  RAISE NOTICE 'Índices únicos: %', unique_index_count;
  RAISE NOTICE 'Registros en tabla: %', total_count;
  RAISE NOTICE '===========================================';
  
  IF constraint_count = 0 AND unique_index_count = 0 AND total_count = 0 THEN
    RAISE NOTICE '✅✅✅ PERFECTO - Lista para importar';
    RAISE NOTICE 'Ejecuta ahora: import-diccionario-entries-parte-1.sql';
  ELSE
    IF constraint_count > 0 THEN
      RAISE NOTICE '❌ Aún hay % constraints únicos', constraint_count;
    END IF;
    IF unique_index_count > 0 THEN
      RAISE NOTICE '❌ Aún hay % índices únicos', unique_index_count;
    END IF;
    IF total_count > 0 THEN
      RAISE NOTICE '❌ Aún hay % registros', total_count;
    END IF;
  END IF;
  
  RAISE NOTICE '===========================================';
END $$;

COMMIT;

-- Mostrar constraints restantes (debe estar vacío)
SELECT 
  conname as constraint_name,
  contype as type
FROM pg_constraint 
WHERE conrelid = 'dictionary_entries'::regclass
ORDER BY conname;

-- Mostrar índices únicos restantes (debe estar vacío)
SELECT 
  indexname,
  indexdef
FROM pg_indexes 
WHERE tablename = 'dictionary_entries' 
AND indexdef LIKE '%UNIQUE%';
