This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

---

## Project Specific Configuration

### Environment Variables

Create a `.env.local` (never commit real secrets) based on `.env.example`.

Key variables:

| Variable | Description |
|----------|-------------|
| `NEXT_PUBLIC_SUPABASE_URL` | Supabase project URL |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Supabase anon key (public) |
| `GOOGLE_CLIENT_ID` / `GOOGLE_CLIENT_SECRET` | OAuth credentials for Google Login |
| `NEXTAUTH_SECRET` | Secret for signing NextAuth JWT / CSRF tokens |
| `ADMIN_GOOGLE_EMAILS` | Comma-separated allowlist of admin emails (empty = everyone with Google login is admin) |
| `ENABLE_AUDIT_LOG` | When `true` enables in-memory admin action audit log |
| `GROQ_API_KEY` | Groq API key for free AI features (recommended) |
| `TOGETHER_API_KEY` | Together AI API key (alternative) |
| `OPENAI_API_KEY` | OpenAI API key (optional, for premium AI) |

### Admin & Authentication

Authentication is implemented with **NextAuth (Google Provider)**. Admin access is restricted by email allowlist (`ADMIN_GOOGLE_EMAILS`).

Protected routes live under `/admin`. Middleware checks a JWT session (strategy = `jwt`).

### AI Features

BubiLex includes advanced AI-powered features:
- **Contextual Translation** - Translate with cultural context
- **Practice Quiz** - Auto-generated quizzes
- **Pronunciation Guide** - IPA notation and tips
- **Contextual Examples** - Culturally appropriate examples
- **Etymology** - Word origins and history

Supports multiple providers:
- **Groq** (free, recommended) - 14,400 req/day
- **Together AI** (free credits)
- **Ollama** (local, unlimited)
- **OpenAI/Anthropic** (premium)

See `FUNCIONALIDADES-IA.md` and `ALTERNATIVAS-GRATUITAS.md` for details.

### Audit Log (Experimental)

If `ENABLE_AUDIT_LOG=true`, each dictionary mutation (create, update, delete, bulk insert) is recorded in an in-memory buffer (max 500 entries). Entries include timestamp, actor email, action, target id and meta.

You can view recent entries at: `/admin/audit` (must be logged in as admin). The API endpoint backing it is `GET /api/admin/audit?limit=50`.

This storage is volatile (resets on redeploy). For persistence, replace `recordAdminAudit` in `src/lib/audit-log.ts` with inserts into a database table (e.g., `admin_audit_log`).

### Realtime Dictionary Events

Server-Sent Events endpoint: `/api/dictionary/events` broadcasts insert/update/delete/bulk-insert events consumed by the dictionary UI for realtime updates.

### Word of the Day

Deterministic selection based on date hashing with fallback to random and avoidance of consecutive duplicates.

---

## 📄 License & Credits

**© 2025 BubiLex. Todos los derechos reservados.**

Desarrollado por **[Eteba Chale Group](https://etebachale-group.github.io/cvfernandochaleeteba.github.io/)**

### Tecnologías Utilizadas
- **Next.js 14** - React framework
- **Supabase** - Database and authentication
- **Tailwind CSS** - Styling
- **shadcn/ui** - UI components
- **Groq** - AI features (free)
- **NextAuth** - Authentication
- **TypeScript** - Type safety

### Contribuciones
Este proyecto es parte del esfuerzo de preservación y promoción del idioma Bubi de Guinea Ecuatorial.

---
