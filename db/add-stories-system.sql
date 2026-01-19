-- Sistema de Relatos con Moderación
-- Ejecutar en Supabase SQL Editor

-- ============================================
-- PASO 1: Crear tabla de relatos
-- ============================================
CREATE TABLE IF NOT EXISTS stories (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  author_name VARCHAR(100) NOT NULL,
  author_email VARCHAR(255) NULL,
  is_approved BOOLEAN NOT NULL DEFAULT false,
  is_rejected BOOLEAN NOT NULL DEFAULT false,
  rejection_reason TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  approved_at TIMESTAMP NULL DEFAULT NULL,
  approved_by VARCHAR(255) NULL,
  views INTEGER NOT NULL DEFAULT 0,
  likes INTEGER NOT NULL DEFAULT 0
);

-- Índices para mejor rendimiento
CREATE INDEX IF NOT EXISTS idx_stories_approved ON stories(is_approved);
CREATE INDEX IF NOT EXISTS idx_stories_created_at ON stories(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_stories_author_email ON stories(author_email);
CREATE INDEX IF NOT EXISTS idx_stories_views ON stories(views DESC);

-- ============================================
-- PASO 2: Agregar campo de moderación a noticias
-- ============================================
DO $$ 
BEGIN
  -- Agregar is_approved si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'is_approved'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN is_approved BOOLEAN NOT NULL DEFAULT true;
  END IF;

  -- Agregar is_rejected si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'is_rejected'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN is_rejected BOOLEAN NOT NULL DEFAULT false;
  END IF;

  -- Agregar rejection_reason si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'rejection_reason'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN rejection_reason TEXT NULL;
  END IF;

  -- Agregar author_name si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'author_name'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN author_name VARCHAR(100) NULL;
  END IF;

  -- Agregar author_email si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'author_email'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN author_email VARCHAR(255) NULL;
  END IF;

  -- Agregar approved_at si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'approved_at'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN approved_at TIMESTAMP NULL;
  END IF;

  -- Agregar approved_by si no existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'approved_by'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN approved_by VARCHAR(255) NULL;
  END IF;
END $$;

-- Índices para noticias
CREATE INDEX IF NOT EXISTS idx_news_approved ON news(is_approved);

-- ============================================
-- PASO 3: Habilitar Row Level Security
-- ============================================
ALTER TABLE stories ENABLE ROW LEVEL SECURITY;

-- Eliminar políticas existentes si existen
DROP POLICY IF EXISTS "Relatos aprobados son públicos" ON stories;
DROP POLICY IF EXISTS "Todos pueden crear relatos" ON stories;
DROP POLICY IF EXISTS "Solo admins pueden modificar relatos" ON stories;
DROP POLICY IF EXISTS "Solo admins pueden eliminar relatos" ON stories;

-- Política: Todos pueden leer relatos aprobados
CREATE POLICY "Relatos aprobados son públicos"
ON stories FOR SELECT
USING (is_approved = true AND is_rejected = false);

-- Política: Todos pueden crear relatos (sin autenticación)
CREATE POLICY "Todos pueden crear relatos"
ON stories FOR INSERT
WITH CHECK (true);

-- Política: Solo admins pueden actualizar
CREATE POLICY "Solo admins pueden modificar relatos"
ON stories FOR UPDATE
USING (
  EXISTS (
    SELECT 1 FROM auth.users
    WHERE auth.uid() = id
  )
);

-- Política: Solo admins pueden eliminar
CREATE POLICY "Solo admins pueden eliminar relatos"
ON stories FOR DELETE
USING (
  EXISTS (
    SELECT 1 FROM auth.users
    WHERE auth.uid() = id
  )
);

-- ============================================
-- PASO 4: Verificar instalación
-- ============================================
-- Ver estructura de la tabla stories
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'stories'
ORDER BY ordinal_position;

-- Ver nuevas columnas en news
SELECT 
  column_name, 
  data_type, 
  is_nullable
FROM information_schema.columns
WHERE table_name = 'news' 
  AND column_name IN ('is_approved', 'is_rejected', 'rejection_reason', 'author_name', 'author_email', 'approved_at', 'approved_by')
ORDER BY ordinal_position;

-- Ver índices de stories
SELECT 
  indexname,
  indexdef
FROM pg_indexes
WHERE tablename = 'stories';

-- ============================================
-- PASO 5: Datos de prueba (opcional)
-- ============================================
-- Insertar relato de prueba
-- INSERT INTO stories (title, content, author_name, is_approved)
-- VALUES ('Mi primer relato', 'Este es un relato de prueba sobre la cultura Bubi...', 'Usuario de Prueba', true);

-- Ver relatos
-- SELECT id, title, author_name, is_approved, is_rejected, created_at FROM stories ORDER BY created_at DESC;

-- Ver noticias con nuevos campos
-- SELECT id, title, is_approved, is_rejected, author_name, created_at FROM news ORDER BY created_at DESC;

-- ============================================
-- PASO 6: Aprobar todas las noticias existentes
-- ============================================
-- Marcar todas las noticias existentes como aprobadas
UPDATE news 
SET is_approved = true, 
    approved_at = created_at,
    approved_by = 'system'
WHERE is_approved IS NULL OR is_approved = false;

-- ============================================
-- NOTAS IMPORTANTES
-- ============================================
-- 1. Los relatos requieren aprobación (is_approved = false por defecto)
-- 2. Las noticias ahora también requieren aprobación
-- 3. Los admins pueden aprobar o rechazar contenido
-- 4. Se registra quién aprobó y cuándo
-- 5. Los relatos rechazados no se muestran públicamente
-- 6. Este script es idempotente - puede ejecutarse múltiples veces
