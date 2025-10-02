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
      `SELECT INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = ? AND TABLE_NAME = 'dictionary_entries' AND INDEX_TYPE = 'FULLTEXT'`,
      [DB_NAME]
    );
    const names = new Set(rows.map((r) => r.INDEX_NAME));
    if (names.has('ft_bubi_spanish')) {
      console.log('FULLTEXT index ft_bubi_spanish already exists.');
      return;
    }
    console.log('Creating FULLTEXT index ft_bubi_spanish on dictionary_entries(bubi,spanish)...');
    await pool.query('ALTER TABLE dictionary_entries ADD FULLTEXT `ft_bubi_spanish` (`bubi`, `spanish`)');
    console.log('FULLTEXT index created.');
  } finally {
    await pool.end();
  }
}

main().catch((err) => { console.error(err); process.exit(1); });
