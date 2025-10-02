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
