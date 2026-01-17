# Arquitectura de BubiLex

## 📐 Visión General

BubiLex es una aplicación Next.js 14 que utiliza el App Router con Server Components y Server Actions para crear un diccionario cultural Bubi-Español con funcionalidades de administración.

## 🏗️ Estructura del Proyecto

```
bubi-lex/
├── src/
│   ├── app/                    # App Router (Next.js 14)
│   │   ├── (pages)/           # Páginas públicas
│   │   │   ├── page.tsx       # Dashboard principal
│   │   │   ├── dictionary/    # Diccionario con búsqueda
│   │   │   └── news/          # Noticias y relatos
│   │   ├── admin/             # Panel administrativo
│   │   │   ├── dictionary/    # CRUD diccionario
│   │   │   ├── news/          # CRUD noticias
│   │   │   └── audit/         # Log de auditoría
│   │   └── api/               # API Routes
│   │       ├── dictionary/    # Endpoints del diccionario
│   │       ├── news/          # Endpoints de noticias
│   │       └── admin/         # Endpoints administrativos
│   ├── components/            # Componentes React
│   │   ├── ui/               # Componentes base (Radix UI)
│   │   ├── admin/            # Componentes admin
│   │   └── seo/              # Componentes SEO
│   ├── lib/                   # Utilidades y lógica de negocio
│   │   ├── db.ts             # Cliente Supabase
│   │   ├── auth-options.ts   # Configuración NextAuth
│   │   ├── audit-log.ts      # Sistema de auditoría
│   │   ├── logger.ts         # Logging estructurado
│   │   └── rate-limit.ts     # Rate limiting
│   └── types/                 # Definiciones TypeScript
├── db/                        # Schemas y scripts de BD
├── scripts/                   # Scripts de migración y seeding
└── public/                    # Assets estáticos
```

## 🔄 Flujo de Datos

### Lectura (Público)
```
Usuario → Página (Server Component) → Supabase → Renderizado SSR
```

### Escritura (Admin)
```
Admin → Formulario → API Route → Validación Zod → Supabase → Auditoría → SSE Broadcast
```

### Tiempo Real
```
Cliente → EventSource → /api/dictionary/events → SSE → Actualización UI
```

## 🔐 Capas de Seguridad

### 1. Autenticación (NextAuth)
- Google OAuth como proveedor
- JWT strategy para sesiones
- Middleware protege rutas `/admin/*`

### 2. Autorización
- Lista blanca de emails (`ADMIN_GOOGLE_EMAILS`)
- Verificación en cada API route
- Tipos TypeScript para `session.isAdmin`

### 3. Validación
- Zod schemas en todas las APIs
- Validación de tipos y formatos
- Sanitización de inputs

### 4. Rate Limiting
- Límites por IP en APIs públicas
- Headers informativos
- Respuestas 429 apropiadas

## 📊 Base de Datos (Supabase/PostgreSQL)

### Tablas Principales

#### `dictionary_entries`
```sql
- id (PK)
- bubi (TEXT, FULLTEXT)
- spanish (TEXT, FULLTEXT)
- ipa (VARCHAR, nullable)
- notes (TEXT, nullable)
- created_at, updated_at
```

#### `news`
```sql
- id (PK)
- title (VARCHAR)
- content (TEXT)
- date (DATE)
- image, video (VARCHAR, nullable)
- likes (INT)
- created_at, updated_at
```

#### `admin_audit_log`
```sql
- id (PK)
- timestamp
- actor_email
- action
- target
- meta (JSON)
```

### Índices
- FULLTEXT en `bubi` y `spanish` para búsqueda
- Índice en `news.date` para ordenamiento
- Índices en audit log para consultas rápidas

## 🎯 Patrones de Diseño

### 1. Server Components First
- Renderizado en servidor por defecto
- Client Components solo cuando necesario
- Mejor SEO y performance

### 2. API Routes como Backend
- Separación clara de lógica
- Reutilizable desde múltiples clientes
- Fácil de testear

### 3. Singleton Pattern (DB)
- Una instancia de Supabase client
- Lazy initialization
- Manejo de errores centralizado

### 4. Observer Pattern (SSE)
- Broadcast de eventos del diccionario
- Múltiples suscriptores
- Desacoplamiento de componentes

### 5. Repository Pattern (implícito)
- Funciones de acceso a datos en `lib/`
- Abstracción de Supabase
- Fácil migración a otra BD

## 🚀 Optimizaciones de Performance

### Implementadas
- ✅ Server-Side Rendering (SSR)
- ✅ Paginación en listados
- ✅ Índices FULLTEXT para búsqueda
- ✅ Rate limiting para proteger recursos
- ✅ Lazy loading de componentes pesados

### Recomendadas
- [ ] Incremental Static Regeneration (ISR)
- [ ] Caché de consultas frecuentes (Redis)
- [ ] Image optimization con next/image
- [ ] Code splitting más agresivo
- [ ] Service Worker para offline

## 📡 APIs y Endpoints

### Públicos (con rate limiting)
```
GET  /api/dictionary?q=&page=&limit=&lang=
GET  /api/dictionary/random
GET  /api/dictionary/examples?word=
GET  /api/dictionary/events (SSE)
```

### Protegidos (requieren admin)
```
POST   /api/dictionary
PUT    /api/dictionary/[id]
DELETE /api/dictionary/[id]
POST   /api/dictionary/bulk

POST   /api/news
PUT    /api/news/[id]
DELETE /api/news/[id]

GET    /api/admin/audit
```

## 🔍 SEO y Accesibilidad

### SEO
- Metadata dinámica por página
- Open Graph y Twitter Cards
- JSON-LD structured data
- Sitemap.xml y robots.txt
- Breadcrumbs

### Accesibilidad
- Skip links
- ARIA labels
- Roles semánticos
- Contraste de colores
- Navegación por teclado

## 🧪 Testing (Recomendado)

### Unit Tests
```typescript
// Ejemplo con Vitest
describe('rateLimit', () => {
  it('should allow requests within limit', () => {
    const result = rateLimit('test', { interval: 60000, maxRequests: 10 });
    expect(result.success).toBe(true);
  });
});
```

### Integration Tests
```typescript
// Ejemplo con Playwright
test('admin can create dictionary entry', async ({ page }) => {
  await page.goto('/admin/dictionary');
  await page.fill('[name="bubi"]', 'test');
  await page.fill('[name="spanish"]', 'prueba');
  await page.click('button[type="submit"]');
  await expect(page.locator('text=test')).toBeVisible();
});
```

## 🔄 CI/CD Pipeline (Recomendado)

```yaml
# .github/workflows/ci.yml
name: CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
      - run: npm ci
      - run: npm run lint
      - run: npm run test
      - run: npm run build
```

## 📈 Monitoreo y Observabilidad

### Logs
- Logging estructurado con `logger.ts`
- Niveles: info, warn, error, debug
- Contexto adicional en cada log

### Métricas (Recomendado)
- Tiempo de respuesta de APIs
- Tasa de errores
- Uso de rate limiting
- Consultas más frecuentes

### Alertas (Recomendado)
- Errores críticos en producción
- Rate limit excedido frecuentemente
- Fallos de autenticación
- Caídas de base de datos

## 🔐 Seguridad Adicional (Recomendado)

### Headers de Seguridad
```typescript
// next.config.js
module.exports = {
  async headers() {
    return [
      {
        source: '/:path*',
        headers: [
          { key: 'X-Frame-Options', value: 'DENY' },
          { key: 'X-Content-Type-Options', value: 'nosniff' },
          { key: 'Referrer-Policy', value: 'strict-origin-when-cross-origin' },
        ],
      },
    ];
  },
};
```

### CSRF Protection
- NextAuth incluye protección CSRF
- Tokens en formularios sensibles
- SameSite cookies

### SQL Injection
- Supabase usa prepared statements
- Validación con Zod
- Nunca concatenar SQL directamente

## 🌍 Internacionalización (Futuro)

Si se necesita soporte multiidioma:

```typescript
// i18n/es.json
{
  "dictionary.title": "Diccionario Bubi-Español",
  "search.placeholder": "Buscar palabra..."
}

// i18n/en.json
{
  "dictionary.title": "Bubi-Spanish Dictionary",
  "search.placeholder": "Search word..."
}
```

## 📱 Progressive Web App (Futuro)

Convertir a PWA para:
- Instalación en dispositivos
- Funcionamiento offline
- Notificaciones push
- Mejor experiencia móvil

```json
// public/manifest.json
{
  "name": "BubiLex",
  "short_name": "BubiLex",
  "description": "Diccionario Bubi-Español",
  "start_url": "/",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
```

## 🎓 Recursos y Referencias

- [Next.js Documentation](https://nextjs.org/docs)
- [Supabase Documentation](https://supabase.com/docs)
- [NextAuth.js Documentation](https://next-auth.js.org)
- [Zod Documentation](https://zod.dev)
- [Radix UI Documentation](https://www.radix-ui.com)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
