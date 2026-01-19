# 📝 Instrucciones para Ejecutar SQL - Sistema de Relatos

## ⚠️ IMPORTANTE: Ejecutar ANTES de usar el sistema

El sistema de relatos requiere que ejecutes un script SQL en Supabase para crear las tablas y configuraciones necesarias.

---

## 🎯 Paso a Paso

### 1. Abrir Supabase Dashboard
1. Ve a: https://supabase.com/dashboard
2. Selecciona tu proyecto BubiLex
3. En el menú lateral, busca "SQL Editor"
4. Haz clic en "SQL Editor"

### 2. Crear Nueva Query
1. Haz clic en el botón "+ New query"
2. Dale un nombre: "Sistema de Relatos"

### 3. Copiar el Script
1. Abre el archivo: `db/add-stories-system.sql`
2. Copia TODO el contenido (Ctrl+A, Ctrl+C)

### 4. Pegar y Ejecutar
1. Pega el contenido en el editor SQL de Supabase
2. Haz clic en el botón "Run" (o presiona Ctrl+Enter)
3. Espera a que termine (debería tomar 2-5 segundos)

### 5. Verificar Éxito
Deberías ver mensajes como:
```
✓ CREATE TABLE
✓ CREATE INDEX
✓ ALTER TABLE
✓ CREATE POLICY
```

---

## ✅ Verificación

### Verificar Tabla Stories
```sql
-- Ejecutar en SQL Editor
SELECT 
  column_name, 
  data_type, 
  is_nullable
FROM information_schema.columns
WHERE table_name = 'stories'
ORDER BY ordinal_position;
```

**Resultado esperado:** Deberías ver 14 columnas:
- id
- title
- content
- author_name
- author_email
- is_approved
- is_rejected
- rejection_reason
- created_at
- updated_at
- approved_at
- approved_by
- views
- likes

### Verificar Campos en News
```sql
-- Ejecutar en SQL Editor
SELECT 
  column_name, 
  data_type
FROM information_schema.columns
WHERE table_name = 'news' 
  AND column_name IN (
    'is_approved', 
    'is_rejected', 
    'rejection_reason', 
    'author_name', 
    'author_email', 
    'approved_at', 
    'approved_by'
  );
```

**Resultado esperado:** Deberías ver 7 columnas nuevas en la tabla news.

### Verificar Políticas RLS
```sql
-- Ejecutar en SQL Editor
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd
FROM pg_policies
WHERE tablename = 'stories';
```

**Resultado esperado:** Deberías ver 4 políticas:
1. "Relatos aprobados son públicos" (SELECT)
2. "Todos pueden crear relatos" (INSERT)
3. "Solo admins pueden modificar relatos" (UPDATE)
4. "Solo admins pueden eliminar relatos" (DELETE)

---

## 🔍 Prueba Rápida

### Insertar Relato de Prueba
```sql
-- Ejecutar en SQL Editor
INSERT INTO stories (
  title, 
  content, 
  author_name, 
  is_approved
) VALUES (
  'Relato de Prueba',
  'Este es un relato de prueba sobre la cultura Bubi. Aquí contaríamos una historia fascinante...',
  'Usuario de Prueba',
  true
);
```

### Ver Relatos
```sql
-- Ejecutar en SQL Editor
SELECT 
  id, 
  title, 
  author_name, 
  is_approved, 
  is_rejected, 
  created_at 
FROM stories 
ORDER BY created_at DESC;
```

### Limpiar Prueba (Opcional)
```sql
-- Ejecutar en SQL Editor
DELETE FROM stories WHERE title = 'Relato de Prueba';
```

---

## 🐛 Solución de Problemas

### Error: "relation 'stories' already exists"
**Causa:** La tabla ya fue creada anteriormente.

**Solución:**
```sql
-- Opción 1: Eliminar y recrear (CUIDADO: Borra todos los datos)
DROP TABLE IF EXISTS stories CASCADE;
-- Luego ejecuta el script completo de nuevo

-- Opción 2: Continuar (si la tabla ya está bien configurada)
-- No hacer nada, el script es idempotente
```

### Error: "column 'is_approved' already exists"
**Causa:** Los campos ya fueron agregados a la tabla news.

**Solución:** No hacer nada, el script maneja esto automáticamente con `IF NOT EXISTS`.

### Error: "permission denied"
**Causa:** No tienes permisos de administrador en Supabase.

**Solución:**
1. Verifica que estás usando el usuario correcto
2. Asegúrate de tener rol de "Owner" o "Admin" en el proyecto

### Error: "syntax error"
**Causa:** El script no se copió completamente.

**Solución:**
1. Asegúrate de copiar TODO el contenido del archivo
2. Verifica que no haya caracteres extraños
3. Intenta copiar de nuevo

---

## 📊 Qué Hace el Script

### 1. Crea Tabla `stories`
- Estructura completa para relatos
- Campos de moderación
- Contadores de engagement
- Timestamps automáticos

### 2. Agrega Campos a `news`
- Sistema de moderación
- Información de autor
- Timestamps de aprobación

### 3. Crea Índices
- Mejora rendimiento de consultas
- Índices en campos más consultados:
  - `is_approved`
  - `created_at`
  - `author_email`
  - `views`

### 4. Configura RLS (Row Level Security)
- Protege datos sensibles
- Solo relatos aprobados son públicos
- Solo admins pueden modificar

### 5. Aprueba Noticias Existentes
- Marca todas las noticias actuales como aprobadas
- Evita que desaparezcan del sitio

---

## 🎯 Después de Ejecutar

### 1. Reiniciar Servidor (Opcional)
```bash
# Si el servidor está corriendo
# Detener: Ctrl+C
# Iniciar de nuevo:
npm run dev
```

### 2. Probar en la Aplicación
1. Ve a: `http://localhost:3000/stories`
2. Deberías ver la página sin errores
3. Intenta enviar un relato de prueba

### 3. Probar Panel Admin
1. Inicia sesión como admin
2. Ve a: `http://localhost:3000/admin`
3. Deberías ver la sección "Relatos"
4. Haz clic y verifica que carga sin errores

---

## 📝 Notas Importantes

### Idempotencia
El script es **idempotente**, lo que significa que:
- ✅ Puede ejecutarse múltiples veces sin problemas
- ✅ No duplica datos
- ✅ No causa errores si ya existe

### Datos Existentes
- ✅ No afecta datos existentes en otras tablas
- ✅ No elimina noticias actuales
- ✅ Marca noticias existentes como aprobadas automáticamente

### Reversión
Si necesitas revertir los cambios:
```sql
-- CUIDADO: Esto elimina TODOS los relatos
DROP TABLE IF EXISTS stories CASCADE;

-- Eliminar campos de news (opcional)
ALTER TABLE news 
  DROP COLUMN IF EXISTS is_approved,
  DROP COLUMN IF EXISTS is_rejected,
  DROP COLUMN IF EXISTS rejection_reason,
  DROP COLUMN IF EXISTS author_name,
  DROP COLUMN IF EXISTS author_email,
  DROP COLUMN IF EXISTS approved_at,
  DROP COLUMN IF EXISTS approved_by;
```

---

## 🆘 ¿Necesitas Ayuda?

### Recursos
- **Documentación Completa:** `SISTEMA-COMPLETO-RELATOS-MODERACION.md`
- **Guía Rápida:** `GUIA-RAPIDA-RELATOS.md`
- **Script SQL:** `db/add-stories-system.sql`

### Contacto
Si encuentras problemas:
1. Revisa los mensajes de error en Supabase
2. Verifica que copiaste el script completo
3. Asegúrate de tener permisos de admin
4. Consulta la documentación de Supabase

---

## ✅ Checklist Final

Antes de continuar, verifica:

- [ ] Script SQL ejecutado sin errores
- [ ] Tabla `stories` creada
- [ ] Campos agregados a `news`
- [ ] Índices creados
- [ ] Políticas RLS configuradas
- [ ] Prueba de inserción exitosa
- [ ] Página `/stories` carga sin errores
- [ ] Panel `/admin/stories` accesible

---

**¡Listo!** Una vez completado este checklist, el sistema de relatos está 100% funcional.
