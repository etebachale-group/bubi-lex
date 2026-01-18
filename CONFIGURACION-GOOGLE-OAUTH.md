# 🔐 Configuración de Google OAuth para BubiLex

## ⚠️ IMPORTANTE: Configuración Requerida

Para que el sistema de login funcione, **DEBES configurar Google OAuth en Google Cloud Console**.

## 📋 Pasos para Configurar Google OAuth

### 1. Crear Proyecto en Google Cloud Console

1. Ve a [Google Cloud Console](https://console.cloud.google.com/)
2. Haz clic en el selector de proyectos (arriba a la izquierda)
3. Haz clic en "Nuevo Proyecto"
4. Nombre del proyecto: `BubiLex` (o el que prefieras)
5. Haz clic en "Crear"

### 2. Habilitar Google+ API

1. En el menú lateral, ve a "APIs y servicios" → "Biblioteca"
2. Busca "Google+ API"
3. Haz clic en "Google+ API"
4. Haz clic en "Habilitar"

### 3. Configurar Pantalla de Consentimiento OAuth

1. Ve a "APIs y servicios" → "Pantalla de consentimiento de OAuth"
2. Selecciona "Externo" (para permitir cualquier cuenta de Google)
3. Haz clic en "Crear"

**Información de la aplicación:**
- Nombre de la aplicación: `BubiLex`
- Correo electrónico de asistencia: Tu email
- Logo de la aplicación: (opcional) Sube el logo de BubiLex
- Dominio de la aplicación: Tu dominio (ej: `bubi-lex.vercel.app`)
- Correo electrónico del desarrollador: Tu email

4. Haz clic en "Guardar y continuar"
5. En "Permisos", haz clic en "Guardar y continuar" (no necesitas agregar permisos adicionales)
6. En "Usuarios de prueba", agrega los emails que podrán hacer login (opcional si es externo)
7. Haz clic en "Guardar y continuar"

### 4. Crear Credenciales OAuth 2.0

1. Ve a "APIs y servicios" → "Credenciales"
2. Haz clic en "Crear credenciales" → "ID de cliente de OAuth 2.0"
3. Tipo de aplicación: "Aplicación web"
4. Nombre: `BubiLex Web Client`

**Orígenes de JavaScript autorizados:**
```
http://localhost:3000
https://bubi-lex.vercel.app
https://tu-dominio-personalizado.com
```

**URIs de redireccionamiento autorizados:**
```
http://localhost:3000/api/auth/callback/google
https://bubi-lex.vercel.app/api/auth/callback/google
https://tu-dominio-personalizado.com/api/auth/callback/google
```

5. Haz clic en "Crear"
6. **IMPORTANTE:** Copia el "ID de cliente" y el "Secreto del cliente"

### 5. Configurar Variables de Entorno

#### Para Desarrollo Local (`.env.local`):

```env
# Google OAuth
GOOGLE_CLIENT_ID=tu-client-id-aqui.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=tu-client-secret-aqui

# NextAuth
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=genera-un-secret-aleatorio-aqui

# Supabase (ya configurado)
NEXT_PUBLIC_SUPABASE_URL=tu-supabase-url
NEXT_PUBLIC_SUPABASE_ANON_KEY=tu-supabase-key

# Roles (emails autorizados)
ADMIN_GOOGLE_EMAILS=admin@example.com,otro-admin@example.com
COLLABORATOR_GOOGLE_EMAILS=colaborador1@example.com,colaborador2@example.com
```

#### Para Producción (Vercel):

1. Ve a tu proyecto en [Vercel Dashboard](https://vercel.com/dashboard)
2. Ve a "Settings" → "Environment Variables"
3. Agrega las siguientes variables:

| Variable | Valor | Entorno |
|----------|-------|---------|
| `GOOGLE_CLIENT_ID` | Tu Client ID de Google | Production, Preview, Development |
| `GOOGLE_CLIENT_SECRET` | Tu Client Secret de Google | Production, Preview, Development |
| `NEXTAUTH_URL` | `https://bubi-lex.vercel.app` | Production |
| `NEXTAUTH_URL` | `https://tu-preview.vercel.app` | Preview |
| `NEXTAUTH_SECRET` | Tu secret generado | Production, Preview, Development |
| `ADMIN_GOOGLE_EMAILS` | Emails de admins separados por coma | Production, Preview, Development |
| `COLLABORATOR_GOOGLE_EMAILS` | Emails de colaboradores separados por coma | Production, Preview, Development |

### 6. Generar NEXTAUTH_SECRET

Ejecuta en tu terminal:

```bash
# Opción 1: Con OpenSSL
openssl rand -base64 32

# Opción 2: Con Node.js
node -e "console.log(require('crypto').randomBytes(32).toString('base64'))"

# Opción 3: Online
# Ve a: https://generate-secret.vercel.app/32
```

Copia el resultado y úsalo como `NEXTAUTH_SECRET`.

## 🔧 Verificar Configuración

### Archivo `.env.local` completo:

```env
# Google OAuth
GOOGLE_CLIENT_ID=123456789-abcdefghijklmnop.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=GOCSPX-abcdefghijklmnopqrstuvwxyz

# NextAuth
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=tu-secret-aleatorio-de-32-caracteres-base64

# Supabase
NEXT_PUBLIC_SUPABASE_URL=https://tu-proyecto.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=tu-anon-key-aqui

# Roles
ADMIN_GOOGLE_EMAILS=tu-email@gmail.com
COLLABORATOR_GOOGLE_EMAILS=colaborador@gmail.com,otro@gmail.com

# Groq AI (opcional)
GROQ_API_KEY=gsk_tu-api-key-aqui
```

## 🚀 Reiniciar Aplicación

Después de configurar las variables de entorno:

### Desarrollo Local:
```bash
# Detener el servidor (Ctrl+C)
# Reiniciar
npm run dev
```

### Producción (Vercel):
1. Las variables se aplican automáticamente
2. O fuerza un nuevo deployment:
   ```bash
   git commit --allow-empty -m "Trigger redeploy"
   git push origin main
   ```

## ✅ Probar el Login

1. Ve a tu aplicación: `http://localhost:3000` o `https://bubi-lex.vercel.app`
2. Haz clic en el botón "Iniciar Sesión" en el header
3. Deberías ver la página de login con el botón de Google
4. Haz clic en "Continuar con Google"
5. Selecciona tu cuenta de Google
6. Deberías ser redirigido de vuelta a la aplicación

## 🔍 Solución de Problemas

### Error: "redirect_uri_mismatch"
- Verifica que las URIs de redireccionamiento en Google Console coincidan exactamente
- Asegúrate de incluir `/api/auth/callback/google` al final

### Error: "invalid_client"
- Verifica que `GOOGLE_CLIENT_ID` y `GOOGLE_CLIENT_SECRET` sean correctos
- Asegúrate de no tener espacios extra al copiar/pegar

### Error: "Access denied"
- Si tu app está en modo "Testing", agrega tu email como usuario de prueba
- O publica la app (cambiar a "Production" en pantalla de consentimiento)

### No puedo acceder al panel de admin
- Verifica que tu email esté en `ADMIN_GOOGLE_EMAILS`
- Los emails deben estar en minúsculas
- Separados por comas sin espacios: `email1@gmail.com,email2@gmail.com`

### El login no hace nada
- Verifica que `NEXTAUTH_URL` sea correcto
- En local: `http://localhost:3000`
- En producción: tu dominio completo con `https://`

## 📚 Recursos Adicionales

- [NextAuth.js Documentation](https://next-auth.js.org/)
- [Google OAuth 2.0 Setup](https://developers.google.com/identity/protocols/oauth2)
- [Vercel Environment Variables](https://vercel.com/docs/concepts/projects/environment-variables)

## 🎯 Checklist de Configuración

- [ ] Proyecto creado en Google Cloud Console
- [ ] Google+ API habilitada
- [ ] Pantalla de consentimiento OAuth configurada
- [ ] Credenciales OAuth 2.0 creadas
- [ ] URIs de redireccionamiento agregadas
- [ ] Variables de entorno configuradas en `.env.local`
- [ ] Variables de entorno configuradas en Vercel
- [ ] `NEXTAUTH_SECRET` generado
- [ ] Emails de admin agregados a `ADMIN_GOOGLE_EMAILS`
- [ ] Aplicación reiniciada
- [ ] Login probado y funcionando

## 💡 Notas Importantes

1. **Nunca compartas** tus credenciales de Google OAuth
2. **No subas** el archivo `.env.local` a Git (ya está en `.gitignore`)
3. **Usa diferentes credenciales** para desarrollo y producción (recomendado)
4. **Mantén actualizada** la lista de URIs de redireccionamiento si cambias de dominio
