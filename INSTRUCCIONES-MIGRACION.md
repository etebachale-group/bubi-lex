# 📋 Instrucciones de Migración - Sistema de Tracking de Colaboradores

## ⚠️ IMPORTANTE: Migración de Base de Datos Requerida

Para que el sistema de roles y tracking de colaboradores funcione correctamente, **DEBES ejecutar la migración SQL en Supabase**.

## 🎯 ¿Qué hace esta migración?

La migración agrega dos campos nuevos a las tablas `dictionary_entries` y `news`:
- `created_by`: Email del usuario que creó la entrada
- `updated_by`: Email del usuario que actualizó la entrada por última vez

Estos campos permiten:
- ✅ Rastrear quién agregó cada palabra al diccionario
- ✅ Mostrar estadísticas personalizadas en el panel de colaborador
- ✅ Permitir que colaboradores vean "Mis Contribuciones"
- ✅ Auditoría completa de cambios en el diccionario y noticias

## 📝 Pasos para Ejecutar la Migración

### Opción 1: Usando Supabase Dashboard (RECOMENDADO)

1. **Abre tu proyecto en Supabase Dashboard**
   - Ve a: https://supabase.com/dashboard
   - Selecciona tu proyecto BubiLex

2. **Abre el SQL Editor**
   - En el menú lateral, haz clic en "SQL Editor"
   - Haz clic en "New query"

3. **Copia y pega el siguiente SQL:**

```sql
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
```

4. **Ejecuta el SQL**
   - Haz clic en el botón "Run" o presiona `Ctrl+Enter` (Windows) / `Cmd+Enter` (Mac)
   - Verifica que no haya errores en la consola

5. **Verifica los resultados**
   - Deberías ver dos tablas de resultados al final mostrando las nuevas columnas
   - Ambas tablas deben mostrar `created_by` y `updated_by` con tipo `character varying`

### Opción 2: Usando el Script de Node.js

Si prefieres usar el script automatizado:

```bash
node scripts/add-collaborator-tracking.js
```

**NOTA:** Este script solo verifica el estado actual y muestra el SQL que debes ejecutar. No puede ejecutar la migración directamente por limitaciones de permisos.

## ✅ Verificación Post-Migración

Después de ejecutar la migración, verifica que todo funcione:

1. **Verifica las columnas en Supabase:**
   - Ve a "Table Editor" en Supabase Dashboard
   - Abre la tabla `dictionary_entries`
   - Deberías ver las columnas `created_by` y `updated_by`

2. **Prueba agregar una palabra:**
   - Inicia sesión como colaborador
   - Ve a `/collaborator/dictionary/add`
   - Agrega una palabra de prueba
   - Ve a "Mis Contribuciones" (`/collaborator/dictionary/my-words`)
   - Deberías ver la palabra que acabas de agregar

3. **Verifica las estadísticas:**
   - Ve al panel de colaborador (`/collaborator`)
   - Las estadísticas deberían mostrar números reales basados en tus contribuciones

## 🔧 Solución de Problemas

### Error: "column already exists"
✅ **Esto es normal.** El SQL usa `IF NOT EXISTS`, así que es seguro ejecutarlo múltiples veces.

### Error: "permission denied"
❌ **Problema:** Tu usuario no tiene permisos para modificar el esquema.
✅ **Solución:** Asegúrate de estar usando el SQL Editor en Supabase Dashboard con tu cuenta de administrador.

### Las estadísticas muestran 0 palabras
❌ **Problema:** Las palabras existentes no tienen `created_by` porque fueron agregadas antes de la migración.
✅ **Solución:** Las palabras nuevas que agregues después de la migración sí tendrán el campo `created_by` correctamente.

### No puedo ver "Mis Contribuciones"
❌ **Problema:** Tu email no está en la lista de colaboradores.
✅ **Solución:** Verifica que tu email esté en la variable de entorno `COLLABORATOR_GOOGLE_EMAILS` o `ADMIN_GOOGLE_EMAILS` en `.env.local`.

## 📊 Estructura de las Nuevas Columnas

### dictionary_entries
```sql
created_by VARCHAR(255)  -- Email del creador (ej: "usuario@gmail.com")
updated_by VARCHAR(255)  -- Email del último editor
```

### news
```sql
created_by VARCHAR(255)  -- Email del creador
updated_by VARCHAR(255)  -- Email del último editor
```

## 🚀 Funcionalidades Habilitadas

Una vez completada la migración, tendrás acceso a:

1. **Panel de Colaborador Mejorado** (`/collaborator`)
   - Estadísticas reales de tus contribuciones
   - Contador de palabras agregadas hoy, esta semana, total
   - Porcentaje de completitud de tus palabras

2. **Mis Contribuciones** (`/collaborator/dictionary/my-words`)
   - Lista de todas las palabras que has agregado
   - Búsqueda en tus propias palabras
   - Edición rápida de tus contribuciones
   - Estadísticas detalladas

3. **Auditoría Completa**
   - Registro de quién creó cada entrada
   - Registro de quién hizo la última modificación
   - Trazabilidad completa de cambios

## 📞 Soporte

Si tienes problemas con la migración:
1. Verifica que estés usando Supabase Dashboard con permisos de administrador
2. Revisa los logs de error en el SQL Editor
3. Asegúrate de que las tablas `dictionary_entries` y `news` existan
4. Verifica que tu proyecto de Supabase esté activo y accesible

## 🎉 ¡Listo!

Una vez completada la migración, el sistema de tracking de colaboradores estará completamente funcional. Los colaboradores podrán ver sus contribuciones y las estadísticas se actualizarán automáticamente.
