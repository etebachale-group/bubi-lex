# 🔧 Solución - Error al Crear Relatos

**Error:** `Error al crear relato`  
**Fecha:** 19 de Enero 2025

---

## 🐛 Problema

Al intentar enviar un relato desde `/stories`, aparece el error:
```
Error al crear relato
```

---

## 🔍 Diagnóstico

### Posibles Causas

1. **Tabla `stories` no existe**
   - El script SQL no se ejecutó
   - Error al crear la tabla

2. **RLS (Row Level Security) mal configurado**
   - Políticas no permiten INSERT sin autenticación
   - Políticas mal definidas

3. **Campos faltantes o incorrectos**
   - Columnas no existen
   - Tipos de datos incorrectos

4. **Error de validación**
   - Datos no pasan validación Zod
   - Email inválido

---

## ✅ Solución Paso a Paso

### Paso 1: Verificar que la Tabla Existe

**Ejecutar en Supabase SQL Editor:**

```sql
-- Verificar tabla
SELECT EXISTS (
  SELECT FROM information_schema.tables 
  WHERE table_schema = 'public' 
  AND table_name = 'stories'
) AS table_exists;
```

**Resultado esperado:** `true`

**Si es `false`:**
→ Ejecutar `db/add-stories-system.sql`

---

### Paso 2: Verificar Estructura de la Tabla

**Ejecutar en Supabase SQL Editor:**

```sql
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'stories'
ORDER BY ordinal_position;
```

**Columnas esperadas:**
- id (integer)
- title (character varying)
- content (text)
- author_name (character varying)
- author_email (character varying)
- is_approved (boolean)
- is_rejected (boolean)
- rejection_reason (text)
- created_at (timestamp)
- updated_at (timestamp)
- approved_at (timestamp)
- approved_by (character varying)
- views (integer)
- likes (integer)

**Si faltan columnas:**
→ Ejecutar `db/add-stories-system.sql`

---

### Paso 3: Verificar RLS

**Ejecutar en Supabase SQL Editor:**

```sql
-- Ver políticas
SELECT policyname, cmd 
FROM pg_policies
WHERE tablename = 'stories';
```

**Políticas esperadas:**
1. "Relatos aprobados son públicos" (SELECT)
2. "Todos pueden crear relatos" (INSERT)
3. "Solo admins pueden modificar relatos" (UPDATE)
4. "Solo admins pueden eliminar relatos" (DELETE)

**Si faltan políticas:**
→ Ejecutar `db/add-stories-system.sql`

---

### Paso 4: Probar Inserción Manual

**Ejecutar en Supabase SQL Editor:**

```sql
-- Insertar relato de prueba
INSERT INTO stories (
  title, 
  content, 
  author_name
) VALUES (
  'Test',
  'Contenido de prueba',
  'Usuario Test'
) RETURNING id;
```

**Si funciona:**
✅ La tabla está bien configurada
→ El problema está en el código

**Si falla:**
❌ Problema con RLS o permisos
→ Ejecutar `db/add-stories-system.sql`

---

### Paso 5: Verificar Logs del Servidor

**En la terminal del servidor:**

```bash
# Buscar el error completo
# Debería mostrar más detalles ahora
```

**Logs mejorados mostrarán:**
- Body recibido
- Error de validación (si aplica)
- Error de Supabase con detalles
- Stack trace completo

---

### Paso 6: Probar desde el Frontend

**Ir a:** `http://localhost:3000/stories`

**Llenar formulario:**
- Título: "Test"
- Contenido: "Este es un relato de prueba"
- Nombre: "Usuario Test"
- Email: (dejar vacío o poner email válido)

**Enviar y revisar:**
1. Abrir DevTools (F12)
2. Ir a pestaña "Network"
3. Buscar request a `/api/stories`
4. Ver Response

**Si hay error:**
- Ver mensaje de error en Response
- Ver detalles en consola del servidor

---

## 🔧 Correcciones Aplicadas

### 1. Mejora en Logging

**Archivo:** `src/app/api/stories/route.ts`

**Cambios:**
- ✅ Log del body recibido
- ✅ Log detallado de errores de validación
- ✅ Log completo de errores de Supabase
- ✅ Mensajes de error más descriptivos

**Ahora muestra:**
```javascript
// Body recibido
console.log('Body recibido:', JSON.stringify(body, null, 2));

// Error de validación
console.error('Error de validación:', parsed.error.flatten());

// Error de Supabase
console.error('Error de Supabase:', {
  message: error.message,
  details: error.details,
  hint: error.hint,
  code: error.code
});
```

### 2. Validación de Email Mejorada

**Schema actualizado:**
```typescript
author_email: z.string()
  .email('Email inválido')
  .optional()
  .or(z.literal(''))
  .transform(val => val === '' ? null : val)
```

**Acepta:**
- ✅ Email válido: `user@example.com`
- ✅ Cadena vacía: `""`
- ✅ Undefined: `undefined`

**Convierte:**
- `""` → `null`
- Email válido → Email
- Undefined → `null`

---

## 📝 Script de Verificación

**Archivo creado:** `db/verify-stories-table.sql`

**Ejecutar para verificar:**
1. Tabla existe
2. Estructura correcta
3. RLS habilitado
4. Políticas configuradas
5. Inserción funciona

---

## 🚀 Pasos para Resolver

### Opción 1: Ejecutar Script SQL (Recomendado)

```bash
1. Ir a Supabase Dashboard
2. Abrir SQL Editor
3. Copiar contenido de: db/add-stories-system.sql
4. Ejecutar
5. Verificar con: db/verify-stories-table.sql
6. Reiniciar servidor: npm run dev
7. Probar en: http://localhost:3000/stories
```

### Opción 2: Verificar y Corregir

```bash
1. Ejecutar: db/verify-stories-table.sql
2. Identificar qué falta
3. Ejecutar: db/add-stories-system.sql
4. Verificar de nuevo
5. Reiniciar servidor
6. Probar
```

---

## ✅ Verificación Final

### Checklist

- [ ] Tabla `stories` existe
- [ ] Todas las columnas presentes
- [ ] RLS habilitado
- [ ] 4 políticas configuradas
- [ ] Inserción manual funciona
- [ ] Servidor reiniciado
- [ ] Logs muestran detalles
- [ ] Frontend funciona

### Prueba Final

```bash
1. Ir a: http://localhost:3000/stories
2. Clic en "Compartir tu Relato"
3. Llenar formulario
4. Enviar
5. ✅ Debe mostrar: "Relato enviado correctamente"
6. ✅ No debe mostrar errores
```

---

## 🐛 Errores Comunes

### Error: "relation 'stories' does not exist"
**Causa:** Tabla no creada  
**Solución:** Ejecutar `db/add-stories-system.sql`

### Error: "new row violates row-level security policy"
**Causa:** RLS mal configurado  
**Solución:** Ejecutar `db/add-stories-system.sql`

### Error: "column 'author_email' does not exist"
**Causa:** Columna faltante  
**Solución:** Ejecutar `db/add-stories-system.sql`

### Error: "Invalid email"
**Causa:** Validación rechaza cadena vacía  
**Solución:** Ya corregido en última versión

---

## 📞 Si el Problema Persiste

1. **Verificar logs del servidor**
   - Ahora muestran más detalles
   - Buscar el error específico

2. **Verificar Supabase**
   - Ir a Dashboard
   - Table Editor → stories
   - Verificar que existe

3. **Verificar variables de entorno**
   - NEXT_PUBLIC_SUPABASE_URL
   - NEXT_PUBLIC_SUPABASE_ANON_KEY
   - Deben estar correctas

4. **Reiniciar todo**
   ```bash
   # Detener servidor
   Ctrl+C
   
   # Limpiar caché
   rm -rf .next
   
   # Reinstalar
   npm install
   
   # Iniciar
   npm run dev
   ```

---

## 📊 Estado Actual

- ✅ Logging mejorado
- ✅ Validación corregida
- ✅ Script de verificación creado
- ✅ Documentación completa
- ⚠️ Requiere ejecutar SQL en Supabase

---

**Siguiente paso:** Ejecutar `db/add-stories-system.sql` en Supabase
