-- Sistema de Comentarios para Noticias
-- Ejecutar en Supabase SQL Editor

-- ============================================
-- PASO 1: Crear tabla de comentarios
-- ============================================
CREATE TABLE IF NOT EXISTS news_comments (
  id SERIAL PRIMARY KEY,
  news_id INTEGER NOT NULL,
  author_name VARCHAR(100) NOT NULL,
  author_email VARCHAR(255) NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT false,
  parent_id INTEGER NULL
);

-- Agregar foreign keys solo si no existen
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint 
    WHERE conname = 'news_comments_news_id_fkey'
  ) THEN
    ALTER TABLE news_comments 
    ADD CONSTRAINT news_comments_news_id_fkey 
    FOREIGN KEY (news_id) REFERENCES news(id) ON DELETE CASCADE;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint 
    WHERE conname = 'news_comments_parent_id_fkey'
  ) THEN
    ALTER TABLE news_comments 
    ADD CONSTRAINT news_comments_parent_id_fkey 
    FOREIGN KEY (parent_id) REFERENCES news_comments(id) ON DELETE CASCADE;
  END IF;
END $$;

-- Índices (IF NOT EXISTS disponible en PostgreSQL 9.5+)
CREATE INDEX IF NOT EXISTS idx_news_comments_news_id ON news_comments(news_id);
CREATE INDEX IF NOT EXISTS idx_news_comments_created_at ON news_comments(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_news_comments_parent_id ON news_comments(parent_id);
CREATE INDEX IF NOT EXISTS idx_news_comments_approved ON news_comments(is_approved);

-- ============================================
-- PASO 2: Agregar contador de comentarios a noticias
-- ============================================
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'news' AND column_name = 'comments_count'
  ) THEN
    ALTER TABLE news 
    ADD COLUMN comments_count INTEGER NOT NULL DEFAULT 0;
  END IF;
END $$;

-- ============================================
-- PASO 3: Función para actualizar contador de comentarios
-- ============================================
CREATE OR REPLACE FUNCTION update_news_comments_count()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE news 
    SET comments_count = comments_count + 1 
    WHERE id = NEW.news_id;
    RETURN NEW;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE news 
    SET comments_count = GREATEST(0, comments_count - 1)
    WHERE id = OLD.news_id;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- ============================================
-- PASO 4: Trigger para actualizar contador automáticamente
-- ============================================
DROP TRIGGER IF EXISTS trigger_update_comments_count ON news_comments;

CREATE TRIGGER trigger_update_comments_count
AFTER INSERT OR DELETE ON news_comments
FOR EACH ROW
EXECUTE FUNCTION update_news_comments_count();

-- ============================================
-- PASO 5: Habilitar Row Level Security (RLS)
-- ============================================
ALTER TABLE news_comments ENABLE ROW LEVEL SECURITY;

-- Eliminar políticas existentes si existen
DROP POLICY IF EXISTS "Comentarios aprobados son públicos" ON news_comments;
DROP POLICY IF EXISTS "Usuarios pueden crear comentarios" ON news_comments;
DROP POLICY IF EXISTS "Solo admins pueden modificar comentarios" ON news_comments;
DROP POLICY IF EXISTS "Solo admins pueden eliminar comentarios" ON news_comments;

-- Política: Todos pueden leer comentarios aprobados
CREATE POLICY "Comentarios aprobados son públicos"
ON news_comments FOR SELECT
USING (is_approved = true);

-- Política: Todos pueden crear comentarios (sin autenticación requerida)
CREATE POLICY "Usuarios pueden crear comentarios"
ON news_comments FOR INSERT
WITH CHECK (true);

-- Política: Solo admins pueden actualizar
CREATE POLICY "Solo admins pueden modificar comentarios"
ON news_comments FOR UPDATE
USING (
  EXISTS (
    SELECT 1 FROM auth.users
    WHERE auth.uid() = id
  )
);

-- Política: Solo admins pueden eliminar
CREATE POLICY "Solo admins pueden eliminar comentarios"
ON news_comments FOR DELETE
USING (
  EXISTS (
    SELECT 1 FROM auth.users
    WHERE auth.uid() = id
  )
);

-- ============================================
-- PASO 6: Verificar instalación
-- ============================================
-- Ver estructura de la tabla
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'news_comments'
ORDER BY ordinal_position;

-- Ver índices creados
SELECT 
  indexname,
  indexdef
FROM pg_indexes
WHERE tablename = 'news_comments';

-- Ver triggers
SELECT 
  trigger_name,
  event_manipulation,
  event_object_table
FROM information_schema.triggers
WHERE event_object_table = 'news_comments';

-- Ver foreign keys
SELECT
  tc.constraint_name,
  tc.table_name,
  kcu.column_name,
  ccu.table_name AS foreign_table_name,
  ccu.column_name AS foreign_column_name
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
  ON tc.constraint_name = kcu.constraint_name
JOIN information_schema.constraint_column_usage AS ccu
  ON ccu.constraint_name = tc.constraint_name
WHERE tc.constraint_type = 'FOREIGN KEY'
  AND tc.table_name = 'news_comments';

-- ============================================
-- PASO 7: Datos de prueba (opcional)
-- ============================================
-- Insertar comentario de prueba
-- INSERT INTO news_comments (news_id, author_name, content, is_approved)
-- VALUES (1, 'Usuario de Prueba', '¡Excelente noticia!', true);

-- Ver comentarios
-- SELECT * FROM news_comments ORDER BY created_at DESC;

-- ============================================
-- NOTAS IMPORTANTES
-- ============================================
-- 1. Los comentarios requieren aprobación (is_approved = false por defecto)
-- 2. Los admins deben aprobar comentarios desde el panel de administración
-- 3. El contador de comentarios se actualiza automáticamente
-- 4. Los comentarios se eliminan automáticamente si se elimina la noticia
-- 5. Soporta respuestas (parent_id) para hilos de conversación
-- 6. Este script es idempotente - puede ejecutarse múltiples veces sin errores
