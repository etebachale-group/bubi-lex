-- Migración: Agregar tracking de colaboradores
-- Fecha: 2025-01-17
-- Descripción: Agrega campos para rastrear quién creó/editó cada entrada

-- Agregar columnas a dictionary_entries
ALTER TABLE public.dictionary_entries
ADD COLUMN IF NOT EXISTS created_by VARCHAR(255),
ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255);

-- Agregar índices para mejorar performance
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_created_by ON public.dictionary_entries(created_by);
CREATE INDEX IF NOT EXISTS idx_dictionary_entries_updated_by ON public.dictionary_entries(updated_by);

-- Agregar comentarios
COMMENT ON COLUMN public.dictionary_entries.created_by IS 'Email del usuario que creó la entrada';
COMMENT ON COLUMN public.dictionary_entries.updated_by IS 'Email del usuario que actualizó la entrada por última vez';

-- Agregar columnas a news (para consistencia)
ALTER TABLE public.news
ADD COLUMN IF NOT EXISTS created_by VARCHAR(255),
ADD COLUMN IF NOT EXISTS updated_by VARCHAR(255);

-- Agregar índices
CREATE INDEX IF NOT EXISTS idx_news_created_by ON public.news(created_by);
CREATE INDEX IF NOT EXISTS idx_news_updated_by ON public.news(updated_by);

-- Agregar comentarios
COMMENT ON COLUMN public.news.created_by IS 'Email del usuario que creó la noticia';
COMMENT ON COLUMN public.news.updated_by IS 'Email del usuario que actualizó la noticia por última vez';

-- Verificar que las columnas se agregaron correctamente
SELECT 
    column_name, 
    data_type, 
    is_nullable
FROM information_schema.columns
WHERE table_name = 'dictionary_entries' 
    AND column_name IN ('created_by', 'updated_by')
ORDER BY ordinal_position;

SELECT 
    column_name, 
    data_type, 
    is_nullable
FROM information_schema.columns
WHERE table_name = 'news' 
    AND column_name IN ('created_by', 'updated_by')
ORDER BY ordinal_position;
