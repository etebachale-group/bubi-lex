# 🌍 BubiLex - Diccionario Bubi-Español

Diccionario digital interactivo de la lengua Bubi con funcionalidades avanzadas de IA, sistema de noticias, relatos comunitarios y herramientas de aprendizaje.

[![Next.js](https://img.shields.io/badge/Next.js-14-black)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5-blue)](https://www.typescriptlang.org/)
[![Supabase](https://img.shields.io/badge/Supabase-PostgreSQL-green)](https://supabase.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-CSS-38bdf8)](https://tailwindcss.com/)

---

## 🚨 ACCIÓN REQUERIDA (22 Enero 2026)

### Sistema de Colaboradores - Instalación Pendiente

**Problema**: Error HTTP 500 al agregar colaboradores  
**Causa**: Tabla `user_roles` no existe en Supabase  
**Solución**: Ejecutar script SQL

#### ⚡ Pasos Rápidos:

1. Ir a Supabase → SQL Editor
2. Abrir archivo: `db/add-user-roles-system.sql`
3. **CAMBIAR** email del admin (línea 71)
4. Ejecutar script completo
5. Verificar tabla creada

#### 📖 Guía Completa:

Ver: `docs/GUIA-INSTALACION-COLABORADORES.md`

---

## ✨ Características

### Diccionario
- 🔍 **7,676 Palabras** - Diccionario completo Bubi-Español
- 🔄 **Búsqueda Bidireccional** - Bubi → Español y Español → Bubi
- 📝 **Información Completa** - Tipo, género, clase nominal, plural, variantes
- 🔊 **Pronunciación IPA** - Generación automática con IA
- 💡 **Ejemplos Contextuales** - Generados con IA usando gramática Bubi
- ⚡ **Búsqueda Instantánea** - Sin paginación, filtrado local

### Inteligencia Artificial
- 🤖 **Traductor Español → Bubi** - Usa diccionario real (NO inventa traducciones)
- 📚 **Generación de Ejemplos** - Contextuales y culturalmente apropiados
- 🎓 **Sistema de Lecciones** - 12 lecciones estructuradas con quiz progresivo
- 🗣️ **Pronunciación Guiada** - IPA con explicaciones detalladas
- 🌐 **Múltiples Proveedores** - OpenAI, Groq, Together AI, Ollama

### Comunidad
- 📰 **Sistema de Noticias** - Con comentarios y likes
- 📖 **Relatos Comunitarios** - Historias moderadas
- 👥 **Sistema de Roles** - Admin, Colaborador, Usuario
- ✍️ **Contribuciones** - Colaboradores pueden agregar palabras

### Tecnología
- 📱 **PWA** - Instalable como app
- 🌙 **Dark Mode** - Tema claro y oscuro
- ⚡ **Tiempo Real** - Actualizaciones instantáneas con Supabase
- 🎨 **UI Moderna** - Diseño responsive con animaciones

---

## 🚀 Inicio Rápido

### Requisitos Previos

- Node.js >= 18.0.0
- npm >= 9.0.0
- Cuenta de Supabase
- Cuenta de Google Cloud (para OAuth)

### Instalación

```bash
# Clonar repositorio
git clone [url-del-repo]
cd bubi-lex

# Instalar dependencias
npm install

# Configurar variables de entorno
cp .env.example .env.local
# Editar .env.local con tus credenciales

# Ejecutar scripts SQL en Supabase (ver sección Base de Datos)

# Iniciar servidor de desarrollo
npm run dev
```

Abrir [http://localhost:3000](http://localhost:3000) en el navegador.

---

## ⚙️ Configuración

### Variables de Entorno

Crear archivo `.env.local` con:

```env
# Supabase (REQUERIDO)
NEXT_PUBLIC_SUPABASE_URL=tu_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=tu_key
SUPABASE_SERVICE_ROLE_KEY=tu_service_key

# NextAuth (REQUERIDO)
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=genera_con_openssl_rand_base64_32

# Google OAuth (REQUERIDO)
GOOGLE_CLIENT_ID=tu_client_id
GOOGLE_CLIENT_SECRET=tu_client_secret

# Admin (REQUERIDO)
ADMIN_EMAILS=admin@example.com

# IA - OpenAI (OPCIONAL - mejora calidad)
OPENAI_API_KEY=sk-...

# IA - Anthropic (OPCIONAL - alternativa a OpenAI)
ANTHROPIC_API_KEY=sk-ant-...

# IA Gratuita - Groq (RECOMENDADO - gratuito con límites generosos)
GROQ_API_KEY=gsk_...

# IA Gratuita - Together AI (OPCIONAL - gratuito con créditos)
TOGETHER_API_KEY=...

# IA Gratuita - Hugging Face (OPCIONAL)
HUGGINGFACE_API_KEY=hf_...

# Configuración de IA
AI_MODEL=gpt-3.5-turbo
AI_MAX_TOKENS=500

# Base URL
NEXT_PUBLIC_BASE_URL=http://localhost:3000
```

**Nota sobre IA:** El sistema funciona con múltiples proveedores. Si no configuras ninguna API key, usará ejemplos básicos sin IA. Para mejor experiencia, configura al menos Groq (gratuito).

### Base de Datos

Ejecutar scripts SQL en Supabase (en orden):

1. `db/schema.sql` - Esquema base
2. `db/add-comments-system.sql` - Sistema de comentarios
3. `db/add-stories-system.sql` - Sistema de relatos
4. `db/add-grammar-system.sql` - Sistema de gramática para IA
5. `db/audit-schema.sql` - Logs de auditoría

---

## 📚 Documentación

### Documentos Principales

- **[ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./docs/ACTUALIZACION-DICCIONARIO-22-ENE-2026.md)** - Estado actual y funcionalidades
- **[DOCUMENTACION-COMPLETA.md](./docs/DOCUMENTACION-COMPLETA.md)** - Documento maestro unificado
- **[CAMBIOS-FINALES-22-ENE-2026.md](./docs/CAMBIOS-FINALES-22-ENE-2026.md)** - Últimos cambios implementados
- **[ORGANIZACION-BASE-DATOS.md](./docs/ORGANIZACION-BASE-DATOS.md)** - Estructura de la BD

### Contenido

- Guías detalladas de uso
- Arquitectura del sistema
- APIs y endpoints
- Configuración de IA
- Solución de problemas
- Mantenimiento
- Historial de cambios completo

---

## 🏗️ Estructura del Proyecto

```
bubi-lex/
├── src/
│   ├── app/              # App Router (Next.js 14)
│   │   ├── admin/        # Panel de administración
│   │   ├── api/          # API Routes
│   │   ├── dictionary/   # Diccionario público
│   │   ├── news/         # Noticias
│   │   ├── stories/      # Relatos
│   │   └── ai-features/  # Herramientas IA
│   ├── components/       # Componentes React
│   ├── lib/              # Utilidades
│   └── types/            # Tipos TypeScript
├── db/                   # Scripts SQL
├── public/               # Archivos estáticos
└── docs/                 # Documentación
```

---

## 🎯 Uso

### Para Usuarios

- **Buscar palabras:** `/dictionary` - 7,676 palabras disponibles
- **Traducir:** Traductor en página principal (Español → Bubi)
- **Ver noticias:** `/news`
- **Leer relatos:** `/stories`
- **Herramientas IA:** `/ai-features` - Aprendizaje, quiz, ejemplos

### Para Colaboradores

- **Panel:** `/collaborator`
- **Agregar palabras:** `/collaborator/dictionary/add`
- **Mis palabras:** `/collaborator/dictionary/my-words`

### Para Administradores

- **Panel principal:** `/admin`
- **Diccionario:** `/admin/dictionary` - Gestión completa
- **Noticias:** `/admin/news` - Moderación
- **Relatos:** `/admin/stories` - Moderación
- **Gramática:** `/admin/grammar` - Contexto para IA
- **Auditoría:** `/admin/audit` - Logs del sistema

---

## 🛠️ Tecnologías

### Core
- **Framework:** Next.js 14 (App Router)
- **Lenguaje:** TypeScript
- **Base de Datos:** Supabase (PostgreSQL)
- **Autenticación:** NextAuth.js
- **Estilos:** Tailwind CSS
- **UI Components:** shadcn/ui
- **Iconos:** Lucide React

### Inteligencia Artificial
- **OpenAI GPT** - Traducción y ejemplos de alta calidad (opcional)
- **Anthropic Claude** - Alternativa a OpenAI (opcional)
- **Groq** - IA gratuita con límites generosos (recomendado)
- **Together AI** - IA gratuita con créditos (opcional)
- **Ollama** - IA local 100% gratuita (opcional)
- **Contexto Gramatical** - Archivo MD completo con estructura del Bubi

---

## 📦 Scripts Disponibles

```bash
# Desarrollo
npm run dev

# Build para producción
npm run build

# Iniciar producción
npm start

# Linting
npm run lint

# Type checking
npm run type-check
```

### Scripts de Verificación

```bash
# Verificar conexión a Supabase
node scripts/verify-supabase-connection.js

# Verificar mejoras implementadas
node scripts/verify-improvements.js

# Verificar funcionalidad admin
node scripts/verify-admin-functionality.js
```

### Scripts de Base de Datos

```bash
# Importar diccionario Bubi-Español (ejecutar en orden)
psql -h [host] -U [user] -d [database] -f db/import-diccionario-entries-parte-1.sql
psql -h [host] -U [user] -d [database] -f db/import-diccionario-entries-parte-2.sql
psql -h [host] -U [user] -d [database] -f db/import-diccionario-entries-parte-3.sql
psql -h [host] -U [user] -d [database] -f db/import-diccionario-entries-parte-4.sql

# Importar diccionario Español-Bubi
psql -h [host] -U [user] -d [database] -f db/import-espanol-bubi-parte-1.sql
psql -h [host] -U [user] -d [database] -f db/import-espanol-bubi-parte-2.sql

# Verificar importación
psql -h [host] -U [user] -d [database] -f db/verify-espanol-bubi-import.sql
```

---

## 🤝 Contribuir

1. Fork el proyecto
2. Crear rama feature (`git checkout -b feature/AmazingFeature`)
3. Commit cambios (`git commit -m 'Add AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abrir Pull Request

---

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver archivo `LICENSE` para más detalles.

---

## 🙏 Agradecimientos

- Comunidad Bubi de Guinea Ecuatorial
- Contribuidores del proyecto
- Usuarios y testers

---

## 📞 Soporte

Para soporte y preguntas:

- 📖 Ver [Documentación Actualizada](./docs/ACTUALIZACION-DICCIONARIO-22-ENE-2026.md)
- 📚 Ver [Documentación Completa](./docs/DOCUMENTACION-COMPLETA.md)
- 🐛 Reportar issues en GitHub
- 💬 Contactar al equipo de desarrollo

### Estado del Proyecto

**Versión:** 8.0  
**Última actualización:** 22 de Enero 2026  
**Estado:** ✅ Completado y Funcional

**Funcionalidades principales:**
- ✅ Diccionario completo (7,676 palabras)
- ✅ Búsqueda bidireccional
- ✅ Traductor Español → Bubi con IA
- ✅ Generación de ejemplos con IA
- ✅ Sistema de aprendizaje
- ✅ Pronunciación IPA
- ✅ Noticias y relatos
- ✅ Panel de administración

---

**Hecho con ❤️ para preservar la lengua y cultura Bubi**
