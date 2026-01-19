# 📚 Documentación Completa - BubiLex

**Última actualización:** 19 de Enero 2025  
**Versión:** 2.0  
**Estado:** Producción

---

## 📋 Índice

1. [Descripción General](#descripción-general)
2. [Configuración Inicial](#configuración-inicial)
3. [Características Principales](#características-principales)
4. [Arquitectura del Sistema](#arquitectura-del-sistema)
5. [Guías de Uso](#guías-de-uso)
6. [APIs y Endpoints](#apis-y-endpoints)
7. [Base de Datos](#base-de-datos)
8. [Solución de Problemas](#solución-de-problemas)
9. [Mantenimiento](#mantenimiento)

---

## 🎯 Descripción General

BubiLex es un diccionario digital Bubi-Español con funcionalidades avanzadas de IA, sistema de noticias, relatos comunitarios y herramientas de aprendizaje.

### Tecnologías
- **Framework:** Next.js 14 (App Router)
- **Base de Datos:** Supabase (PostgreSQL)
- **Autenticación:** NextAuth.js con Google OAuth
- **Estilos:** Tailwind CSS + Glassmorphism
- **IA:** OpenAI GPT (opcional)
- **Lenguaje:** TypeScript

### Características Clave
- ✅ Diccionario bidireccional Bubi ↔ Español
- ✅ Sistema de roles (Admin, Colaborador, Usuario)
- ✅ Noticias con comentarios y likes
- ✅ Relatos comunitarios con moderación
- ✅ Sistema de aprendizaje con IA
- ✅ Pronunciación IPA automática
- ✅ Búsqueda avanzada
- ✅ Responsive y PWA

---

## ⚙️ Configuración Inicial

### 1. Requisitos Previos
```bash
Node.js >= 18.0.0
npm >= 9.0.0
Cuenta de Supabase
Cuenta de Google Cloud (para OAuth)
```

### 2. Variables de Entorno

Crear archivo `.env.local`:

```env
# Supabase
NEXT_PUBLIC_SUPABASE_URL=tu_url_de_supabase
NEXT_PUBLIC_SUPABASE_ANON_KEY=tu_anon_key
SUPABASE_SERVICE_ROLE_KEY=tu_service_role_key

# NextAuth
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=tu_secret_generado

# Google OAuth
GOOGLE_CLIENT_ID=tu_client_id
GOOGLE_CLIENT_SECRET=tu_client_secret

# Admin
ADMIN_EMAILS=admin@example.com,otro@example.com

# OpenAI (Opcional)
OPENAI_API_KEY=tu_api_key_opcional
```

### 3. Instalación

```bash
# Clonar repositorio
git clone [url-del-repo]
cd bubi-lex

# Instalar dependencias
npm install

# Ejecutar scripts SQL en Supabase
# Ver sección "Base de Datos"

# Iniciar desarrollo
npm run dev
```

### 4. Configuración de Supabase

#### Ejecutar Scripts SQL (en orden):
1. `db/schema.sql` - Esquema base
2. `db/add-comments-system.sql` - Sistema de comentarios
3. `db/add-stories-system.sql` - Sistema de relatos
4. `db/audit-schema.sql` - Logs de auditoría

#### Configurar RLS (Row Level Security):
- Ya incluido en los scripts SQL
- Verifica que esté habilitado en cada tabla

### 5. Configuración de Google OAuth

1. Ir a [Google Cloud Console](https://console.cloud.google.com)
2. Crear nuevo proyecto o seleccionar existente
3. Habilitar "Google+ API"
4. Crear credenciales OAuth 2.0
5. Agregar URIs autorizados:
   - `http://localhost:3000`
   - `https://tu-dominio.com`
6. Agregar URIs de redirección:
   - `http://localhost:3000/api/auth/callback/google`
   - `https://tu-dominio.com/api/auth/callback/google`

---

## 🚀 Características Principales

### 1. Diccionario Bidireccional

#### Búsqueda Bubi → Español
```
Usuario busca: "mba"
Resultado: "agua"
```

#### Búsqueda Español → Bubi
```
Usuario busca: "agua"
Resultado: "mba"
```

#### Características:
- ✅ Búsqueda en tiempo real
- ✅ Filtrado por idioma
- ✅ Ordenamiento alfabético
- ✅ Pronunciación IPA
- ✅ Notas y contexto
- ✅ Palabra del día

### 2. Sistema de Roles

#### Admin
- Gestión completa del diccionario
- Moderación de noticias y relatos
- Asignación de colaboradores
- Acceso a logs de auditoría
- Gestión de usuarios

#### Colaborador
- Agregar nuevas palabras
- Editar palabras propias
- Ver estadísticas
- Sin acceso a moderación

#### Usuario
- Buscar en diccionario
- Ver noticias y relatos
- Enviar relatos (requiere aprobación)
- Comentar noticias
- Usar herramientas de IA

### 3. Sistema de Noticias

#### Características:
- ✅ Creación y edición (Admin)
- ✅ Imágenes y videos de YouTube
- ✅ Sistema de comentarios
- ✅ Likes y contador de vistas
- ✅ Moderación de comentarios
- ✅ Actualización en tiempo real

#### Estructura:
```typescript
interface News {
  id: number;
  title: string;
  content: string;
  date: string;
  image_url?: string;
  video_url?: string;
  is_approved: boolean;
  is_rejected: boolean;
  likes: number;
  comments_count: number;
}
```

### 4. Sistema de Relatos

#### Flujo de Usuario:
1. Usuario envía relato (sin login)
2. Relato queda pendiente
3. Admin revisa y aprueba/rechaza
4. Si aprobado, aparece públicamente

#### Características:
- ✅ Envío sin autenticación
- ✅ Moderación completa
- ✅ Sistema de likes
- ✅ Contador de vistas
- ✅ Razón de rechazo
- ✅ Logs de auditoría

### 5. Sistema de Aprendizaje con IA

#### Sesiones Personalizadas:
- Genera lecciones adaptadas al nivel
- Ejemplos contextualizados
- Ejercicios interactivos

#### Quiz Interactivos:
- Preguntas de opción múltiple
- Traducción Bubi ↔ Español
- Retroalimentación inmediata

#### Traductor:
- Traducción bidireccional
- Contexto cultural
- Ejemplos de uso

#### Pronunciación IPA:
- Generación automática
- Reglas fonéticas bantúes
- Sin API externa requerida

---

## 🏗️ Arquitectura del Sistema

### Estructura de Carpetas

```
bubi-lex/
├── src/
│   ├── app/                    # App Router de Next.js
│   │   ├── admin/             # Panel de administración
│   │   │   ├── dictionary/    # Gestión de diccionario
│   │   │   ├── news/          # Gestión de noticias
│   │   │   ├── stories/       # Moderación de relatos
│   │   │   └── audit/         # Logs de auditoría
│   │   ├── api/               # API Routes
│   │   │   ├── dictionary/    # CRUD diccionario
│   │   │   ├── news/          # CRUD noticias
│   │   │   ├── stories/       # CRUD relatos
│   │   │   ├── ai/            # Endpoints de IA
│   │   │   └── admin/         # APIs admin
│   │   ├── dictionary/        # Vista pública diccionario
│   │   ├── news/              # Vista pública noticias
│   │   ├── stories/           # Vista pública relatos
│   │   └── ai-features/       # Herramientas de IA
│   ├── components/            # Componentes React
│   │   ├── ui/                # Componentes base (shadcn)
│   │   ├── admin/             # Componentes admin
│   │   ├── ai/                # Componentes IA
│   │   └── news/              # Componentes noticias
│   ├── lib/                   # Utilidades
│   │   ├── db.ts              # Cliente Supabase
│   │   ├── auth-options.ts    # Configuración NextAuth
│   │   ├── roles.ts           # Sistema de roles
│   │   ├── audit-log.ts       # Logs de auditoría
│   │   └── ai-features.ts     # Funciones IA
│   └── types/                 # Tipos TypeScript
├── db/                        # Scripts SQL
│   ├── schema.sql             # Esquema base
│   ├── add-comments-system.sql
│   ├── add-stories-system.sql
│   └── audit-schema.sql
├── public/                    # Archivos estáticos
│   ├── logo.png
│   ├── manifest.json
│   └── img/
└── docs/                      # Documentación adicional
```

### Flujo de Datos

```
Usuario → Next.js App Router → API Routes → Supabase
                ↓
         Componentes React
                ↓
         Tailwind CSS
```

### Seguridad

#### Autenticación:
- NextAuth.js con Google OAuth
- Sesiones en cookies HTTP-only
- CSRF protection

#### Autorización:
- Middleware de Next.js
- Verificación en cada API
- Row Level Security en Supabase

#### Validación:
- Zod schemas en backend
- Validación en frontend
- Sanitización de inputs

---

## 📖 Guías de Uso

### Para Administradores

#### Gestionar Diccionario:
1. Ir a `/admin/dictionary`
2. Ver lista de palabras
3. Opciones:
   - **Añadir:** Clic en "Añadir" → Llenar formulario
   - **Editar:** Clic en "Editar" en palabra → Modificar
   - **Eliminar:** Clic en icono de basura → Confirmar
   - **Duplicados:** Clic en "Duplicados" → Resolver

#### Moderar Relatos:
1. Ir a `/admin/stories`
2. Ver estadísticas (pendientes, aprobados, rechazados)
3. Filtrar por estado
4. Para cada relato:
   - **Ver:** Leer contenido completo
   - **Aprobar:** Clic en "Aprobar" → Confirmar
   - **Rechazar:** Clic en "Rechazar" → Escribir razón → Confirmar

#### Gestionar Noticias:
1. Ir a `/admin/news`
2. Ver lista de noticias
3. Opciones:
   - **Crear:** Clic en "Nueva Noticia" → Llenar formulario
   - **Editar:** Clic en noticia → Modificar
   - **Eliminar:** Opción en edición

#### Ver Logs de Auditoría:
1. Ir a `/admin/audit`
2. Ver historial de cambios
3. Filtrar por:
   - Acción (create, update, delete)
   - Usuario
   - Fecha
   - Tabla afectada

### Para Colaboradores

#### Agregar Palabras:
1. Ir a `/collaborator/dictionary/add`
2. Llenar formulario:
   - Palabra en Bubi (requerido)
   - Traducción en Español (requerido)
   - IPA (opcional)
   - Notas (opcional)
3. Clic en "Guardar"
4. Sistema verifica duplicados automáticamente

#### Ver Mis Palabras:
1. Ir a `/collaborator/dictionary/my-words`
2. Ver lista de palabras agregadas
3. Estadísticas personales

### Para Usuarios

#### Buscar en Diccionario:
1. Ir a `/dictionary`
2. Seleccionar idioma:
   - "Bubi → Español"
   - "Español → Bubi"
3. Escribir en buscador
4. Ver resultados en tiempo real

#### Enviar Relato:
1. Ir a `/stories`
2. Clic en "Compartir tu Relato"
3. Llenar formulario:
   - Título (requerido)
   - Contenido (requerido)
   - Tu nombre (requerido)
   - Email (opcional)
4. Clic en "Enviar"
5. Esperar aprobación del admin

#### Usar Herramientas de IA:
1. Ir a `/ai-features`
2. Opciones disponibles:
   - **Sesión de Aprendizaje:** Lección personalizada
   - **Quiz:** Prueba tus conocimientos
   - **Traductor:** Traduce frases
   - **Etimología:** Origen de palabras

---

## 🔌 APIs y Endpoints

### Diccionario

#### GET `/api/dictionary`
Obtener lista de palabras

**Query params:**
- `q` - Búsqueda
- `lang` - Idioma (bubi/spanish)
- `page` - Página
- `limit` - Límite

**Response:**
```json
{
  "entries": [...],
  "total": 1234,
  "page": 1,
  "limit": 50
}
```

#### POST `/api/dictionary`
Crear nueva palabra (requiere auth)

**Body:**
```json
{
  "bubi": "mba",
  "spanish": "agua",
  "ipa": "mba",
  "notes": "Sustantivo"
}
```

#### PUT `/api/dictionary/[id]`
Actualizar palabra (requiere auth)

#### DELETE `/api/dictionary/[id]`
Eliminar palabra (solo admin)

### Relatos

#### GET `/api/stories`
Obtener relatos aprobados

**Response:**
```json
{
  "stories": [...],
  "total": 50,
  "page": 1
}
```

#### POST `/api/stories`
Crear relato (sin auth requerida)

**Body:**
```json
{
  "title": "Mi Relato",
  "content": "Contenido...",
  "author_name": "Juan",
  "author_email": "juan@example.com"
}
```

#### POST `/api/admin/stories/[id]/approve`
Aprobar relato (solo admin)

#### POST `/api/admin/stories/[id]/reject`
Rechazar relato (solo admin)

**Body:**
```json
{
  "reason": "Razón del rechazo"
}
```

### Noticias

#### GET `/api/news`
Obtener noticias aprobadas

#### POST `/api/news`
Crear noticia (solo admin)

#### PUT `/api/news/[id]`
Actualizar noticia (solo admin)

#### POST `/api/news/[id]/like`
Dar like a noticia

#### GET `/api/news/[id]/comments`
Obtener comentarios

#### POST `/api/news/[id]/comments`
Crear comentario

### IA

#### POST `/api/ai/learning-session`
Generar sesión de aprendizaje

**Body:**
```json
{
  "level": "beginner",
  "topic": "saludos"
}
```

#### POST `/api/ai/quiz`
Generar quiz

#### POST `/api/ai/translate`
Traducir texto

#### POST `/api/ai/pronunciation/generate`
Generar pronunciación IPA

---

## 💾 Base de Datos

### Tablas Principales

#### `dictionary_entries`
```sql
CREATE TABLE dictionary_entries (
  id SERIAL PRIMARY KEY,
  bubi VARCHAR(255) NOT NULL,
  spanish TEXT NOT NULL,
  ipa VARCHAR(255),
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP,
  created_by VARCHAR(255),
  updated_by VARCHAR(255)
);
```

#### `stories`
```sql
CREATE TABLE stories (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  author_name VARCHAR(100) NOT NULL,
  author_email VARCHAR(255),
  is_approved BOOLEAN DEFAULT false,
  is_rejected BOOLEAN DEFAULT false,
  rejection_reason TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  approved_at TIMESTAMP,
  approved_by VARCHAR(255),
  views INTEGER DEFAULT 0,
  likes INTEGER DEFAULT 0
);
```

#### `news`
```sql
CREATE TABLE news (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  date TIMESTAMP NOT NULL,
  image_url TEXT,
  video_url TEXT,
  is_approved BOOLEAN DEFAULT true,
  is_rejected BOOLEAN DEFAULT false,
  likes INTEGER DEFAULT 0,
  comments_count INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### `news_comments`
```sql
CREATE TABLE news_comments (
  id SERIAL PRIMARY KEY,
  news_id INTEGER REFERENCES news(id) ON DELETE CASCADE,
  parent_id INTEGER REFERENCES news_comments(id),
  author_name VARCHAR(100) NOT NULL,
  author_email VARCHAR(255),
  content TEXT NOT NULL,
  is_approved BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### `admin_audit_log`
```sql
CREATE TABLE admin_audit_log (
  id SERIAL PRIMARY KEY,
  actor_email VARCHAR(255),
  action VARCHAR(100) NOT NULL,
  target INTEGER,
  meta JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Índices Importantes

```sql
-- Búsqueda en diccionario
CREATE INDEX idx_dictionary_bubi ON dictionary_entries(bubi);
CREATE INDEX idx_dictionary_spanish ON dictionary_entries(spanish);

-- Búsqueda full-text
CREATE INDEX idx_dictionary_fulltext ON dictionary_entries 
  USING gin(to_tsvector('spanish', spanish || ' ' || bubi));

-- Relatos por estado
CREATE INDEX idx_stories_approved ON stories(is_approved);
CREATE INDEX idx_stories_created_at ON stories(created_at DESC);

-- Noticias
CREATE INDEX idx_news_date ON news(date DESC);
CREATE INDEX idx_news_approved ON news(is_approved);

-- Comentarios
CREATE INDEX idx_comments_news_id ON news_comments(news_id);
```

### Scripts SQL a Ejecutar

1. **Esquema Base:** `db/schema.sql`
2. **Sistema de Comentarios:** `db/add-comments-system.sql`
3. **Sistema de Relatos:** `db/add-stories-system.sql`
4. **Logs de Auditoría:** `db/audit-schema.sql`

---

## 🐛 Solución de Problemas

### Error: "Pantalla blanca al editar palabras"
**Causa:** Params no esperado como Promise  
**Solución:** Ya corregido en última versión

### Error: "No se guardan relatos"
**Causa:** Validación de email rechaza cadenas vacías  
**Solución:** Ya corregido en última versión

### Error: "No autorizado"
**Verificar:**
1. Estás logueado
2. Tu email está en `ADMIN_EMAILS`
3. Variables de entorno correctas
4. Sesión no expirada

### Error: "Supabase connection failed"
**Verificar:**
1. URLs de Supabase correctas
2. API keys válidas
3. RLS configurado
4. Tablas creadas

### Favicon no se actualiza
**Solución:**
1. Limpiar caché del navegador
2. Reiniciar servidor
3. Abrir en modo incógnito

### Videos de YouTube no cargan
**Verificar:**
1. URL es válida
2. Video es público
3. Formato: `https://www.youtube.com/watch?v=VIDEO_ID`

---

## 🔧 Mantenimiento

### Backups

#### Base de Datos:
```bash
# Desde Supabase Dashboard
# Settings → Database → Backups
# Configurar backups automáticos diarios
```

#### Código:
```bash
git push origin main
# Mantener repositorio actualizado
```

### Monitoreo

#### Logs de Auditoría:
```sql
-- Ver últimas acciones
SELECT * FROM admin_audit_log 
ORDER BY created_at DESC 
LIMIT 100;

-- Acciones por usuario
SELECT actor_email, COUNT(*) 
FROM admin_audit_log 
GROUP BY actor_email;
```

#### Estadísticas:
```sql
-- Total de palabras
SELECT COUNT(*) FROM dictionary_entries;

-- Relatos pendientes
SELECT COUNT(*) FROM stories 
WHERE is_approved = false AND is_rejected = false;

-- Noticias más populares
SELECT title, likes, comments_count 
FROM news 
ORDER BY likes DESC 
LIMIT 10;
```

### Actualizaciones

#### Dependencias:
```bash
# Verificar actualizaciones
npm outdated

# Actualizar
npm update

# Actualizar Next.js
npm install next@latest react@latest react-dom@latest
```

#### Base de Datos:
1. Crear backup antes de cambios
2. Probar en desarrollo
3. Aplicar en producción
4. Verificar funcionamiento

### Limpieza

#### Datos Antiguos:
```sql
-- Eliminar logs antiguos (>6 meses)
DELETE FROM admin_audit_log 
WHERE created_at < NOW() - INTERVAL '6 months';

-- Eliminar relatos rechazados antiguos
DELETE FROM stories 
WHERE is_rejected = true 
AND created_at < NOW() - INTERVAL '3 months';
```

#### Caché:
```bash
# Limpiar caché de Next.js
rm -rf .next
npm run build
```

---

## 📞 Soporte

### Recursos
- **Documentación:** Este archivo
- **Código:** Comentarios en archivos fuente
- **Logs:** `/admin/audit` para auditoría

### Contacto
Para soporte técnico, revisar:
1. Esta documentación
2. Logs de error en consola
3. Logs de auditoría en admin
4. Issues en repositorio

---

## ✅ Checklist de Producción

### Antes de Desplegar:
- [ ] Variables de entorno configuradas
- [ ] Scripts SQL ejecutados
- [ ] Google OAuth configurado
- [ ] Admin emails definidos
- [ ] Backups configurados
- [ ] RLS habilitado
- [ ] Pruebas realizadas
- [ ] Documentación actualizada

### Después de Desplegar:
- [ ] Verificar login funciona
- [ ] Probar crear/editar palabras
- [ ] Probar enviar relatos
- [ ] Verificar moderación
- [ ] Probar herramientas IA
- [ ] Verificar responsive
- [ ] Probar en diferentes navegadores

---

**Fin de la Documentación**

Para más información específica, revisar los comentarios en el código fuente.
