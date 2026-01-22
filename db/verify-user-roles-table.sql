-- =====================================================
-- VERIFICACIÓN: Tabla user_roles
-- =====================================================
-- Ejecuta este script para verificar si la tabla existe
-- y está configurada correctamente
-- =====================================================

-- 1. Verificar si la tabla existe
SELECT 
  CASE 
    WHEN EXISTS (
      SELECT 1 FROM information_schema.tables 
      WHERE table_name = 'user_roles'
    ) 
    THEN '✅ La tabla user_roles EXISTE'
    ELSE '❌ La tabla user_roles NO EXISTE - Debes ejecutar add-user-roles-system.sql'
  END as estado_tabla;

-- 2. Ver estructura de la tabla (si existe)
SELECT 
  column_name,
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'user_roles'
ORDER BY ordinal_position;

-- 3. Ver políticas RLS (si existen)
SELECT 
  policyname,
  cmd,
  permissive
FROM pg_policies
WHERE tablename = 'user_roles';

-- 4. Ver índices (si existen)
SELECT 
  indexname,
  indexdef
FROM pg_indexes
WHERE tablename = 'user_roles';

-- 5. Ver datos actuales (si existen)
SELECT 
  email,
  is_admin,
  can_edit_dictionary,
  created_at
FROM user_roles
ORDER BY created_at DESC;

-- =====================================================
-- INTERPRETACIÓN DE RESULTADOS
-- =====================================================

-- Si ves "❌ La tabla user_roles NO EXISTE":
--   → Debes ejecutar: db/add-user-roles-system.sql
--   → Sigue la guía: docs/GUIA-INSTALACION-COLABORADORES.md

-- Si ves "✅ La tabla user_roles EXISTE":
--   → Verifica que tienes al menos 1 fila con tu email
--   → Verifica que is_admin = TRUE para tu email
--   → Si no apareces, ejecuta:
--      INSERT INTO user_roles (email, is_admin, can_edit_dictionary)
--      VALUES ('TU_EMAIL@ejemplo.com', TRUE, TRUE);

-- Si ves 0 políticas RLS:
--   → Las políticas no se crearon correctamente
--   → Ejecuta nuevamente: db/add-user-roles-system.sql

-- Si ves 0 índices:
--   → Los índices no se crearon correctamente
--   → Ejecuta nuevamente: db/add-user-roles-system.sql
