/* eslint-disable no-console */
const fs = require('fs/promises');
const path = require('path');

const API = process.env.SEED_API_URL || 'http://localhost:3000/api/dictionary/bulk';

async function main() {
  const file = process.argv[2] || path.join(process.cwd(), 'db', 'seed-dictionary.sample.json');
  const raw = await fs.readFile(file, 'utf8');
  const items = JSON.parse(raw);
  if (!Array.isArray(items)) throw new Error('Seed file must be a JSON array');

  const res = await fetch(API, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(items),
  });
  if (!res.ok) {
    const text = await res.text();
    throw new Error(`Seed failed: ${res.status} ${res.statusText} - ${text}`);
  }
  const out = await res.json();
  console.log('Seed result:', out);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
