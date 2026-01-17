# 📚 Documentación Completa - BubiLex

**Proyecto**: BubiLex - Diccionario Bubi-Español  
**Versión**: 2.2  
**Fecha**: 2025-01-17  
**Estado**: ✅ EN PRODUCCIÓN

---

## 📖 Índice

1. [Resumen del Proyecto](#resumen-del-proyecto)
2. [Arquitectura](#arquitectura)
3. [Funcionalidades](#funcionalidades)
4. [Inteligencia Artificial](#inteligencia-artificial)
5. [Alternativas Gratuitas de IA](#alternativas-gratuitas-de-ia)
6. [Diseño Moderno](#diseño-moderno)
7. [Base de Datos](#base-de-datos)
8. [Deployment](#deployment)
9. [Configuración](#configuración)
10. [Guías de Uso](#guías-de-uso)

---

## 1. Resumen del Proyecto

BubiLex es un diccionario moderno Bubi-Español con funcionalidades avanzadas de IA, completamente funcional y desplegado en producción.

### Características Principales

- 📚 **Diccionario Completo**: Búsqueda avanzada de palabras Bubi-Español
- 🤖 **IA Integrada**: Traductor, quiz, pronunciación, ejemplos y etimología
- 🎨 **Diseño Moderno**: Gradientes, glassmorphism, animaciones
- 🔐 **Autenticación**: Login con Google OAuth
- 👨‍💼 **Panel Admin**: Gestión completa del contenido
- 📰 **Noticias**: Sistema de publicación con likes
- 🆓 **Costo $0**: Todo gratuito con Groq

### Tecnologías

- **Frontend**: Next.js 14, TypeScript, Tailwind CSS, shadcn/ui
- **Backend**: Next.js API Routes, Supabase PostgreSQL
- **IA**: Groq (gratuito), OpenAI/Anthropic (opcional)
- **Deployment**: Vercel, GitHub

### URLs

- **Producción**: https://bubi-lex.vercel.app/
- **GitHub**: https://github.com/etebachale-group/bubi-lex
- **Groq Console**: https://console.groq.com/

---

## 2. Arquitectura

### Estructura del Proyecto

```
bubi-lex/
├── src/
│   ├── app/                    # App Router de Next.js
│   │   ├── api/               # API Routes
│   │   │   ├── ai/           # Endpoints de IA (5 rutas)
│   │   │   ├── dictionary/   # CRUD diccionario
│   │   │   ├── news/         # CRUD noticias
│   │   │   └── admin/        # Admin endpoints
│   │   ├── admin/            # Panel de administración
│   │   ├── dictionary/       # Vista del diccionario
│   │   ├── news/             # Vista de noticias
│   │   └── ai-features/      # Funcionalidades de IA
│   ├── components/           # Componentes React
│   │   ├── ai/              # Componentes de IA
│   │   ├── ui/              # Componentes UI base
│   │   └── ...
│   ├── lib/                  # Utilidades y lógica
│   │   ├── ai-features.ts           # IA de pago
│   │   ├── ai-free-alternatives.ts  # IA gratuita
│   │   ├── db.ts                    # Supabase client
│   │   ├── logger.ts                # Logging
│   │   ├── rate-limit.ts            # Rate limiting
│   │   └── ...
│   └── types/               # Tipos TypeScript
├── db/                      # Schemas SQL
├── docs/                    # Documentación
├── public/                  # Assets estáticos
└── package.json            # Dependencias
```

### Flujo de Datos

```
Usuario → Next.js Frontend → API Routes → Supabase/IA → Respuesta
```

### Sistema de Seguridad

1. **Rate Limiting**: 300 req/min por IP
2. **Validación**: Zod en todos los endpoints
3. **Autenticación**: NextAuth con Google OAuth
4. **Logging**: Estructurado con contexto
5. **Auditoría**: Registro de acciones admin

---

## 3. Funcionalidades

### 3.1 Diccionario

**Características**:
- Búsqueda en tiempo real
- Búsqueda avanzada con filtros
- Paginación
- Palabra del día
- Palabras aleatorias
- Pronunciación IPA

**Endpoints**:
- `GET /api/dictionary` - Listar palabras
- `GET /api/dictionary/[id]` - Obtener palabra
- `POST /api/dictionary` - Crear palabra (admin)
- `PUT /api/dictionary/[id]` - Actualizar palabra (admin)
- `DELETE /api/dictionary/[id]` - Eliminar palabra (admin)
- `GET /api/dictionary/random` - Palabra aleatoria

### 3.2 Noticias

**Características**:
- Publicación de noticias
- Sistema de likes
- Imágenes con upload
- Videos de YouTube embebidos
- Vista pública y administración

**Endpoints**:
- `GET /api/news` - Listar noticias
- `GET /api/news/[id]` - Obtener noticia
- `POST /api/news` - Crear noticia (admin)
- `PUT /api/news/[id]` - Actualizar noticia (admin)
- `DELETE /api/news/[id]` - Eliminar noticia (admin)
- `POST /api/news/[id]/like` - Dar like

### 3.3 Administración

**Características**:
- Gestión de diccionario
- Gestión de noticias
- Logs de auditoría
- Control de acceso

**Rutas**:
- `/admin` - Dashboard
- `/admin/dictionary` - Gestión diccionario
- `/admin/news` - Gestión noticias
- `/admin/audit` - Logs de auditoría

---

## 4. Inteligencia Artificial

### 4.1 Funcionalidades de IA

#### 🌐 Traductor Contextual
**Endpoint**: `POST /api/ai/translate`

**Características**:
- Traduce palabras considerando contexto cultural
- Detecta automáticamente el idioma
- Proporciona explicaciones
- Sugiere traducciones alternativas

**Ejemplo**:
```typescript
const response = await fetch('/api/ai/translate', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    text: 'palabra',
    context: 'En una conversación sobre familia'
  })
});
```

#### 🧠 Quiz de Práctica
**Endpoint**: `GET /api/ai/quiz`

**Características**:
- Genera preguntas automáticamente
- Opción múltiple
- Explicaciones detalladas
- Puntuación y progreso

#### 🎤 Guía de Pronunciación
**Endpoint**: `POST /api/ai/pronunciation`

**Características**:
- Notación IPA mejorada
- Desglose silábico
- Consejos para hispanohablantes
- Tips culturales

#### 📚 Ejemplos Contextuales
**Endpoint**: `POST /api/ai/examples`

**Características**:
- Genera frases culturalmente apropiadas
- Contexto del pueblo Bubi
- Múltiples ejemplos por palabra
- Uso en situaciones reales

#### 💡 Etimología y Origen
**Endpoint**: `POST /api/ai/etymology`

**Características**:
- Explica el origen de las palabras
- Contexto histórico y cultural
- Significado profundo
- Relación con la cultura Bubi

### 4.2 Sistema de Fallback

```
OpenAI/Anthropic (si está configurado)
    ↓ (si falla o no está)
Groq (si está configurado)
    ↓ (si falla)
Together AI (si está configurado)
    ↓ (si falla)
Ollama (si está corriendo localmente)
    ↓ (si falla)
Fallback básico (respuestas simples)
```

---

## 5. Alternativas Gratuitas de IA

### 5.1 Proveedores Soportados

#### 🚀 Groq (Recomendado)
- **Costo**: $0 (100% gratuito)
- **Velocidad**: ⚡⚡⚡⚡⚡ (10x más rápido que OpenAI)
- **Límites**: 14,400 requests/día
- **Modelo**: llama-3.3-70b-versatile
- **Registro**: https://console.groq.com/

#### 🌐 Together AI
- **Costo**: $0 (créditos iniciales de $25)
- **Velocidad**: ⚡⚡⚡⚡
- **Límites**: Según créditos
- **Modelo**: mixtral-8x7b-32768
- **Registro**: https://api.together.xyz/

#### 💻 Ollama (Local)
- **Costo**: $0 (sin límites)
- **Velocidad**: ⚡⚡⚡
- **Requisitos**: 8GB+ RAM
- **Modelos**: llama2, mixtral, codellama
- **Instalación**: https://ollama.ai/

### 5.2 Configuración Rápida

#### Opción 1: Groq (5 minutos)
```bash
# 1. Obtén API key en: https://console.groq.com/
# 2. Agrega a .env.local:
GROQ_API_KEY=gsk_tu_api_key_aqui

# 3. Reinicia servidor
npm run dev
```

#### Opción 2: Ollama (10 minutos)
```bash
# 1. Instala desde: https://ollama.ai/
# 2. Descarga modelo:
ollama pull llama2

# 3. Reinicia servidor
npm run dev
```

### 5.3 Comparación

| Proveedor | Costo | Velocidad | Calidad | Límites |
|-----------|-------|-----------|---------|---------|
| **Groq** | $0 | ⚡⚡⚡⚡⚡ | ⭐⭐⭐⭐ | 14.4k/día |
| **Together AI** | $0* | ⚡⚡⚡⚡ | ⭐⭐⭐⭐ | $25 créditos |
| **Ollama** | $0 | ⚡⚡⚡ | ⭐⭐⭐ | Sin límites |
| **OpenAI** | $$ | ⚡⚡⚡⚡ | ⭐⭐⭐⭐⭐ | Según pago |

---

## 6. Diseño Moderno

### 6.1 Paleta de Colores

**Gradientes Purple/Pink**:
- Primary: `from-purple-600 to-pink-600`
- Dark: `from-purple-400 to-pink-400`
- Accent: `from-purple-500 to-pink-500`

### 6.2 Efectos Visuales

**Glassmorphism**:
```css
.glass-card {
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
}
```

**Animaciones**:
- `fade-in`: Aparición suave
- `scale-in`: Escala con rebote
- `hover-lift`: Elevación al hover
- `gradient-shift`: Gradiente animado

### 6.3 Componentes UI

**Botones**:
- `default`: Estilo estándar
- `gradient`: Con gradiente purple/pink
- `ghost`: Transparente
- `outline`: Con borde

**Cards**:
- Glassmorphism effect
- Hover animations
- Gradient borders
- Shadow effects

---

## 7. Base de Datos

### 7.1 Schema Principal

**Tabla: dictionary_entries**
```sql
CREATE TABLE dictionary_entries (
  id BIGSERIAL PRIMARY KEY,
  bubi TEXT NOT NULL,
  spanish TEXT NOT NULL,
  ipa TEXT,
  category TEXT,
  examples TEXT,
  notes TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

**Tabla: news**
```sql
CREATE TABLE news (
  id BIGSERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  image_url TEXT,
  youtube_url TEXT,
  likes INTEGER DEFAULT 0,
  published_at TIMESTAMPTZ DEFAULT NOW(),
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

### 7.2 Índices

```sql
-- Búsqueda full-text
CREATE INDEX idx_dictionary_bubi_gin ON dictionary_entries 
USING gin(to_tsvector('spanish', bubi));

CREATE INDEX idx_dictionary_spanish_gin ON dictionary_entries 
USING gin(to_tsvector('spanish', spanish));

-- Búsqueda por categoría
CREATE INDEX idx_dictionary_category ON dictionary_entries(category);
```

---

## 8. Deployment

### 8.1 Vercel

**Configuración**:
1. Conectar repositorio de GitHub
2. Configurar variables de entorno
3. Deploy automático en cada push

**Variables de Entorno**:
```bash
# Supabase
NEXT_PUBLIC_SUPABASE_URL=https://...
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...

# IA - Groq
GROQ_API_KEY=gsk_...

# Autenticación (opcional)
GOOGLE_CLIENT_ID=...
GOOGLE_CLIENT_SECRET=...
NEXTAUTH_SECRET=...
ADMIN_GOOGLE_EMAILS=email@domain.com
```

### 8.2 GitHub

**Workflow**:
1. Desarrollo local
2. Commit y push a main
3. Vercel detecta cambios
4. Build automático
5. Deploy a producción

---

## 9. Configuración

### 9.1 Desarrollo Local

```bash
# 1. Clonar repositorio
git clone https://github.com/etebachale-group/bubi-lex.git
cd bubi-lex

# 2. Instalar dependencias
npm install

# 3. Configurar .env.local
cp .env.example .env.local
# Editar .env.local con tus credenciales

# 4. Iniciar servidor
npm run dev

# 5. Abrir navegador
# http://localhost:3000
```

### 9.2 Variables de Entorno

**Archivo: .env.local**
```bash
# Supabase (público)
NEXT_PUBLIC_SUPABASE_URL=https://lumiylphncmoizogilaa.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...
NEXT_PUBLIC_SITE_URL=http://localhost:3000

# IA - Groq (gratuito)
GROQ_API_KEY=gsk_tu_api_key_aqui

# Autenticación (opcional)
GOOGLE_CLIENT_ID=tu_client_id
GOOGLE_CLIENT_SECRET=tu_client_secret
NEXTAUTH_SECRET=tu_secret_generado
ADMIN_GOOGLE_EMAILS=admin@example.com
```

---

## 10. Guías de Uso

### 10.1 Para Usuarios

**Buscar Palabras**:
1. Ir a `/dictionary`
2. Usar barra de búsqueda
3. Filtrar por categoría
4. Ver detalles de palabra

**Usar IA**:
1. Ir a `/ai-features`
2. Probar traductor
3. Hacer quiz de práctica
4. Ver pronunciación
5. Generar ejemplos

**Ver Noticias**:
1. Ir a `/news`
2. Leer noticias
3. Dar likes
4. Ver videos embebidos

### 10.2 Para Administradores

**Gestionar Diccionario**:
1. Login en `/admin/login`
2. Ir a `/admin/dictionary`
3. Crear/editar/eliminar palabras
4. Agregar pronunciación IPA

**Gestionar Noticias**:
1. Ir a `/admin/news`
2. Crear nueva noticia
3. Subir imagen
4. Agregar video de YouTube
5. Publicar

**Ver Auditoría**:
1. Ir a `/admin/audit`
2. Ver logs de acciones
3. Filtrar por fecha/usuario

### 10.3 Para Desarrolladores

**Agregar Nueva Funcionalidad**:
1. Crear componente en `src/components/`
2. Crear API route en `src/app/api/`
3. Agregar validación con Zod
4. Implementar rate limiting
5. Agregar logging
6. Escribir tests
7. Documentar

**Integrar Nueva IA**:
1. Agregar función en `src/lib/ai-free-alternatives.ts`
2. Crear endpoint en `src/app/api/ai/`
3. Agregar componente UI
4. Actualizar documentación

---

## 📊 Estadísticas

### Código
- **Archivos TypeScript**: ~50+
- **Componentes React**: ~30+
- **API Routes**: ~15+
- **Líneas de código**: ~8,000+

### Funcionalidades
- **Endpoints de IA**: 5
- **Endpoints de API**: 15+
- **Páginas**: 10+
- **Componentes UI**: 30+

### Costos
- **Vercel**: $0 (plan gratuito)
- **Supabase**: $0 (plan gratuito)
- **Groq**: $0 (100% gratuito)
- **Total**: **$0/mes** 🎉

---

## 🎉 Logros

- ✅ Diccionario funcional y moderno
- ✅ Funcionalidades de IA 100% gratuitas
- ✅ Diseño moderno y atractivo
- ✅ Código limpio y bien documentado
- ✅ Seguridad implementada
- ✅ Desplegado en producción
- ✅ Costo $0/mes

---

**Desarrollado por**: Eteba Chale Group  
**Asistido por**: Kiro AI  
**Fecha**: 2025-01-17  
**Estado**: ✅ PRODUCCIÓN

**Repositorio**: https://github.com/etebachale-group/bubi-lex  
**Sitio Web**: https://bubi-lex.vercel.app/
