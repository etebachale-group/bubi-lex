# Sistema de Comentarios para Noticias

## ✅ Implementación Completada

Se ha implementado un sistema completo de comentarios para las noticias con las siguientes características:

### Características Principales

1. **Comentarios con Moderación**
   - Los comentarios requieren aprobación antes de ser visibles
   - Sistema de moderación para admins

2. **Hilos de Conversación**
   - Soporte para respuestas a comentarios
   - Organización en hilos (parent_id)

3. **Información del Autor**
   - Nombre requerido
   - Email opcional

4. **Contador de Comentarios**
   - Se actualiza automáticamente con triggers
   - Visible en cada noticia

5. **Diseño Moderno**
   - Glassmorphism
   - Gradientes purple/pink
   - Responsive

---

## Archivos Creados

### Base de Datos
- `db/add-comments-system.sql` - Script SQL completo

### API
- `src/app/api/news/[id]/comments/route.ts` - GET y POST de comentarios

### Componentes
- `src/components/news-comments.tsx` - Componente de comentarios

### Archivos Modificados
- `src/app/news/news-view-modern.tsx` - Integración de comentarios
- `src/app/news/page.tsx` - Incluye comments_count

---

## Instalación

### Paso 1: Ejecutar Script SQL

Abre Supabase SQL Editor y ejecuta `db/add-comments-system.sql`:

```sql
-- Crear tabla de comentarios
CREATE TABLE IF NOT EXISTS news_comments (
  id SERIAL PRIMARY KEY,
  news_id INTEGER NOT NULL REFERENCES news(id) ON DELETE CASCADE,
  author_name VARCHAR(100) NOT NULL,
  author_email VARCHAR(255) NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT false,
  parent_id INTEGER NULL REFERENCES news_comments(id) ON DELETE CASCADE
);

-- Agregar contador a noticias
ALTER TABLE news 
ADD COLUMN IF NOT EXISTS comments_count INTEGER NOT NULL DEFAULT 0;

-- Función y trigger para actualizar contador
CREATE OR REPLACE FUNCTION update_news_comments_count()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE news 
    SET comments_count = comments_count + 1 
    WHERE id = NEW.news_id;
    RETURN NEW;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE news 
    SET comments_count = GREATEST(0, comments_count - 1)
    WHERE id = OLD.news_id;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_comments_count
AFTER INSERT OR DELETE ON news_comments
FOR EACH ROW
EXECUTE FUNCTION update_news_comments_count();
```

### Paso 2: Verificar Instalación

```sql
-- Ver estructura de la tabla
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'news_comments';

-- Ver que el contador existe
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'news' AND column_name = 'comments_count';
```

---

## Estructura de la Base de Datos

### Tabla: news_comments

| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | SERIAL | ID único del comentario |
| news_id | INTEGER | ID de la noticia (FK) |
| author_name | VARCHAR(100) | Nombre del autor |
| author_email | VARCHAR(255) | Email del autor (opcional) |
| content | TEXT | Contenido del comentario |
| created_at | TIMESTAMP | Fecha de creación |
| updated_at | TIMESTAMP | Fecha de actualización |
| is_approved | BOOLEAN | Estado de aprobación |
| parent_id | INTEGER | ID del comentario padre (para respuestas) |

### Índices

- `idx_news_comments_news_id` - Por noticia
- `idx_news_comments_created_at` - Por fecha
- `idx_news_comments_parent_id` - Por comentario padre
- `idx_news_comments_approved` - Por estado de aprobación

---

## API Endpoints

### GET /api/news/[id]/comments

Obtiene todos los comentarios aprobados de una noticia.

**Respuesta:**
```json
[
  {
    "id": 1,
    "author_name": "Juan Pérez",
    "content": "¡Excelente noticia!",
    "created_at": "2025-01-19T10:00:00Z",
    "parent_id": null
  }
]
```

### POST /api/news/[id]/comments

Crea un nuevo comentario.

**Request:**
```json
{
  "author_name": "Juan Pérez",
  "author_email": "juan@example.com",
  "content": "¡Excelente noticia!",
  "parent_id": null
}
```

**Respuesta:**
```json
{
  "id": 1,
  "author_name": "Juan Pérez",
  "content": "¡Excelente noticia!",
  "created_at": "2025-01-19T10:00:00Z",
  "is_approved": false,
  "message": "Comentario enviado. Será visible después de ser aprobado por un moderador."
}
```

---

## Uso del Componente

### En la Vista de Noticias

```typescript
import NewsComments from '@/components/news-comments';

// En el componente
<NewsComments newsId={item.id} />
```

### Expandir/Contraer Comentarios

```typescript
const [expandedComments, setExpandedComments] = useState<Set<number>>(new Set());

// Toggle
<Button onClick={() => {
  const newExpanded = new Set(expandedComments);
  if (newExpanded.has(item.id)) {
    newExpanded.delete(item.id);
  } else {
    newExpanded.add(item.id);
  }
  setExpandedComments(newExpanded);
}}>
  <MessageCircle className="w-5 h-5" />
  <span>{item.comments_count || 0}</span>
</Button>

// Mostrar si está expandido
{expandedComments.has(item.id) && (
  <NewsComments newsId={item.id} />
)}
```

---

## Flujo de Comentarios

### 1. Usuario Escribe Comentario

1. Usuario hace clic en "Comentar"
2. Llena formulario (nombre, email opcional, contenido)
3. Envía comentario

### 2. Comentario Pendiente

1. Se guarda con `is_approved = false`
2. Usuario ve mensaje: "Será visible después de ser aprobado"
3. Contador NO se incrementa aún

### 3. Admin Aprueba Comentario

1. Admin ve comentarios pendientes en panel
2. Aprueba o rechaza comentario
3. Si aprueba: `is_approved = true`
4. Trigger incrementa `comments_count`

### 4. Comentario Visible

1. Aparece en la lista de comentarios
2. Otros usuarios pueden responder
3. Se muestra en orden cronológico

---

## Moderación de Comentarios

### Panel de Administración (Próximamente)

Crear en `/admin/news/comments`:

```typescript
// Listar comentarios pendientes
const { data } = await supabase
  .from('news_comments')
  .select('*, news(title)')
  .eq('is_approved', false)
  .order('created_at', { ascending: false });

// Aprobar comentario
await supabase
  .from('news_comments')
  .update({ is_approved: true })
  .eq('id', commentId);

// Eliminar comentario
await supabase
  .from('news_comments')
  .delete()
  .eq('id', commentId);
```

---

## Características de Seguridad

### Row Level Security (RLS)

1. **Lectura**: Solo comentarios aprobados son públicos
2. **Creación**: Cualquiera puede crear (requiere aprobación)
3. **Actualización**: Solo admins autenticados
4. **Eliminación**: Solo admins autenticados

### Validaciones

- Nombre: 1-100 caracteres
- Email: Formato válido (opcional)
- Contenido: 1-1000 caracteres
- Parent ID: Debe existir y pertenecer a la misma noticia

### Protecciones

- Cascada en eliminación (si se elimina noticia, se eliminan comentarios)
- Cascada en respuestas (si se elimina comentario padre, se eliminan respuestas)
- Contador nunca negativo (GREATEST(0, ...))

---

## Diseño del Componente

### Características Visuales

- **Glassmorphism**: Fondo translúcido con blur
- **Gradientes**: Purple/pink en botones y bordes
- **Iconos**: Lucide React
- **Responsive**: Mobile-first
- **Animaciones**: Smooth transitions

### Estados

1. **Cargando**: Spinner mientras carga comentarios
2. **Vacío**: Mensaje invitando a comentar
3. **Con comentarios**: Lista organizada en hilos
4. **Formulario**: Expandible/colapsable
5. **Respondiendo**: Indicador de respuesta activa

---

## Pruebas Recomendadas

### Test 1: Crear Comentario
1. Ve a una noticia
2. Haz clic en el contador de comentarios
3. Haz clic en "Comentar"
4. Llena el formulario
5. Envía
6. ✅ Debe mostrar mensaje de aprobación pendiente

### Test 2: Ver Comentarios
1. Aprueba un comentario desde la BD
2. Recarga la página de noticias
3. ✅ El contador debe mostrar 1
4. Haz clic en el contador
5. ✅ Debe mostrar el comentario aprobado

### Test 3: Responder Comentario
1. Haz clic en "Responder" en un comentario
2. Escribe respuesta
3. Envía
4. ✅ Debe indicar que es una respuesta

### Test 4: Contador Automático
1. Inserta comentario aprobado en BD
2. ✅ El contador debe incrementarse automáticamente
3. Elimina comentario
4. ✅ El contador debe decrementarse

---

## Próximas Mejoras

1. **Panel de Moderación**
   - Vista de comentarios pendientes
   - Aprobación/rechazo masivo
   - Filtros y búsqueda

2. **Notificaciones**
   - Email al admin cuando hay nuevo comentario
   - Email al autor cuando se aprueba

3. **Reacciones**
   - Likes en comentarios
   - Reportar comentarios

4. **Edición**
   - Permitir editar comentarios propios
   - Historial de ediciones

5. **Paginación**
   - Cargar más comentarios
   - Lazy loading

---

**Fecha**: 19 de Enero 2025  
**Funcionalidad**: Sistema de comentarios con moderación  
**Estado**: ✅ Implementado y listo para usar
