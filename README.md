# 🌍 BubiLex - Diccionario Bubi-Español

Diccionario digital interactivo de la lengua Bubi con funcionalidades avanzadas de IA, sistema de noticias, relatos comunitarios y herramientas de aprendizaje.

[![Next.js](https://img.shields.io/badge/Next.js-14-black)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5-blue)](https://www.typescriptlang.org/)
[![Supabase](https://img.shields.io/badge/Supabase-PostgreSQL-green)](https://supabase.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-CSS-38bdf8)](https://tailwindcss.com/)

---

## ✨ Características

- 🔍 **Diccionario Bidireccional** - Búsqueda Bubi ↔ Español
- 🤖 **IA Integrada** - Aprendizaje personalizado, quiz y traducción
- 📰 **Sistema de Noticias** - Con comentarios y likes
- 📖 **Relatos Comunitarios** - Historias moderadas por la comunidad
- 🎯 **Sistema de Roles** - Admin, Colaborador, Usuario
- 🔊 **Pronunciación IPA** - Generación automática
- 📱 **PWA** - Instalable como app
- 🌙 **Dark Mode** - Tema claro y oscuro
- ⚡ **Tiempo Real** - Actualizaciones instantáneas

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
# Supabase
NEXT_PUBLIC_SUPABASE_URL=tu_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=tu_key
SUPABASE_SERVICE_ROLE_KEY=tu_service_key

# NextAuth
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=genera_con_openssl_rand_base64_32

# Google OAuth
GOOGLE_CLIENT_ID=tu_client_id
GOOGLE_CLIENT_SECRET=tu_client_secret

# Admin
ADMIN_EMAILS=admin@example.com

# OpenAI (Opcional)
OPENAI_API_KEY=tu_api_key
```

### Base de Datos

Ejecutar scripts SQL en Supabase (en orden):

1. `db/schema.sql` - Esquema base
2. `db/add-comments-system.sql` - Sistema de comentarios
3. `db/add-stories-system.sql` - Sistema de relatos
4. `db/add-grammar-system.sql` - Sistema de gramática para IA
5. `db/audit-schema.sql` - Logs de auditoría

---

## 📚 Documentación

Ver **[DOCUMENTACION-PROYECTO.md](./docs/DOCUMENTACION-PROYECTO.md)** para:

- Guías detalladas de uso
- Arquitectura del sistema
- APIs y endpoints
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

- **Buscar palabras:** `/dictionary`
- **Ver noticias:** `/news`
- **Leer relatos:** `/stories`
- **Herramientas IA:** `/ai-features`

### Para Colaboradores

- **Panel:** `/collaborator`
- **Agregar palabras:** `/collaborator/dictionary/add`
- **Mis palabras:** `/collaborator/dictionary/my-words`

### Para Administradores

- **Panel principal:** `/admin`
- **Diccionario:** `/admin/dictionary`
- **Noticias:** `/admin/news`
- **Relatos:** `/admin/stories`
- **Auditoría:** `/admin/audit`

---

## 🛠️ Tecnologías

- **Framework:** Next.js 14 (App Router)
- **Lenguaje:** TypeScript
- **Base de Datos:** Supabase (PostgreSQL)
- **Autenticación:** NextAuth.js
- **Estilos:** Tailwind CSS
- **UI Components:** shadcn/ui
- **IA:** OpenAI GPT (opcional)
- **Iconos:** Lucide React

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

- 📖 Ver [Documentación Completa](./docs/DOCUMENTACION-PROYECTO.md)
- 🐛 Reportar issues en GitHub
- 💬 Contactar al equipo de desarrollo

---

**Hecho con ❤️ para preservar la lengua y cultura Bubi**
