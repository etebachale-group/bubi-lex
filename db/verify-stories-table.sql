-- Script de Verificación - Tabla Stories
-- Ejecutar en Supabase SQL Editor para verificar que la tabla existe

-- ============================================
-- PASO 1: Verificar que la tabla existe
-- ============================================
SELECT EXISTS (
  SELECT FROM information_schema.tables 
  WHERE table_schema = 'public' 
  AND table_name = 'stories'
) AS table_exists;

-- ============================================
-- PASO 2: Ver estructura de la tabla
-- ============================================
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'stories'
ORDER BY ordinal_position;

-- ============================================
-- PASO 3: Verificar políticas RLS
-- ============================================
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd,
  qual
FROM pg_policies
WHERE tablename = 'stories';

-- ============================================
-- PASO 4: Verificar que RLS está habilitado
-- ============================================
SELECT 
  tablename,
  rowsecurity
FROM pg_tables
WHERE tablename = 'stories';

-- ============================================
-- PASO 5: Intentar insertar un registro de prueba
-- ============================================
-- NOTA: Esto debería funcionar sin autenticación
INSERT INTO stories (
  title, 
  content, 
  author_name,
  is_approved,
  is_rejected
) VALUES (
  'Test de Verificación',
  'Este es un relato de prueba para verificar que la tabla funciona correctamente.',
  'Sistema de Verificación',
  false,
  false
) RETURNING id, title, created_at;

-- ============================================
-- PASO 6: Ver el registro insertado
-- ============================================
SELECT 
  id, 
  title, 
  author_name, 
  is_approved, 
  is_rejected,
  created_at
FROM stories
WHERE title = 'Test de Verificación';

-- ============================================
-- PASO 7: Limpiar registro de prueba
-- ============================================
DELETE FROM stories WHERE title = 'Test de Verificación';

-- ============================================
-- RESULTADO ESPERADO
-- ============================================
-- Si todos los pasos funcionan:
-- ✅ La tabla existe
-- ✅ Tiene todas las columnas necesarias
-- ✅ RLS está habilitado
-- ✅ Las políticas están configuradas
-- ✅ Se puede insertar sin autenticación
-- ✅ El registro se puede eliminar

-- Si algún paso falla:
-- ❌ Ejecutar: db/add-stories-system.sql
