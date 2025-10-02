/* eslint-disable no-console */
const fs = require('fs/promises');
const path = require('path');
const mysql = require('mysql2/promise');

const env = process.env;
const DB_HOST = env.DB_HOST ?? 'localhost';
const DB_USER = env.DB_USER ?? 'root';
const DB_PASSWORD = env.DB_PASSWORD ?? '';
const DB_NAME = env.DB_NAME ?? 'bubi_lex';
const DB_PORT = Number(env.DB_PORT ?? '3306');

async function main() {
  const file = process.argv[2] || path.join(process.cwd(), 'db', 'seed-dictionary.sample.json');
  const raw = await fs.readFile(file, 'utf8');
  const items = JSON.parse(raw);
  if (!Array.isArray(items)) throw new Error('Seed file must be a JSON array');

  const pool = await mysql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_NAME,
    port: DB_PORT,
    waitForConnections: true,
    connectionLimit: 10,
  });
  try {
    let inserted = 0;
    const chunkSize = 500; // batch inserts to avoid overly long statements
    for (let i = 0; i < items.length; i += chunkSize) {
      const batch = items.slice(i, i + chunkSize).map((it) => ({
        bubi: String(it.bubi ?? '').trim(),
        spanish: String(it.spanish ?? '').trim(),
        ipa: it.ipa == null || it.ipa === '' ? null : String(it.ipa).trim(),
        notes: it.notes == null || it.notes === '' ? null : String(it.notes).trim(),
      })).filter((it) => it.bubi && it.spanish);
      if (batch.length === 0) continue;
      const placeholders = batch.map(() => '(?, ?, ?, ?)').join(',');
      const values = batch.flatMap((i) => [i.bubi, i.spanish, i.ipa, i.notes]);
      const [res] = await pool.execute(
        `INSERT INTO dictionary_entries (bubi, spanish, ipa, notes) VALUES ${placeholders}`,
        values
      );
      inserted += res.affectedRows || batch.length;
    }
    console.log(`Seeded ${inserted} entries into dictionary_entries.`);
  } finally {
    await pool.end();
  }
}

main().catch((err) => { console.error(err); process.exit(1); });
