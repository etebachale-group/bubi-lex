# 🔍 Diagnóstico Rápido - Sistema de Colaboradores

**Fecha**: 22 de enero de 2026  
**Problema**: "Sigue igual sin que el admin pueda agregar colaboradores"

---

## ⚡ Verificación Rápida

### Paso 1: ¿Ejecutaste el Script SQL?

**Pregunta**: ¿Ya ejecutaste el archivo `db/add-user-roles-system.sql` en Supabase?

- ❌ **NO** → Ve al **Paso 2: Instalación**
- ✅ **SÍ** → Ve al **Paso 3: Verificación**

---

## Paso 2: Instalación (Si NO ejecutaste el script)

### A. Ir a Supabase

1. Ve a [https://supabase.com](https://supabase.com)
2. Inicia sesión
3. Selecciona tu proyecto **bubi-lex**
4. Click en **SQL Editor** (menú lateral)
5. Click en **New Query**

### B. Preparar el Script

1. Abre el archivo: `db/add-user-roles-system.sql`
2. Busca la línea 71:
   ```sql
   VALUES ('admin@bubilex.com', TRUE, TRUE)
   ```
3. **CAMBIA** `'admin@bubilex.com'` por **TU EMAIL REAL**
   ```sql
   VALUES ('tu_email@ejemplo.com', TRUE, TRUE)
   ```

### C. Ejecutar

1. Copia TODO el contenido del archivo SQL
2. Pégalo en el SQL Editor de Supabase
3. Click en **Run** (botón verde)
4. Espera a que termine (10-15 segundos)

### D. Verificar Éxito

Deberías ver mensajes como:
```
✓ CREATE TABLE
✓ CREATE INDEX
✓ CREATE FUNCTION
✓ CREATE TRIGGER
✓ ALTER TABLE
✓ CREATE POLICY
✓ INSERT
```

**Si ves errores**, copia el error completo y compártelo.

---

## Paso 3: Verificación (Si YA ejecutaste el script)

### A. Verificar Tabla en Supabase

1. Ve a Supabase → **SQL Editor**
2. Ejecuta este script: `db/verify-user-roles-table.sql`
3. Revisa los resultados:

**Resultado Esperado**:
```
✅ La tabla user_roles EXISTE
```

**Si ves**:
```
❌ La tabla user_roles NO EXISTE
```
→ Vuelve al **Paso 2: Instalación**

### B. Verificar Tu Email

En los resultados, busca una tabla con tus datos:

| email | is_admin | can_edit_dictionary | created_at |
|-------|----------|---------------------|------------|
| tu_email@ejemplo.com | TRUE | TRUE | 2026-01-22... |

**Si NO aparece tu email**:
```sql
-- Ejecuta esto en Supabase SQL Editor
INSERT INTO user_roles (email, is_admin, can_edit_dictionary)
VALUES ('TU_EMAIL@ejemplo.com', TRUE, TRUE);
```

**Si aparece pero is_admin = FALSE**:
```sql
-- Ejecuta esto en Supabase SQL Editor
UPDATE user_roles 
SET is_admin = TRUE, can_edit_dictionary = TRUE 
WHERE email = 'TU_EMAIL@ejemplo.com';
```

### C. Verificar Políticas RLS

En los resultados, deberías ver 5 políticas:
1. Admins can view all user roles
2. Admins can insert user roles
3. Admins can update user roles
4. Admins can delete user roles
5. Users can view their own role

**Si ves 0 políticas** → Ejecuta nuevamente `db/add-user-roles-system.sql`

---

## Paso 4: Probar en la Aplicación

### A. Cerrar Sesión y Volver a Iniciar

1. Ve a tu aplicación: `https://bubi-lex.vercel.app`
2. **Cierra sesión** (importante)
3. **Inicia sesión nuevamente** con tu email
4. Ve a **Admin → Colaboradores**

### B. Intentar Agregar Colaborador

1. Ingresa un email de prueba: `test@ejemplo.com`
2. Click en **Agregar**
3. Observa qué pasa:

**✅ Éxito**: Ves "Colaborador agregado exitosamente"  
**❌ Error**: Anota el mensaje de error exacto

---

## Paso 5: Diagnóstico de Errores

### Error: "No autorizado"

**Causa**: Tu email no está marcado como admin

**Solución**:
```sql
-- En Supabase SQL Editor
UPDATE user_roles 
SET is_admin = TRUE, can_edit_dictionary = TRUE 
WHERE email = 'TU_EMAIL@ejemplo.com';
```

Luego cierra sesión y vuelve a iniciar sesión.

### Error: HTTP 500

**Causa**: La tabla no existe o las políticas RLS fallan

**Solución**:
1. Ejecuta `db/verify-user-roles-table.sql`
2. Si la tabla NO existe → Ejecuta `db/add-user-roles-system.sql`
3. Si la tabla existe pero 0 políticas → Ejecuta nuevamente `db/add-user-roles-system.sql`

### Error: "Este email ya está registrado"

**Causa**: El email ya existe (esto es normal)

**Solución**: Intenta con otro email diferente.

### Error: "Error de permisos en la base de datos"

**Causa**: Las políticas RLS no están configuradas

**Solución**: Ejecuta nuevamente `db/add-user-roles-system.sql` completo.

---

## Paso 6: Obtener Error Detallado

Si sigue sin funcionar:

### A. Abrir Consola del Navegador

1. En tu navegador, presiona **F12**
2. Ve a la pestaña **Console**
3. Intenta agregar un colaborador
4. Busca mensajes en rojo (errores)

### B. Copiar Error Completo

Copia TODO el error, incluyendo:
- URL del error
- Código de estado (500, 401, etc.)
- Mensaje de error
- Stack trace (si hay)

Ejemplo:
```
POST https://bubi-lex.vercel.app/api/admin/collaborators
[HTTP/2 500 500ms]

Error: relation "user_roles" does not exist
```

### C. Compartir Error

Comparte el error completo para diagnóstico específico.

---

## 📋 Checklist de Verificación

Marca cada paso que completaste:

- [ ] Ejecuté `db/add-user-roles-system.sql` en Supabase
- [ ] Cambié el email del admin en el script
- [ ] Vi mensajes de éxito (CREATE TABLE, etc.)
- [ ] Ejecuté `db/verify-user-roles-table.sql`
- [ ] Vi "✅ La tabla user_roles EXISTE"
- [ ] Mi email aparece en la tabla
- [ ] Mi email tiene is_admin = TRUE
- [ ] Vi 5 políticas RLS
- [ ] Cerré sesión y volví a iniciar sesión
- [ ] Intenté agregar un colaborador
- [ ] Copié el error de la consola (F12)

---

## 🆘 Información para Soporte

Si después de seguir todos los pasos sigue sin funcionar, proporciona:

1. **¿Ejecutaste el script SQL?** (Sí/No)
2. **Resultado de verify-user-roles-table.sql**: (Copia aquí)
3. **Tu email**: (El que usas para iniciar sesión)
4. **Error de la consola**: (Copia completo de F12 → Console)
5. **Captura de pantalla**: (Del error en la aplicación)

---

## ✅ Solución Alternativa Temporal

Si necesitas agregar un colaborador URGENTEMENTE mientras diagnosticamos:

```sql
-- Ejecuta esto directamente en Supabase SQL Editor
INSERT INTO user_roles (email, can_edit_dictionary, is_admin)
VALUES ('colaborador@ejemplo.com', TRUE, FALSE)
ON CONFLICT (email) DO UPDATE
SET can_edit_dictionary = TRUE;
```

Esto agrega el colaborador manualmente sin usar la interfaz.

---

**Última actualización**: 22 de enero de 2026  
**Guía completa**: `docs/GUIA-INSTALACION-COLABORADORES.md`
