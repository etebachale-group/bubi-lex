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
      `SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH AS LEN
         FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = ? AND TABLE_NAME = 'dictionary_entries' AND COLUMN_NAME IN ('spanish','bubi')`,
      [DB_NAME]
    );
    if (!Array.isArray(rows) || rows.length === 0) {
      console.log('Tabla o columnas no encontradas; ¿aplicaste el schema?');
      process.exit(2);
    }
    const current = Object.fromEntries(rows.map(r => [String(r.COLUMN_NAME).toLowerCase(), String(r.DATA_TYPE).toLowerCase()]));
    if (current['spanish'] !== 'text') {
      console.log('Modificando columna spanish a TEXT NOT NULL...');
      await pool.query('ALTER TABLE dictionary_entries MODIFY spanish TEXT NOT NULL');
      console.log('spanish cambiado a TEXT.');
    } else {
      console.log('La columna spanish ya es TEXT.');
    }
    if (current['bubi'] !== 'text') {
      console.log('Modificando columna bubi a TEXT NOT NULL...');
      await pool.query('ALTER TABLE dictionary_entries MODIFY bubi TEXT NOT NULL');
      console.log('bubi cambiado a TEXT.');
    } else {
      console.log('La columna bubi ya es TEXT.');
    }
    console.log('Revalidando índice FULLTEXT si aplica...');
    // Intentar asegurar el índice (ignorando errores si ya existe)
    try {
      await pool.query('ALTER TABLE dictionary_entries ADD FULLTEXT `ft_bubi_spanish` (`bubi`, `spanish`)');
      console.log('FULLTEXT creado.');
    } catch (e) {
      console.log('FULLTEXT ya existía o no fue necesario.');
    }
  } finally {
    await pool.end();
  }
}

main().catch((err) => { console.error(err); process.exit(1); });
