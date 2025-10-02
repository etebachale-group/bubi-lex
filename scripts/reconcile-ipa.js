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

function parseArgs() {
  const args = process.argv.slice(2);
  const opts = { file: null, dryRun: false };
  for (let i = 0; i < args.length; i++) {
    const a = args[i];
    if (!a) continue;
    if (a === '--dry-run') opts.dryRun = true;
    else if (a === '--file') opts.file = args[++i] || null;
    else if (!opts.file) opts.file = a;
  }
  return opts;
}

async function loadMapping(filePath) {
  const resolved = path.isAbsolute(filePath) ? filePath : path.join(process.cwd(), filePath);
  const raw = await fs.readFile(resolved, 'utf8');
  const data = JSON.parse(raw);
  // Accept either an array of { bubi, ipa } or an object map { bubi: ipa }
  /** @type {Array<{bubi:string, ipa:string|null}>} */
  const items = [];
  if (Array.isArray(data)) {
    for (const it of data) {
      if (it && typeof it.bubi === 'string') {
        items.push({ bubi: it.bubi.trim(), ipa: (it.ipa ?? null) ? String(it.ipa).trim() : null });
      }
    }
  } else if (data && typeof data === 'object') {
    for (const [k, v] of Object.entries(data)) {
      items.push({ bubi: String(k).trim(), ipa: v == null ? null : String(v).trim() });
    }
  } else {
    throw new Error('Unsupported mapping format: expected array or object');
  }
  return items.filter((x) => x.bubi);
}

async function main() {
  const { file, dryRun } = parseArgs();
  if (!file) {
    console.error('Usage: node scripts/reconcile-ipa.js --file <mapping.json> [--dry-run]');
    process.exit(2);
  }

  const items = await loadMapping(file);
  if (items.length === 0) {
    console.warn('No entries found in mapping file');
    return;
  }

  console.log(`Loaded ${items.length} IPA mappings from ${file}`);

  const pool = await mysql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_NAME,
    port: DB_PORT,
    waitForConnections: true,
    connectionLimit: 10,
  });

  let updated = 0;
  let missing = 0;
  let unchanged = 0;

  try {
    for (const { bubi, ipa } of items) {
      // Check current value to avoid unnecessary writes
      const [rows] = await pool.execute('SELECT id, ipa FROM dictionary_entries WHERE bubi = ? LIMIT 1', [bubi]);
      const row = Array.isArray(rows) && rows[0];
      if (!row) {
        missing++;
        console.warn(`No match in DB for bubi="${bubi}"`);
        continue;
      }
      const id = row.id;
      const current = row.ipa;
      if (current === ipa) {
        unchanged++;
        continue;
      }
      if (dryRun) {
        console.log(`[dry-run] UPDATE dictionary_entries SET ipa=${JSON.stringify(ipa)} WHERE id=${id} (bubi=${JSON.stringify(bubi)})`);
        updated++;
      } else {
        const [res] = await pool.execute('UPDATE dictionary_entries SET ipa = ? WHERE id = ?', [ipa, id]);
        // res.affectedRows should be 1 when changed or same value is set depending on MySQL mode; count as updated
        updated++;
      }
    }
  } finally {
    await pool.end();
  }

  console.log('Reconciliation complete:');
  console.log(`  Updated:   ${updated}`);
  console.log(`  Unchanged: ${unchanged}`);
  console.log(`  No match:  ${missing}`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
