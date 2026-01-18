-- ============================================================================
-- Agregar columnas de tracking a la tabla news
-- ============================================================================
-- Este script agrega las columnas created_by y updated_by a la tabla news
-- para rastrear quién crea y modifica las noticias
-- ============================================================================

-- Para MySQL/MariaDB
-- ALTER TABLE news 
-- ADD COLUMN IF NOT EXISTS created_by VARCHAR(255) NULL,
-- ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255) NULL;

-- Para PostgreSQL (Supabase)
ALTER TABLE news 
ADD COLUMN IF NOT EXISTS created_by VARCHAR(255) NULL;

ALTER TABLE news 
ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255) NULL;

-- Crear índices para mejorar el rendimiento
CREATE INDEX IF NOT EXISTS idx_news_created_by ON news(created_by);
CREATE INDEX IF NOT EXISTS idx_news_updated_by ON news(updated_by);

-- Verificar que las columnas se agregaron correctamente
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'news'
  AND column_name IN ('created_by', 'updated_by');

-- ============================================================================
-- Resultado esperado:
-- column_name  | data_type        | is_nullable
-- -------------+------------------+-------------
-- created_by   | character varying| YES
-- updated_by   | character varying| YES
-- ============================================================================
