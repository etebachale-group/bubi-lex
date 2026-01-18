-- ============================================================================
-- Script de Reparación Completa de Base de Datos - Bubi Lex
-- ============================================================================
-- Este script repara y optimiza todas las tablas en Supabase
-- Ejecutar en el SQL Editor de Supabase
-- ============================================================================

-- 1. REPARAR TABLA dictionary_entries
-- ============================================================================

-- Agregar columnas faltantes si no existen
ALTER TABLE dictionary_entries 
ADD COLUMN IF NOT EXISTS created_by VARCHAR(255) NULL,
ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255) NULL;

-- Agregar índices para mejorar rendimiento
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_created_by ON dictionary_entries(created_by);
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_updated_by ON dictionary_entries(updated_by);

-- Crear índice de texto completo si no existe (PostgreSQL usa GIN)
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_bubi_gin ON dictionary_entries USING gin(to_tsvector('spanish', bubi));
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_spanish_gin ON dictionary_entries USING gin(to_tsvector('spanish', spanish));

-- Agregar índice único para prevenir duplicados en palabras Bubi
-- Primero eliminar duplicados existentes (mantener el más reciente)
WITH duplicates AS (
  SELECT id, bubi,
    ROW_NUMBER() OVER (PARTITION BY LOWER(TRIM(bubi)) ORDER BY created_at DESC, id DESC) as rn
  FROM dictionary_entries
)
DELETE FROM dictionary_entries
WHERE id IN (
  SELECT id FROM duplicates WHERE rn > 1
);

-- Crear índice único (case-insensitive)
CREATE UNIQUE INDEX IF NOT EXISTS unique_bubi_lower ON dictionary_entries(LOWER(TRIM(bubi)));


-- 2. REPARAR TABLA news
-- ============================================================================

-- Agregar columnas de auditoría si no existen
ALTER TABLE news 
ADD COLUMN IF NOT EXISTS created_by VARCHAR(255) NULL,
ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255) NULL;

-- Agregar índices para mejorar rendimiento
CREATE INDEX IF NOT EXISTS idx_news_date ON news(date DESC);
CREATE INDEX IF NOT EXISTS idx_news_created_at ON news(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_news_created_by ON news(created_by);

-- Prevenir duplicados de títulos en la misma fecha
CREATE UNIQUE INDEX IF NOT EXISTS unique_news_title_date ON news(title, date);


-- 3. CREAR/REPARAR TABLA audit_log
-- ============================================================================

CREATE TABLE IF NOT EXISTS audit_log (
  id BIGSERIAL PRIMARY KEY,
  actor_email VARCHAR(255) NULL,
  action VARCHAR(100) NOT NULL,
  target INTEGER NULL,
  meta JSONB NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

-- Índices para audit_log
CREATE INDEX IF NOT EXISTS idx_audit_log_actor_email ON audit_log(actor_email);
CREATE INDEX IF NOT EXISTS idx_audit_log_action ON audit_log(action);
CREATE INDEX IF NOT EXISTS idx_audit_log_created_at ON audit_log(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_audit_log_target ON audit_log(target);


-- 4. CREAR/REPARAR TABLA dictionary_events
-- ============================================================================

CREATE TABLE IF NOT EXISTS dictionary_events (
  id BIGSERIAL PRIMARY KEY,
  entry_id INTEGER NOT NULL,
  event_type VARCHAR(50) NOT NULL,
  actor_email VARCHAR(255) NULL,
  changes JSONB NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  FOREIGN KEY (entry_id) REFERENCES dictionary_entries(id) ON DELETE CASCADE
);

-- Índices para dictionary_events
CREATE INDEX IF NOT EXISTS idx_dictionary_events_entry_id ON dictionary_events(entry_id);
CREATE INDEX IF NOT EXISTS idx_dictionary_events_event_type ON dictionary_events(event_type);
CREATE INDEX IF NOT EXISTS idx_dictionary_events_actor_email ON dictionary_events(actor_email);
CREATE INDEX IF NOT EXISTS idx_dictionary_events_created_at ON dictionary_events(created_at DESC);


-- 5. OPTIMIZACIONES GENERALES
-- ============================================================================

-- Actualizar estadísticas de las tablas para mejorar el query planner
ANALYZE dictionary_entries;
ANALYZE news;
ANALYZE audit_log;
ANALYZE dictionary_events;

-- Verificar integridad de datos
-- Limpiar registros huérfanos si existen
DELETE FROM dictionary_events 
WHERE entry_id NOT IN (SELECT id FROM dictionary_entries);


-- 6. CONFIGURAR ROW LEVEL SECURITY (RLS) - Opcional pero recomendado
-- ============================================================================

-- Habilitar RLS en tablas sensibles
ALTER TABLE dictionary_entries ENABLE ROW LEVEL SECURITY;
ALTER TABLE news ENABLE ROW LEVEL SECURITY;
ALTER TABLE audit_log ENABLE ROW LEVEL SECURITY;
ALTER TABLE dictionary_events ENABLE ROW LEVEL SECURITY;

-- Eliminar políticas existentes si existen
DROP POLICY IF EXISTS "Allow public read access" ON dictionary_entries;
DROP POLICY IF EXISTS "Allow public read access" ON news;
DROP POLICY IF EXISTS "Allow authenticated insert" ON dictionary_entries;
DROP POLICY IF EXISTS "Allow authenticated update" ON dictionary_entries;
DROP POLICY IF EXISTS "Allow authenticated delete" ON dictionary_entries;
DROP POLICY IF EXISTS "Allow authenticated insert" ON news;
DROP POLICY IF EXISTS "Allow authenticated update" ON news;
DROP POLICY IF EXISTS "Allow authenticated delete" ON news;
DROP POLICY IF EXISTS "Allow authenticated read" ON audit_log;
DROP POLICY IF EXISTS "Allow service role write" ON audit_log;
DROP POLICY IF EXISTS "Allow authenticated read" ON dictionary_events;
DROP POLICY IF EXISTS "Allow service role write" ON dictionary_events;

-- Política: Todos pueden leer
CREATE POLICY "Allow public read access" ON dictionary_entries
  FOR SELECT USING (true);

CREATE POLICY "Allow public read access" ON news
  FOR SELECT USING (true);

-- Política: Solo autenticados pueden escribir (ajustar según tus necesidades)
CREATE POLICY "Allow authenticated insert" ON dictionary_entries
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated update" ON dictionary_entries
  FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated delete" ON dictionary_entries
  FOR DELETE USING (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated insert" ON news
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated update" ON news
  FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated delete" ON news
  FOR DELETE USING (auth.role() = 'authenticated');

-- Políticas para audit_log (solo lectura para autenticados)
CREATE POLICY "Allow authenticated read" ON audit_log
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "Allow service role write" ON audit_log
  FOR ALL USING (auth.role() = 'service_role');

-- Políticas para dictionary_events
CREATE POLICY "Allow authenticated read" ON dictionary_events
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "Allow service role write" ON dictionary_events
  FOR ALL USING (auth.role() = 'service_role');


-- 7. VERIFICACIÓN FINAL
-- ============================================================================

-- Contar registros en cada tabla
SELECT 'dictionary_entries' as tabla, COUNT(*) as registros FROM dictionary_entries
UNION ALL
SELECT 'news' as tabla, COUNT(*) as registros FROM news
UNION ALL
SELECT 'audit_log' as tabla, COUNT(*) as registros FROM audit_log
UNION ALL
SELECT 'dictionary_events' as tabla, COUNT(*) as registros FROM dictionary_events
ORDER BY tabla;

-- Verificar índices creados
SELECT 
  schemaname,
  tablename,
  indexname,
  indexdef
FROM pg_indexes
WHERE schemaname = 'public'
  AND tablename IN ('dictionary_entries', 'news', 'audit_log', 'dictionary_events')
ORDER BY tablename, indexname;

-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================
-- Notas:
-- 1. Este script es idempotente (se puede ejecutar múltiples veces)
-- 2. Elimina duplicados en dictionary_entries antes de crear índice único
-- 3. Agrega índices para mejorar rendimiento de búsquedas
-- 4. Configura RLS para seguridad (ajustar políticas según necesidades)
-- 5. Incluye verificaciones finales para confirmar que todo está correcto
-- ============================================================================
