# Sistema de Relatos y Moderación Completo

## ✅ Implementación Completada

Se ha implementado un sistema completo de relatos con moderación y se ha agregado moderación a las noticias.

---

## Características Principales

### 1. Sistema de Relatos
- **Envío público**: Cualquier usuario puede enviar relatos
- **Moderación**: Requieren aprobación del admin
- **Información del autor**: Nombre y email opcional
- **Estadísticas**: Vistas y likes
- **Rechazo con razón**: Admin puede rechazar con explicación

### 2. Moderación de Noticias
- **Aprobación requerida**: Las noticias ahora requieren aprobación
- **Autor registrado**: Se guarda quién creó la noticia
- **Rechazo con razón**: Admin puede rechazar con explicación
- **Historial**: Se registra quién aprobó y cuándo

### 3. Verificación de Duplicados
- **Palabras del diccionario**: Se verifica que no existan antes de agregar
- **Constraint único**: Base de datos previene duplicados
- **Mensaje claro**: Indica qué palabra ya existe

---

## Archivos Creados

### Base de Datos
- `db/add-stories-system.sql` - Script SQL completo

### APIs de Relatos
- `src/app/api/stories/route.ts` - GET (listar) y POST (crear)
- `src/app/api/stories/[id]/route.ts` - GET (ver) y POST (like)

### APIs de Administración - Relatos
- `src/app/api/admin/stories/route.ts` - Listar todos (pendientes, aprobados, rechazados)
- `src/app/api/admin/stories/[id]/approve/route.ts` - Aprobar relato
- `src/app/api/admin/stories/[id]/reject/route.ts` - Rechazar relato

### APIs de Administración - Noticias
- `src/app/api/admin/news/[id]/approve/route.ts` - Aprobar noticia
- `src/app/api/admin/news/[id]/reject/route.ts` - Rechazar noticia

### Documentación
- `SISTEMA-RELATOS-Y-MODERACION.md` - Este documento

---

## Estructura de Base de Datos

### Tabla: stories

| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | SERIAL | ID único |
| title | VARCHAR(255) | Título del relato |
| content | TEXT | Contenido del relato |
| author_name | VARCHAR(100) | Nombre del autor |
| author_email | VARCHAR(255) | Email del autor (opcional) |
| is_approved | BOOLEAN | Estado de aprobación |
| is_rejected | BOOLEAN | Estado de rechazo |
| rejection_reason | TEXT | Razón del rechazo |
| created_at | TIMESTAMP | Fecha de creación |
| updated_at | TIMESTAMP | Fecha de actualización |
| approved_at | TIMESTAMP | Fecha de aprobación |
| approved_by | VARCHAR(255) | Quién aprobó |
| views | INTEGER | Número de vistas |
| likes | INTEGER | Número de likes |

### Tabla: news (nuevos campos)

| Campo | Tipo | Descripción |
|-------|------|-------------|
| is_approved | BOOLEAN | Estado de aprobación |
| is_rejected | BOOLEAN | Estado de rechazo |
| rejection_reason | TEXT | Razón del rechazo |
| author_name | VARCHAR(100) | Nombre del autor |
| author_email | VARCHAR(255) | Email del autor |
| approved_at | TIMESTAMP | Fecha de aprobación |
| approved_by | VARCHAR(255) | Quién aprobó |

---

## API Endpoints

### Relatos Públicos

#### GET /api/stories
Obtiene relatos aprobados (paginados)

**Query params:**
- `page` - Número de página (default: 1)
- `limit` - Relatos por página (default: 10)

**Respuesta:**
```json
{
  "stories": [...],
  "total": 50,
  "page": 1,
  "limit": 10
}
```

#### POST /api/stories
Crea un nuevo relato (requiere moderación)

**Request:**
```json
{
  "title": "Mi relato",
  "content": "Contenido del relato...",
  "author_name": "Juan Pérez",
  "author_email": "juan@example.com"
}
```

**Respuesta:**
```json
{
  "id": 1,
  "title": "Mi relato",
  "author_name": "Juan Pérez",
  "is_approved": false,
  "message": "Relato enviado correctamente. Será visible después de ser aprobado..."
}
```

#### GET /api/stories/[id]
Obtiene un relato específico (incrementa vistas)

#### POST /api/stories/[id]
Da like a un relato

---

### Administración de Relatos

#### GET /api/admin/stories
Obtiene todos los relatos (requiere admin)

**Query params:**
- `status` - pending | approved | rejected | all

**Respuesta:**
```json
{
  "stories": [...],
  "total": 25
}
```

#### POST /api/admin/stories/[id]/approve
Aprueba un relato (requiere admin)

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "id": 1,
    "title": "Mi relato",
    "author_name": "Juan Pérez"
  }
}
```

#### POST /api/admin/stories/[id]/reject
Rechaza un relato (requiere admin)

**Request:**
```json
{
  "reason": "El contenido no es apropiado"
}
```

---

### Administración de Noticias

#### POST /api/admin/news/[id]/approve
Aprueba una noticia (requiere admin)

#### POST /api/admin/news/[id]/reject
Rechaza una noticia (requiere admin)

**Request:**
```json
{
  "reason": "Contenido duplicado"
}
```

---

## Flujo de Moderación

### Relatos

1. **Usuario envía relato**
   - Llena formulario con título, contenido y nombre
   - Se guarda con `is_approved = false`
   - Usuario ve mensaje de confirmación

2. **Admin revisa relatos pendientes**
   - Ve lista de relatos pendientes
   - Lee contenido completo
   - Decide aprobar o rechazar

3. **Admin aprueba**
   - Marca `is_approved = true`
   - Registra quién aprobó y cuándo
   - Relato aparece en la página pública

4. **Admin rechaza**
   - Marca `is_rejected = true`
   - Escribe razón del rechazo
   - Relato no se muestra públicamente

### Noticias

1. **Usuario/Admin crea noticia**
   - Llena formulario completo
   - Se guarda con `is_approved = false` (si no es admin)
   - Admins pueden aprobar directamente

2. **Admin revisa noticias pendientes**
   - Ve lista de noticias pendientes
   - Lee contenido completo
   - Decide aprobar o rechazar

3. **Aprobación/Rechazo**
   - Mismo flujo que relatos
   - Se registra en auditoría

---

## Instalación

### Paso 1: Ejecutar Script SQL

Abre Supabase SQL Editor y ejecuta `db/add-stories-system.sql`

El script:
- ✅ Crea tabla `stories`
- ✅ Agrega campos de moderación a `news`
- ✅ Crea índices para rendimiento
- ✅ Configura Row Level Security
- ✅ Aprueba todas las noticias existentes

### Paso 2: Verificar Instalación

```sql
-- Ver estructura de stories
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'stories';

-- Ver nuevos campos en news
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'news' 
AND column_name IN ('is_approved', 'is_rejected', 'author_name');

-- Ver relatos pendientes
SELECT COUNT(*) FROM stories WHERE is_approved = false AND is_rejected = false;

-- Ver noticias pendientes
SELECT COUNT(*) FROM news WHERE is_approved = false AND is_rejected = false;
```

---

## Panel de Administración

### Próximos Pasos: Crear Interfaces

#### 1. Panel de Moderación de Relatos
`/admin/stories`

```typescript
// Listar relatos pendientes
const { data } = await fetch('/api/admin/stories?status=pending');

// Aprobar
await fetch(`/api/admin/stories/${id}/approve`, { method: 'POST' });

// Rechazar
await fetch(`/api/admin/stories/${id}/reject`, {
  method: 'POST',
  body: JSON.stringify({ reason: 'Razón...' })
});
```

#### 2. Panel de Moderación de Noticias
`/admin/news/moderate`

```typescript
// Similar a relatos
await fetch(`/api/admin/news/${id}/approve`, { method: 'POST' });
await fetch(`/api/admin/news/${id}/reject`, {
  method: 'POST',
  body: JSON.stringify({ reason: 'Razón...' })
});
```

#### 3. Página Pública de Relatos
`/stories`

```typescript
// Listar relatos aprobados
const { stories } = await fetch('/api/stories?page=1&limit=10');

// Ver relato específico
const story = await fetch(`/api/stories/${id}`);

// Dar like
await fetch(`/api/stories/${id}`, { method: 'POST' });
```

---

## Verificación de Duplicados

### Palabras del Diccionario

El sistema ya verifica duplicados automáticamente:

```typescript
// En src/app/api/dictionary/[id]/route.ts
const { data: existing } = await supabase
  .from('dictionary_entries')
  .select('id, bubi, spanish')
  .eq('bubi', bubi)
  .neq('id', idNum)
  .limit(1);

if (existing && existing.length > 0) {
  return NextResponse.json({ 
    error: 'Ya existe otra entrada con esta palabra en bubi',
    duplicate: existing[0]
  }, { status: 409 });
}
```

**Mensaje al usuario:**
```
Ya existe otra entrada con esta palabra en bubi.
ID: 123, Español: "casa"
```

---

## Permisos y Roles

### Admin
- ✅ Crear, editar, eliminar palabras
- ✅ Crear, editar, eliminar noticias
- ✅ Aprobar/rechazar relatos
- ✅ Aprobar/rechazar noticias
- ✅ Ver auditoría completa
- ✅ Gestionar colaboradores

### Colaborador
- ✅ Crear, editar palabras
- ✅ Ver sus propias palabras
- ❌ No puede eliminar
- ❌ No puede moderar

### Usuario
- ✅ Ver diccionario
- ✅ Ver noticias aprobadas
- ✅ Ver relatos aprobados
- ✅ Enviar relatos
- ✅ Comentar noticias
- ❌ No puede editar

---

## Auditoría

Todas las acciones de moderación se registran:

```typescript
recordAdminAudit({
  actorEmail: session.user?.email,
  action: 'story.approve', // o 'story.reject', 'news.approve', etc.
  target: id,
  meta: { title, author, reason }
});
```

**Acciones registradas:**
- `story.approve` - Relato aprobado
- `story.reject` - Relato rechazado
- `news.approve` - Noticia aprobada
- `news.reject` - Noticia rechazada
- `dictionary.update` - Palabra editada
- `dictionary.create` - Palabra creada
- `dictionary.delete` - Palabra eliminada

---

## Estadísticas

### Relatos
- **Vistas**: Se incrementan automáticamente al ver
- **Likes**: Los usuarios pueden dar like
- **Pendientes**: Contador de relatos sin moderar
- **Aprobados**: Total de relatos públicos
- **Rechazados**: Total de relatos rechazados

### Noticias
- **Likes**: Sistema existente
- **Comentarios**: Sistema existente
- **Pendientes**: Contador de noticias sin moderar
- **Aprobadas**: Total de noticias públicas

---

## Próximas Mejoras

### Relatos
1. Página pública `/stories`
2. Panel de moderación `/admin/stories`
3. Notificaciones por email al autor
4. Categorías de relatos
5. Búsqueda y filtros

### Noticias
6. Panel de moderación `/admin/news/moderate`
7. Notificaciones de noticias pendientes
8. Estadísticas de moderación

### General
9. Dashboard de moderación unificado
10. Reportes de actividad
11. Sistema de notificaciones push

---

**Fecha**: 19 de Enero 2025  
**Funcionalidad**: Sistema de relatos y moderación completo  
**Estado**: ✅ APIs implementadas, pendiente UI
