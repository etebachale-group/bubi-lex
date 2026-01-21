# Guía de Instalación: Sistema de Colaboradores

**Fecha**: 22 de enero de 2026  
**Problema**: Error HTTP 500 al agregar colaboradores  
**Causa**: Tabla `user_roles` no existe en Supabase

---

## 🔴 Problema Identificado

El sistema de colaboradores falla con error HTTP 500 porque la tabla `user_roles` no existe en la base de datos de Supabase.

**Error en consola**:
```
POST https://bubi-lex.vercel.app/api/admin/collaborators [HTTP/2 500 500ms]
```

---

## ✅ Solución: Crear Tabla user_roles

### Paso 1: Acceder a Supabase

1. Ve a [https://supabase.com](https://supabase.com)
2. Inicia sesión en tu cuenta
3. Selecciona tu proyecto **bubi-lex**

### Paso 2: Abrir SQL Editor

1. En el menú lateral, haz clic en **SQL Editor**
2. Haz clic en **New Query** (Nueva consulta)

### Paso 3: Ejecutar Script SQL

1. Abre el archivo: `db/add-user-roles-system.sql`
2. **IMPORTANTE**: Antes de ejecutar, busca esta línea:

```sql
INSERT INTO user_roles (email, is_admin, can_edit_dictionary)
VALUES ('admin@bubilex.com', TRUE, TRUE)
```

3. **Reemplaza** `'admin@bubilex.com'` con **TU EMAIL REAL** (el que usas para iniciar sesión)

4. Copia TODO el contenido del archivo SQL
5. Pégalo en el SQL Editor de Supabase
6. Haz clic en **Run** (Ejecutar)

### Paso 4: Verificar Instalación

Deberías ver mensajes de éxito:

```
✓ CREATE TABLE
✓ CREATE INDEX (3 veces)
✓ CREATE FUNCTION
✓ CREATE TRIGGER
✓ ALTER TABLE
✓ CREATE POLICY (5 veces)
✓ INSERT (1 fila)
```

Al final verás una tabla con las columnas de `user_roles`:

| table_name | column_name | data_type | is_nullable |
|------------|-------------|-----------|-------------|
| user_roles | user_id | uuid | NO |
| user_roles | email | text | NO |
| user_roles | can_edit_dictionary | boolean | YES |
| user_roles | is_admin | boolean | YES |
| user_roles | created_at | timestamptz | YES |
| user_roles | updated_at | timestamptz | YES |

---

## 🧪 Probar el Sistema

### 1. Verificar que eres Admin

1. Ve a tu aplicación: `https://bubi-lex.vercel.app`
2. Inicia sesión con tu email
3. Ve a: **Admin → Colaboradores**
4. Deberías ver la página sin errores

### 2. Agregar un Colaborador

1. En la página de Colaboradores
2. Ingresa un email de prueba: `colaborador@ejemplo.com`
3. Haz clic en **Agregar**
4. Deberías ver: "Colaborador agregado exitosamente"

### 3. Verificar en Supabase

1. Ve a Supabase → **Table Editor**
2. Selecciona la tabla **user_roles**
3. Deberías ver 2 filas:
   - Tu email (admin)
   - El colaborador que agregaste

---

## 🔧 Solución de Problemas

### Error: "No autorizado"

**Causa**: Tu email no está marcado como admin

**Solución**:
```sql
-- En Supabase SQL Editor
UPDATE user_roles 
SET is_admin = TRUE, can_edit_dictionary = TRUE 
WHERE email = 'TU_EMAIL_AQUI@ejemplo.com';
```

### Error: "Este email ya está registrado"

**Causa**: El email ya existe en la tabla

**Solución**: Normal, significa que el usuario ya está registrado. Puedes actualizar sus permisos:
```sql
UPDATE user_roles 
SET can_edit_dictionary = TRUE 
WHERE email = 'email@ejemplo.com';
```

### Error: "Error de permisos en la base de datos"

**Causa**: Las políticas RLS no están configuradas correctamente

**Solución**:
1. Ve a Supabase → **Authentication → Policies**
2. Selecciona la tabla **user_roles**
3. Verifica que existen 6 políticas:
   - Admins can view all user roles
   - Admins can insert user roles
   - Admins can update user roles
   - Admins can delete user roles
   - Users can view their own role

Si faltan, ejecuta nuevamente el script SQL completo.

### Error: "Cannot read properties of null"

**Causa**: No has iniciado sesión o tu sesión expiró

**Solución**:
1. Cierra sesión
2. Vuelve a iniciar sesión
3. Intenta nuevamente

---

## 📊 Estructura de la Tabla

```sql
CREATE TABLE user_roles (
  user_id UUID PRIMARY KEY,           -- ID único del usuario
  email TEXT UNIQUE NOT NULL,         -- Email del usuario
  can_edit_dictionary BOOLEAN,        -- Puede agregar palabras
  is_admin BOOLEAN,                   -- Es administrador
  created_at TIMESTAMPTZ,             -- Fecha de creación
  updated_at TIMESTAMPTZ              -- Última actualización
);
```

### Roles Disponibles

| Rol | is_admin | can_edit_dictionary | Permisos |
|-----|----------|---------------------|----------|
| **Administrador** | TRUE | TRUE | Todo: gestionar colaboradores, editar diccionario, moderar contenido |
| **Colaborador** | FALSE | TRUE | Agregar palabras al diccionario |
| **Usuario Normal** | FALSE | FALSE | Solo lectura |

---

## 🎯 Uso del Sistema

### Como Administrador

1. **Ver colaboradores**: Admin → Colaboradores
2. **Agregar colaborador**: Ingresar email → Agregar
3. **Remover colaborador**: Click en icono de basura → Confirmar

### Como Colaborador

1. Iniciar sesión con email registrado
2. Ir a: **Colaborador → Agregar Palabra**
3. Llenar formulario con todos los campos
4. Enviar para revisión del admin

---

## 📝 Comandos SQL Útiles

### Ver todos los colaboradores
```sql
SELECT email, can_edit_dictionary, is_admin, created_at 
FROM user_roles 
WHERE can_edit_dictionary = TRUE
ORDER BY created_at DESC;
```

### Ver todos los administradores
```sql
SELECT email, created_at 
FROM user_roles 
WHERE is_admin = TRUE;
```

### Promover usuario a admin
```sql
UPDATE user_roles 
SET is_admin = TRUE, can_edit_dictionary = TRUE 
WHERE email = 'usuario@ejemplo.com';
```

### Degradar admin a colaborador
```sql
UPDATE user_roles 
SET is_admin = FALSE 
WHERE email = 'usuario@ejemplo.com';
```

### Remover permisos de colaborador
```sql
UPDATE user_roles 
SET can_edit_dictionary = FALSE 
WHERE email = 'usuario@ejemplo.com';
```

### Eliminar usuario completamente
```sql
DELETE FROM user_roles 
WHERE email = 'usuario@ejemplo.com';
```

---

## ✅ Checklist de Instalación

- [ ] Acceder a Supabase
- [ ] Abrir SQL Editor
- [ ] Modificar email del admin en el script
- [ ] Ejecutar script completo
- [ ] Verificar que se creó la tabla
- [ ] Verificar que existen las políticas RLS
- [ ] Iniciar sesión en la aplicación
- [ ] Ir a Admin → Colaboradores
- [ ] Agregar un colaborador de prueba
- [ ] Verificar que aparece en la lista
- [ ] Verificar en Supabase Table Editor

---

## 🆘 Soporte

Si después de seguir esta guía el sistema sigue sin funcionar:

1. Abre la consola del navegador (F12)
2. Ve a la pestaña **Console**
3. Intenta agregar un colaborador
4. Copia el error completo que aparece
5. Comparte el error para diagnóstico

**Información útil para debugging**:
- URL del error
- Código de estado HTTP (500, 401, etc.)
- Mensaje de error completo
- Stack trace si está disponible
