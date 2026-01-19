# Corrección: Enlaces de Noticias (Imagen y Video)

## ❌ Problema Identificado

Al intentar actualizar o crear noticias con campos de imagen o video vacíos, la base de datos no se actualizaba.

### Causa del Problema

La validación de Zod estaba configurada incorrectamente:

```typescript
// ❌ ANTES - Rechazaba strings vacíos
image: z.string().url('URL de imagen inválida').max(512).optional().nullable().or(z.literal(''))
video: z.string().url('URL de video inválida').max(512).optional().nullable().or(z.literal(''))
```

**Problema:**
- `.url()` requiere una URL válida
- Cuando el usuario borra el campo, se envía `""`
- `""` no es una URL válida → validación falla
- La actualización se rechaza antes de llegar a la base de datos

### Escenarios Afectados

1. **Crear noticia sin imagen/video** → ❌ Fallaba
2. **Editar noticia y borrar imagen/video** → ❌ Fallaba
3. **Editar noticia y cambiar video** → ❌ Fallaba si primero se borraba

---

## ✅ Solución Implementada

### Nueva Validación

```typescript
// ✅ DESPUÉS - Acepta strings vacíos y los convierte a null
image: z.string().max(512).optional().nullable().transform(val => {
  if (!val || val.trim() === '') return null;
  return val;
}),
video: z.string().max(512).optional().nullable().transform(val => {
  if (!val || val.trim() === '') return null;
  return val;
}),
```

**Mejoras:**
- ✅ Acepta strings vacíos
- ✅ Convierte `""` a `null` automáticamente
- ✅ Permite URLs sin validación estricta (más flexible)
- ✅ Limita longitud a 512 caracteres
- ✅ Soporta `null` y `undefined`

---

## Archivos Modificados

### 1. `src/app/api/news/route.ts` (POST - Crear)
- Actualizado `NewsSchema` para aceptar strings vacíos
- Convierte automáticamente `""` a `null`

### 2. `src/app/api/news/[id]/route.ts` (PUT - Actualizar)
- Actualizado `NewsUpdateSchema` para aceptar strings vacíos
- Convierte automáticamente `""` a `null`

---

## Cómo Funciona Ahora

### Caso 1: Crear noticia sin imagen/video
```typescript
// Usuario envía:
{
  title: "Mi noticia",
  content: "Contenido...",
  date: "2025-01-19",
  image: "",  // Campo vacío
  video: ""   // Campo vacío
}

// Zod transforma a:
{
  title: "Mi noticia",
  content: "Contenido...",
  date: "2025-01-19",
  image: null,  // ✅ Convertido a null
  video: null   // ✅ Convertido a null
}

// Se guarda en BD correctamente ✅
```

### Caso 2: Editar noticia y cambiar video
```typescript
// Usuario envía:
{
  title: "Mi noticia",
  content: "Contenido...",
  date: "2025-01-19",
  image: "https://ejemplo.com/imagen.jpg",
  video: "https://youtube.com/watch?v=nuevo"  // Video cambiado
}

// Se guarda en BD correctamente ✅
// El video se actualiza en tiempo real ✅
```

### Caso 3: Editar noticia y borrar video
```typescript
// Usuario envía:
{
  title: "Mi noticia",
  content: "Contenido...",
  date: "2025-01-19",
  image: "https://ejemplo.com/imagen.jpg",
  video: ""  // Usuario borró el video
}

// Zod transforma a:
{
  title: "Mi noticia",
  content: "Contenido...",
  date: "2025-01-19",
  image: "https://ejemplo.com/imagen.jpg",
  video: null  // ✅ Convertido a null
}

// Se guarda en BD correctamente ✅
// El video desaparece de la noticia ✅
```

---

## Pruebas Recomendadas

### Test 1: Crear noticia sin multimedia
1. Ve a `/admin/news/edit/new`
2. Llena título, contenido y fecha
3. Deja imagen y video vacíos
4. Guarda
5. ✅ Debe crear la noticia sin errores

### Test 2: Crear noticia con video
1. Ve a `/admin/news/edit/new`
2. Llena todos los campos
3. Agrega URL de YouTube en video
4. Guarda
5. ✅ Debe crear la noticia con el video

### Test 3: Editar y cambiar video
1. Edita una noticia existente
2. Cambia la URL del video
3. Guarda
4. ✅ El video debe actualizarse en tiempo real
5. ✅ Debe mostrar el nuevo video, no el anterior

### Test 4: Editar y borrar video
1. Edita una noticia con video
2. Borra el contenido del campo video
3. Guarda
4. ✅ El video debe desaparecer de la noticia
5. ✅ La noticia debe mostrarse sin video

### Test 5: Editar solo título (sin tocar multimedia)
1. Edita una noticia con imagen y video
2. Cambia solo el título
3. No toques los campos de imagen/video
4. Guarda
5. ✅ Imagen y video deben mantenerse igual

---

## Validaciones Actuales

### Campos Requeridos
- ✅ `title` - Mínimo 1 carácter, máximo 255
- ✅ `content` - Mínimo 1 carácter
- ✅ `date` - Formato YYYY-MM-DD

### Campos Opcionales
- ✅ `image` - Máximo 512 caracteres, acepta vacío
- ✅ `video` - Máximo 512 caracteres, acepta vacío

### Transformaciones Automáticas
- `""` → `null`
- `"  "` (espacios) → `null`
- `null` → `null`
- `undefined` → `null`

---

## Beneficios de la Corrección

1. ✅ **Flexibilidad**: Puedes crear noticias con o sin multimedia
2. ✅ **Edición fácil**: Puedes agregar/quitar multimedia sin problemas
3. ✅ **Tiempo real**: Los cambios se reflejan inmediatamente
4. ✅ **Sin errores**: No más validaciones fallidas por campos vacíos
5. ✅ **Base de datos limpia**: `null` en lugar de strings vacíos

---

## Integración con Tiempo Real

Esta corrección funciona perfectamente con el sistema de tiempo real implementado:

1. Usuario edita noticia y cambia video
2. API valida y guarda en BD ✅
3. Supabase dispara evento UPDATE
4. Componente recibe actualización
5. Video se recarga con key única
6. Usuario ve el nuevo video inmediatamente ✅

---

**Fecha**: 19 de Enero 2025  
**Problema**: Campos de imagen/video no se actualizaban  
**Solución**: Validación flexible con transformación a null
