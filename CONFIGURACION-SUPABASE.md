# 🔧 Configuración de Supabase - BubiLex

## 📋 Requisitos Previos

- Cuenta en [Supabase](https://supabase.com)
- Proyecto creado en Supabase
- Node.js instalado

---

## 🚀 Pasos de Configuración

### 1. Obtener Credenciales de Supabase

1. Ve a tu [Dashboard de Supabase](https://app.supabase.com)
2. Selecciona tu proyecto
3. Ve a **Settings** → **API**
4. Copia las siguientes credenciales:
   - **Project URL** (ejemplo: `https://xxxxx.supabase.co`)
   - **anon/public key** (empieza con `eyJ...`)

### 2. Configurar Variables de Entorno

1. Copia el archivo de ejemplo:
   ```bash
   cp .env.example .env.local
   ```

2. Edita `.env.local` y actualiza:
   ```env
   NEXT_PUBLIC_SUPABASE_URL=https://tu-proyecto.supabase.co
   NEXT_PUBLIC_SUPABASE_ANON_KEY=tu-anon-key-aqui
   ```

### 3. Crear Tablas en Supabase

#### Opción A: Usando el SQL Editor (Recomendado)

1. Ve a tu proyecto en Supabase
2. Abre **SQL Editor** en el menú lateral
3. Crea una nueva query
4. Copia y pega el contenido de `db/schema.sql`
5. Haz clic en **Run** o presiona `Ctrl+Enter`
6. Verifica que las tablas se crearon en **Table Editor**

#### Opción B: Usando el script de reparación

1. Abre **SQL Editor** en Supabase
2. Copia y pega el contenido de `db/repair-database.sql`
3. Ejecuta el script
4. Este script es más completo e incluye:
   - Creación de tablas
   - Índices optimizados
   - Eliminación de duplicados
   - Tablas de auditoría
   - Row Level Security

### 4. Verificar Conexión

Ejecuta el script de verificación:

```bash
node scripts/verify-supabase-connection.js
```

Deberías ver:
```
✅ ¡Conexión a Supabase exitosa!
✅ Todas las tablas principales están configuradas correctamente
🎉 Tu aplicación está lista para funcionar
```

---

## 📊 Estructura de la Base de Datos

### Tablas Principales

#### `dictionary_entries`
Almacena las palabras del diccionario Bubi-Español.

```sql
- id (BIGSERIAL PRIMARY KEY)
- bubi (TEXT) - Palabra en Bubi
- spanish (TEXT) - Traducción al español
- ipa (TEXT) - Pronunciación IPA
- notes (TEXT) - Notas adicionales
- created_at (TIMESTAMPTZ)
- updated_at (TIMESTAMPTZ)
- created_by (VARCHAR) - Email del creador
- updated_by (VARCHAR) - Email del último editor
```

#### `news`
Almacena las noticias y publicaciones.

```sql
- id (BIGSERIAL PRIMARY KEY)
- title (VARCHAR) - Título de la noticia
- content (TEXT) - Contenido
- date (DATE) - Fecha de publicación
- image (VARCHAR) - URL de imagen
- video (VARCHAR) - URL de video
- likes (INTEGER) - Contador de likes
- created_at (TIMESTAMPTZ)
- updated_at (TIMESTAMPTZ)
- created_by (VARCHAR)
- updated_by (VARCHAR)
```

### Tablas Opcionales

#### `audit_log`
Registra acciones de administradores (opcional).

```sql
- id (BIGSERIAL PRIMARY KEY)
- actor_email (VARCHAR)
- action (VARCHAR)
- target (INTEGER)
- meta (JSONB)
- created_at (TIMESTAMPTZ)
```

#### `dictionary_events`
Registra cambios en el diccionario (opcional).

```sql
- id (BIGSERIAL PRIMARY KEY)
- entry_id (INTEGER)
- event_type (VARCHAR)
- actor_email (VARCHAR)
- changes (JSONB)
- created_at (TIMESTAMPTZ)
```

---

## 🔍 Verificación Manual

### Verificar Tablas

1. Ve a **Table Editor** en Supabase
2. Deberías ver las tablas:
   - ✅ `dictionary_entries`
   - ✅ `news`
   - ⚠️ `audit_log` (opcional)
   - ⚠️ `dictionary_events` (opcional)

### Verificar Índices

1. Ve a **SQL Editor**
2. Ejecuta:
   ```sql
   SELECT 
     schemaname,
     tablename,
     indexname
   FROM pg_indexes
   WHERE schemaname = 'public'
   ORDER BY tablename, indexname;
   ```

3. Deberías ver índices como:
   - `dictionary_entries_pkey`
   - `idx_dictionary_entries_created_by`
   - `unique_bubi_lower`
   - `news_pkey`
   - etc.

### Verificar Datos

```sql
-- Contar palabras en el diccionario
SELECT COUNT(*) FROM dictionary_entries;

-- Contar noticias
SELECT COUNT(*) FROM news;

-- Ver últimas 5 palabras agregadas
SELECT bubi, spanish, created_at 
FROM dictionary_entries 
ORDER BY created_at DESC 
LIMIT 5;
```

---

## 🛠️ Solución de Problemas

### Error: "relation does not exist"

**Problema**: Las tablas no existen en la base de datos.

**Solución**:
1. Ejecuta `db/schema.sql` en el SQL Editor de Supabase
2. O ejecuta `db/repair-database.sql` para una configuración completa

### Error: "Invalid API key"

**Problema**: La API key es incorrecta o ha expirado.

**Solución**:
1. Ve a Settings → API en Supabase
2. Copia la **anon/public key** correcta
3. Actualiza `.env.local`
4. Reinicia el servidor de desarrollo

### Error: "Failed to fetch"

**Problema**: URL de Supabase incorrecta o proyecto pausado.

**Solución**:
1. Verifica que la URL sea correcta
2. Asegúrate de que tu proyecto esté activo en Supabase
3. Verifica tu conexión a internet

### Error: "duplicate key value violates unique constraint"

**Problema**: Intentas insertar una palabra que ya existe.

**Solución**:
1. Usa la función de búsqueda para verificar duplicados
2. O ejecuta el script de limpieza de duplicados:
   ```sql
   -- Ver en /admin/dictionary/duplicates
   ```

---

## 📝 Configuración Adicional

### Row Level Security (RLS)

El script `db/repair-database.sql` configura RLS automáticamente:

- **Lectura pública**: Todos pueden ver el diccionario y noticias
- **Escritura autenticada**: Solo usuarios autenticados pueden modificar
- **Admin**: Acceso completo

### Políticas de Seguridad

```sql
-- Ver políticas actuales
SELECT * FROM pg_policies WHERE schemaname = 'public';
```

---

## ✅ Checklist de Configuración

- [ ] Proyecto creado en Supabase
- [ ] Credenciales copiadas a `.env.local`
- [ ] Script `db/schema.sql` ejecutado
- [ ] Tablas verificadas en Table Editor
- [ ] Script de verificación ejecutado exitosamente
- [ ] Aplicación conecta correctamente

---

## 🔗 Enlaces Útiles

- [Supabase Dashboard](https://app.supabase.com)
- [Documentación de Supabase](https://supabase.com/docs)
- [SQL Editor](https://app.supabase.com/project/_/sql)
- [Table Editor](https://app.supabase.com/project/_/editor)

---

## 📞 Soporte

Si tienes problemas:

1. Ejecuta el script de verificación:
   ```bash
   node scripts/verify-supabase-connection.js
   ```

2. Revisa los logs en la consola del navegador

3. Verifica las credenciales en `.env.local`

4. Asegúrate de que las tablas existan en Supabase

---

**Última actualización**: 2025-01-18  
**Versión**: 1.0
