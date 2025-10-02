/* eslint-disable no-console */
const fs = require('fs/promises');
const path = require('path');
const mysql = require('mysql2/promise');

const env = process.env;
const DB_HOST = env.DB_HOST ?? 'localhost';
const DB_USER = env.DB_USER ?? 'root';
const DB_PASSWORD = env.DB_PASSWORD ?? '';
const DB_PORT = Number(env.DB_PORT ?? '3306');

async function main() {
  const schemaPath = path.join(process.cwd(), 'db', 'schema.sql');
  const sql = await fs.readFile(schemaPath, 'utf8');

  const conn = await mysql.createConnection({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    port: DB_PORT,
    multipleStatements: true,
  });
  try {
    await conn.query(sql);
    console.log('Schema applied successfully.');
  } finally {
    await conn.end();
  }
}

main().catch((err) => { console.error(err); process.exit(1); });
