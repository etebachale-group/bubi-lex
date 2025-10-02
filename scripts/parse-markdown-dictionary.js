/* eslint-disable no-console */
const fs = require('fs');
const path = require('path');

// Usage: node scripts/parse-markdown-dictionary.js <input.md> [output.json]
// It will read the Markdown, parse bullet entries of the form: * **Term**: Definition
// Detects two sections:
// - "Diccionario Completo Bubi - Español" (bubi-es): creates one record per line with bubi term and spanish short definition, keeps full definition in notes
// - "Diccionario Completo Español - Bubi" (es-bubi): splits multiple bubi terms and creates one record per bubi term

function cleanText(s) {
  return s
    .replace(/^[-–•\s]+/, '')
    .replace(/\s+/g, ' ')
    .replace(/^"|"$/g, '')
    .trim();
}

function extractBackticked(text) {
  const matches = [...text.matchAll(/`([^`]+)`/g)].map((m) => m[1].trim());
  return matches.filter(Boolean);
}

function splitBubiTerms(text) {
  // Prefer backticked terms if present
  const ticks = extractBackticked(text);
  if (ticks.length) return ticks;
  // Remove parentheticals and extra notes to avoid noise
  let t = text.replace(/\([^)]*\)/g, ' ');
  // Split on comma, slash and ' y '
  const parts = t
    .split(/\s*[,/]|\s+y\s+/i)
    .map((p) => p.trim())
    .filter(Boolean);
  // Deduplicate
  return [...new Set(parts)];
}

function firstSentence(s) {
  const idx = s.indexOf('.');
  if (idx === -1) return s.trim();
  return s.slice(0, idx + 1).trim();
}

function parseMarkdown(md) {
  const lines = md.split(/\r?\n/);
  const items = [];
  let mode = null; // 'bubi-es' | 'es-bubi'

  for (const raw of lines) {
    const line = raw.trim();
    if (!line) continue;

    if (/Diccionario Completo Bubi\s*-\s*Espa/i.test(line)) {
      mode = 'bubi-es';
      continue;
    }
    if (/Diccionario Completo Espa/i.test(line) && /Bubi/i.test(line)) {
      mode = 'es-bubi';
      continue;
    }

    const m = line.match(/^\*\s+\*\*(.+?)\*\*:\s+(.+)$/);
    if (!m || !mode) continue;
    const term = cleanText(m[1]);
    const rest = cleanText(m[2]);

    if (mode === 'bubi-es') {
      const spanishShort = firstSentence(rest);
      items.push({ bubi: term, spanish: spanishShort, notes: rest });
    } else if (mode === 'es-bubi') {
      const bubiTerms = splitBubiTerms(rest);
      for (const bt of bubiTerms) {
        // Ignore empty or generic fragments
        if (!bt || bt.length > 191) continue;
        items.push({ bubi: bt, spanish: term });
      }
    }
  }
  return items;
}

function main() {
  const input = process.argv[2];
  const output = process.argv[3] || path.join(process.cwd(), 'db', 'seed-dictionary.json');
  if (!input) {
    console.error('Usage: node scripts/parse-markdown-dictionary.js <input.md> [output.json]');
    process.exit(1);
  }
  const md = fs.readFileSync(input, 'utf8');
  const items = parseMarkdown(md);
  console.log(`Parsed ${items.length} items.`);
  fs.writeFileSync(output, JSON.stringify(items, null, 2), 'utf8');
  console.log(`Wrote ${output}`);
}

if (require.main === module) {
  main();
}

module.exports = { parseMarkdown };
