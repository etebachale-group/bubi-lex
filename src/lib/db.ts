import mysql, { ResultSetHeader } from 'mysql2/promise';

const env = process.env as NodeJS.ProcessEnv;

const DB_HOST = env.DB_HOST ?? 'localhost';
const DB_USER = env.DB_USER ?? 'root';
const DB_PASSWORD = env.DB_PASSWORD ?? '';
const DB_NAME = env.DB_NAME ?? 'bubi_lex';
const DB_PORT = Number(env.DB_PORT ?? '3306');

export const pool = mysql.createPool({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  port: DB_PORT,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

type QueryParam = string | number | boolean | null | Date | Buffer;

/**
 * Executes a SQL query and returns typed rows. Use for SELECT statements.
 */
export async function query<T = unknown>(sql: string, params: ReadonlyArray<QueryParam> = []): Promise<T> {
  const [rows] = await pool.execute(sql, params as unknown[]);
  return rows as T;
}

/**
 * Executes a SQL mutation and returns the ResultSetHeader (insertId, affectedRows, etc.).
 */
export async function execute(sql: string, params: ReadonlyArray<QueryParam> = []): Promise<ResultSetHeader> {
  const [result] = await pool.execute(sql, params as unknown[]);
  return result as ResultSetHeader;
}
