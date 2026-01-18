-- ============================================================================
-- ELIMINAR TODAS LAS PALABRAS DEL DICCIONARIO
-- ============================================================================
-- ⚠️ ADVERTENCIA: Este script eliminará TODAS las entradas del diccionario
-- ⚠️ Esta acción NO se puede deshacer
-- ⚠️ Asegúrate de tener un backup antes de ejecutar
-- ============================================================================

-- Opción 1: TRUNCATE (más rápido, reinicia el contador de IDs)
-- TRUNCATE TABLE dictionary_entries;

-- Opción 2: DELETE (mantiene el contador de IDs, permite rollback)
DELETE FROM dictionary_entries;

-- Verificar que la tabla está vacía
SELECT COUNT(*) as total_palabras FROM dictionary_entries;

-- Resultado esperado: total_palabras = 0

-- ============================================================================
-- NOTAS:
-- - TRUNCATE es más rápido pero no se puede deshacer
-- - DELETE es más lento pero permite hacer rollback si estás en una transacción
-- - Si tienes tablas relacionadas (dictionary_events), considera eliminarlas también
-- ============================================================================

-- Opcional: Eliminar también los eventos relacionados
-- DELETE FROM dictionary_events;

-- Opcional: Reiniciar el contador de IDs (solo si usaste DELETE)
-- Para PostgreSQL (Supabase):
-- ALTER SEQUENCE dictionary_entries_id_seq RESTART WITH 1;

-- ============================================================================
-- Para ejecutar este script:
-- 1. Abre Supabase Dashboard
-- 2. Ve a SQL Editor
-- 3. Copia y pega este script
-- 4. Ejecuta (Run o Ctrl+Enter)
-- ============================================================================
