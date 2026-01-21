const fs = require('fs');
const path = require('path');

// Leer el archivo
const filePath = path.join(process.cwd(), 'de español a bubi.txt');
const content = fs.readFileSync(filePath, 'utf8');

console.log('📖 Procesando diccionario Español-Bubi (VERSIÓN FINAL)...\n');

// Función para extraer palabra en Bubi según el patrón
function extractBubiWord(line) {
  // Patrón 1: "s. f palabra" o "s. m. palabra"
  let match = line.match(/,\s+s\.\s+(?:m\.|f\.)\s+([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  // Patrón 2: "s. palabra" (sin género)
  match = line.match(/,\s+s\.\s+([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  // Patrón 3: "v. inf o palabra" o "v. inf. o palabra"
  match = line.match(/,\s+v\.\s+inf\.?\s+o\s+([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  // Patrón 4: "adv. palabra"
  match = line.match(/,\s+adv\.\s+([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  // Patrón 5: "adj. palabra"
  match = line.match(/,\s+adj\.\s+([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  return null;
}

// Dividir en entradas (cada entrada empieza con palabra en español)
const entryPattern = /^([a-záéíóúñü]+),\s+(s\.|v\.|adj\.|adv\.|S\.|V\.)/gm;
const matches = [...content.matchAll(entryPattern)];

const entries = [];

for (let i = 0; i < matches.length; i++) {
  const match = matches[i];
  const spanishWord = match[1];
  const startPos = match.index;
  const endPos = i < matches.length - 1 ? matches[i + 1].index : content.length;
  
  // Extraer el texto completo de la entrada
  const entryText = content.substring(startPos, endPos).trim();
  const firstLine = entryText.split('\n')[0];
  
  // Extraer información
  const bubiWord = extractBubiWord(firstLine);
  
  if (!bubiWord || bubiWord.length < 2) {
    console.log(`⚠️  Saltando "${spanishWord}" - no se pudo extraer palabra Bubi`);
    continue;
  }
  
  // Extraer tipo gramatical
  const typeMatch = firstLine.match(/,\s+(s\.|v\.|adj\.|adv\.|S\.|V\.)/i);
  const wordType = typeMatch ? typeMatch[1].toLowerCase() : null;
  
  // Extraer género
  const genderMatch = firstLine.match(/,\s+s\.\s+(m\.|f\.)/i);
  const gender = genderMatch ? genderMatch[1] : null;
  
  // Extraer clase nominal
  const classMatch = entryText.match(/\(el\.\s*(\d+)\)/);
  const nominalClass = classMatch ? `Cl. ${classMatch[1]}` : null;
  
  // Limpiar definición
  let cleanedDef = entryText
    // Remover palabra en español
    .replace(new RegExp(`^${spanishWord.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')},?\\s*`, 'i'), '')
    // Remover tipo y género
    .replace(/^(?:s\.|v\.|adj\.|adv\.|S\.|V\.)\s+(?:m\.|f\.)?\s+(?:inf\.?|in!|ir¡\{\.?)?\s*/i, '')
    // Remover palabra en Bubi del inicio
    .replace(new RegExp(`^${bubiWord.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}[\\)\\s]*`, 'i'), '')
    // Remover "o palabra" (variantes)
    .replace(/^,?\s*o\s+[a-záéíóúñü']+[,;\s]*/i, '')
    // Remover clases nominales
    .replace(/\(el\.\s*\d+\)/gi, '')
    // Remover pronunciación entre corchetes
    .replace(/\[[^\]]+\]/g, '')
    // Remover conjugaciones
    .replace(/preso\s+yo\s+.+?etc\./gi, '')
    .replace(/paso\s+punto\s+yo\s+.+?etc\./gi, '')
    .replace(/paso\s+duro\s+yo\s+.+?etc\./gi, '')
    // Remover "Ej. Expr.:"
    .replace(/Ej\.\s*Expr\.:\s*/gi, '')
    // Limpiar espacios y puntuación
    .replace(/\s+/g, ' ')
    .replace(/^[,;\s]+/, '')
    .trim();
  
  // Limitar longitud
  if (cleanedDef.length > 500) {
    cleanedDef = cleanedDef.substring(0, 497) + '...';
  }
  
  entries.push({
    spanish_word: spanishWord,
    bubi: bubiWord,
    word_type: wordType,
    gender: gender,
    nominal_class: nominalClass,
    spanish: cleanedDef,
    notes: `Español: ${spanishWord}`
  });
}

console.log(`✅ Total de entradas procesadas: ${entries.length}\n`);

// Mostrar primeras 30 para verificar
console.log('📝 Primeras 30 entradas (verificación):\n');
entries.slice(0, 30).forEach((entry, idx) => {
  console.log(`${idx + 1}. ${entry.spanish_word} (${entry.word_type || 'N/A'}, ${entry.gender || 'N/A'}) → "${entry.bubi}"`);
});

// Estadísticas
const stats = {
  total: entries.length,
  byType: {},
  withGender: entries.filter(e => e.gender).length,
  withClass: entries.filter(e => e.nominal_class).length
};

entries.forEach(entry => {
  const type = entry.word_type || 'sin tipo';
  stats.byType[type] = (stats.byType[type] || 0) + 1;
});

console.log('\n📊 Estadísticas:\n');
console.log('Por tipo gramatical:');
Object.entries(stats.byType)
  .sort((a, b) => b[1] - a[1])
  .forEach(([type, count]) => {
    const percent = ((count / stats.total) * 100).toFixed(1);
    console.log(`  ${type}: ${count} (${percent}%)`);
  });

console.log(`\nCon género: ${stats.withGender} (${((stats.withGender / stats.total) * 100).toFixed(1)}%)`);
console.log(`Con clase nominal: ${stats.withClass} (${((stats.withClass / stats.total) * 100).toFixed(1)}%)`);

// Guardar JSON
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-final.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');
console.log(`\n💾 Archivo guardado: ${outputPath}`);

console.log('\n✨ Proceso completado');
console.log('✅ Verifica las primeras 30 entradas - las palabras en Bubi deben ser correctas');
