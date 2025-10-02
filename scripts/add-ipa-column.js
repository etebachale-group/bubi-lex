/* eslint-disable no-console */
const mysql = require('mysql2/promise');

const env = process.env;
const DB_HOST = env.DB_HOST ?? 'localhost';
const DB_USER = env.DB_USER ?? 'root';
const DB_PASSWORD = env.DB_PASSWORD ?? '';
const DB_NAME = env.DB_NAME ?? 'bubi_lex';
const DB_PORT = Number(env.DB_PORT ?? '3306');

async function main() {
  const pool = await mysql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_NAME,
    port: DB_PORT,
    waitForConnections: true,
  });
  try {
    const [rows] = await pool.query(
      `SELECT COUNT(*) AS cnt
         FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = ? AND TABLE_NAME = 'dictionary_entries' AND COLUMN_NAME = 'ipa'`,
      [DB_NAME]
    );
    const exists = (Array.isArray(rows) && rows[0] && Number(rows[0].cnt) > 0) || false;
    if (exists) {
      console.log('La columna ipa ya existe.');
      return;
    }
    console.log('Agregando columna ipa VARCHAR(255) NULL a dictionary_entries...');
    await pool.query('ALTER TABLE dictionary_entries ADD COLUMN `ipa` VARCHAR(255) NULL AFTER `spanish`');
    console.log('Columna ipa creada.');
  } finally {
    await pool.end();
  }
}

main().catch((err) => { console.error(err); process.exit(1); });
