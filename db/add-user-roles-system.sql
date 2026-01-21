-- =====================================================
-- SISTEMA DE ROLES Y COLABORADORES
-- =====================================================
-- Fecha: 22 de enero de 2026
-- Descripción: Tabla para gestionar roles de usuarios
--              (administradores y colaboradores)
-- =====================================================

-- Crear tabla user_roles
CREATE TABLE IF NOT EXISTS user_roles (
  user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT UNIQUE NOT NULL,
  can_edit_dictionary BOOLEAN DEFAULT FALSE,
  is_admin BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Índices para mejorar rendimiento
CREATE INDEX IF NOT EXISTS idx_user_roles_email ON user_roles(email);
CREATE INDEX IF NOT EXISTS idx_user_roles_can_edit ON user_roles(can_edit_dictionary) WHERE can_edit_dictionary = TRUE;
CREATE INDEX IF NOT EXISTS idx_user_roles_is_admin ON user_roles(is_admin) WHERE is_admin = TRUE;

-- Función para actualizar updated_at automáticamente
CREATE OR REPLACE FUNCTION update_user_roles_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger para actualizar updated_at
DROP TRIGGER IF EXISTS trigger_update_user_roles_updated_at ON user_roles;
CREATE TRIGGER trigger_update_user_roles_updated_at
  BEFORE UPDATE ON user_roles
  FOR EACH ROW
  EXECUTE FUNCTION update_user_roles_updated_at();

-- =====================================================
-- POLÍTICAS DE SEGURIDAD (RLS)
-- =====================================================

-- Habilitar Row Level Security
ALTER TABLE user_roles ENABLE ROW LEVEL SECURITY;

-- Política: Los administradores pueden ver todos los roles
CREATE POLICY "Admins can view all user roles"
  ON user_roles
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.email = auth.jwt() ->> 'email'
      AND ur.is_admin = TRUE
    )
  );

-- Política: Los administradores pueden insertar nuevos roles
CREATE POLICY "Admins can insert user roles"
  ON user_roles
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.email = auth.jwt() ->> 'email'
      AND ur.is_admin = TRUE
    )
  );

-- Política: Los administradores pueden actualizar roles
CREATE POLICY "Admins can update user roles"
  ON user_roles
  FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.email = auth.jwt() ->> 'email'
      AND ur.is_admin = TRUE
    )
  );

-- Política: Los administradores pueden eliminar roles
CREATE POLICY "Admins can delete user roles"
  ON user_roles
  FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.email = auth.jwt() ->> 'email'
      AND ur.is_admin = TRUE
    )
  );

-- Política: Los usuarios pueden ver su propio rol
CREATE POLICY "Users can view their own role"
  ON user_roles
  FOR SELECT
  USING (email = auth.jwt() ->> 'email');

-- =====================================================
-- DATOS INICIALES
-- =====================================================

-- Insertar administrador inicial (CAMBIAR EMAIL)
-- IMPORTANTE: Reemplaza 'admin@bubilex.com' con tu email real
INSERT INTO user_roles (email, is_admin, can_edit_dictionary)
VALUES ('fernandochaleeteba@gmail.com', TRUE, TRUE)
ON CONFLICT (email) DO UPDATE
SET is_admin = TRUE, can_edit_dictionary = TRUE;

-- =====================================================
-- VERIFICACIÓN
-- =====================================================

-- Verificar que la tabla se creó correctamente
SELECT 
  table_name,
  column_name,
  data_type,
  is_nullable
FROM information_schema.columns
WHERE table_name = 'user_roles'
ORDER BY ordinal_position;

-- Verificar políticas RLS
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd
FROM pg_policies
WHERE tablename = 'user_roles';

-- Verificar datos iniciales
SELECT * FROM user_roles;

-- =====================================================
-- NOTAS DE USO
-- =====================================================

-- Para agregar un colaborador:
-- INSERT INTO user_roles (email, can_edit_dictionary)
-- VALUES ('colaborador@ejemplo.com', TRUE);

-- Para agregar un administrador:
-- INSERT INTO user_roles (email, is_admin, can_edit_dictionary)
-- VALUES ('admin@ejemplo.com', TRUE, TRUE);

-- Para remover permisos de colaborador:
-- UPDATE user_roles SET can_edit_dictionary = FALSE WHERE email = 'colaborador@ejemplo.com';

-- Para eliminar un usuario:
-- DELETE FROM user_roles WHERE email = 'usuario@ejemplo.com';
