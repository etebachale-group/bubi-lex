Configuración de Base de Datos (XAMPP / MySQL)
=============================================

1) Crear la base de datos y tablas
----------------------------------

- Abre phpMyAdmin (http://localhost/phpmyadmin)
- Importa el archivo `db/schema.sql` o ejecuta su contenido manualmente.
- Esto crea la BD `bubi_lex` y las tablas `dictionary_entries` y `news`.

2) Variables de entorno en Next.js
----------------------------------

En la raíz del proyecto, crea `.env.local` con:

```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=bubi_lex
DB_PORT=3306
NEXT_PUBLIC_SITE_URL=http://localhost:3000
```

3) Instalar dependencias y ejecutar
-----------------------------------

```
npm install
npm run dev
```

4) Endpoints disponibles
## Bulk import (Dictionary)

- Endpoint: `POST /api/dictionary/bulk`
	- Body: Array of objects `{ bubi: string, spanish: string, notes?: string | null }`
	- Example:

		[
			{ "bubi": "Bötyö", "spanish": "Persona" },
			{ "bubi": "Mona", "spanish": "Niño" }
		]

- Seeding from a JSON file:
	1. Put your entries into a file, e.g. `db/seed-dictionary.json` (use `db/seed-dictionary.sample.json` as template).
	2. Make sure your dev server is running.
	3. Run the seed script:

		 npm run seed:dictionary

		 # optionally, pass a custom path
		 node ./scripts/seed-dictionary.js ./db/seed-dictionary.json

	- You can override the target API with env var `SEED_API_URL`, e.g. `http://localhost:3001/api/dictionary/bulk` if your dev server uses 3001.

	### Import from Markdown

	If you have a Markdown source like the one you shared, you can convert it to JSON and import:

	1) Put your Markdown file at `db/dictionary.md`.
	2) Convert to JSON:

		npm run dict:parse-md ./db/dictionary.md

		This writes `db/seed-dictionary.json`.

	3) Seed into the DB (server must be running):

		npm run seed:dictionary ./db/seed-dictionary.json
- POST /api/news → { title, content, date(YYYY-MM-DD), image?, video? }

- Para producción, usa credenciales seguras y pools gestionados.

---

Configuración de Supabase (Postgres)
=====================================

Supabase es una alternativa a MySQL que usa Postgres. Esta aplicación soporta ambos backends.

1) Crear proyecto en Supabase
------------------------------

1. Ve a https://app.supabase.com y crea un nuevo proyecto
2. Espera a que el proyecto esté listo (toma ~2 minutos)
3. Anota las credenciales del proyecto:
   - Project URL (ej: `https://xxxxx.supabase.co`)
   - `anon` key (llave pública)
   - `service_role` key (llave privada - NUNCA la compartas en el cliente)

2) Aplicar el schema de base de datos
--------------------------------------

1. En Supabase Dashboard, ve a SQL Editor
2. Abre el archivo `db/schema.supabase.sql` de este repositorio
3. Copia y pega todo el contenido en el SQL Editor
4. Click en "Run" para ejecutar

Esto crea:
- Tablas `dictionary_entries` y `news` con sus índices
- Columnas `search_vector` con índices GIN para búsqueda de texto completo
- Índices trigram para búsqueda fuzzy/aproximada
- Triggers `updated_at` automáticos
- Políticas RLS (Row Level Security) para acceso público de solo lectura
- Campo `entry_key` único generado para upserts idempotentes

3) Configurar variables de entorno
-----------------------------------

### Para desarrollo local

Crea `.env.local` en la raíz del proyecto con:

```
# Supabase
NEXT_PUBLIC_SUPABASE_URL=https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJhbG...tu_anon_key
SUPABASE_SERVICE_ROLE_KEY=eyJhbG...tu_service_role_key

# Opcional: mantén MySQL para desarrollo híbrido
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=bubi_lex
DB_PORT=3306
```

### Para producción en Vercel

1. Ve a tu proyecto en Vercel Dashboard
2. Settings > Environment Variables
3. Agrega:
   - `NEXT_PUBLIC_SUPABASE_URL` = tu Project URL
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` = tu anon key
   - `SUPABASE_SERVICE_ROLE_KEY` = tu service_role key (marca como "Secret")

⚠️ **IMPORTANTE**: Nunca incluyas `SUPABASE_SERVICE_ROLE_KEY` en variables que empiecen con `NEXT_PUBLIC_` ni la expongas al cliente. Solo úsala en código del servidor.

4) Seed de datos desde JSON
----------------------------

Ejecuta el script de seed que lee `db/seed-dictionary.json` y lo sube a Supabase:

```bash
npm run seed:supabase

# O con un archivo personalizado:
node ./scripts/seed-supabase.cjs ./db/mi-diccionario.json
```

El script:
- Lee el archivo JSON
- Procesa en lotes de 500 items
- Usa `upsert` para evitar duplicados (basado en `entry_key`)
- Reporta progreso y errores

5) Bulk import via API
----------------------

El endpoint `POST /api/dictionary/bulk` ahora soporta tanto MySQL como Supabase automáticamente:

- Si las variables de Supabase están configuradas, usa Supabase
- Si no, usa MySQL como fallback
- Usa el mismo formato JSON:

```bash
curl -X POST http://localhost:3000/api/dictionary/bulk \
  -H "Content-Type: application/json" \
  -d '[
    { "bubi": "Bötyö", "spanish": "Persona", "ipa": "bøtʲø", "notes": "..." },
    { "bubi": "Mona", "spanish": "Niño" }
  ]'
```

Respuesta exitosa:
```json
{
  "ok": true,
  "inserted": 2,
  "backend": "supabase"
}
```

6) Seguridad y Row Level Security (RLS)
----------------------------------------

El schema de Supabase incluye políticas RLS:

- ✅ **SELECT (lectura)**: Público - cualquiera puede leer
- ❌ **INSERT/UPDATE/DELETE**: Solo mediante service_role (API routes del servidor)

Esto significa:
- Los usuarios pueden consultar el diccionario desde el navegador usando `anon` key
- Solo tus API routes con `service_role` key pueden modificar datos
- Protección automática contra modificaciones no autorizadas

7) Ventajas de Supabase
------------------------

- **Gratis**: 500 MB de base de datos, 1 GB de ancho de banda
- **Búsqueda avanzada**: Full-text search (FTS) con Postgres y trigram indexes
- **Realtime**: Suscripciones en tiempo real (opcional)
- **Escalable**: Auto-scaling en producción
- **Backups**: Backups diarios automáticos
- **Dashboard**: UI para ver/editar datos y logs
- **Edge Functions**: Funciones serverless si las necesitas

8) Troubleshooting
------------------

### "Missing SUPABASE_SERVICE_ROLE_KEY"
- Asegúrate de que la variable esté en `.env.local` (local) o Vercel (producción)
- No uses `NEXT_PUBLIC_` para esta variable

### "violates unique constraint entry_key"
- Normal si intentas insertar el mismo término dos veces
- El script de seed usa `upsert` para actualizar en lugar de duplicar

### Performance lento
- Verifica que los índices se crearon correctamente en SQL Editor
- Chequea Network tab para ver si hay requests innecesarios

### Queries no encuentran resultados
- Verifica que RLS está configurado correctamente
- Usa SQL Editor para hacer queries directas y ver qué datos existen

