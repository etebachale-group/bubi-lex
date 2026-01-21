const fs = require('fs');
const path = require('path');

// Leer el archivo
const filePath = path.join(process.cwd(), 'de español a bubi.txt');
const content = fs.readFileSync(filePath, 'utf8');

// Función para extraer tipo gramatical
function extractWordType(text) {
  const match = text.match(/,\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)/i);
  return match ? match[1] : null;
}

// Función para extraer género
function extractGender(text) {
  const match = text.match(/,\s+s\.\s+(m\.|f\.)/i);
  return match ? match[1] : null;
}

// Función para extraer clase nominal
function extractNominalClass(text) {
  const match = text.match(/\(el\.\s*(\d+)\)/i);
  return match ? `Cl. ${match[1]}` : null;
}

// Función para extraer palabra en Bubi
function extractBubiWord(text) {
  // Buscar la primera palabra en Bubi después del tipo gramatical
  const match = text.match(/(?:s\.|v\.|adj\.|adv\.)\s+(?:m\.|f\.)?\s*([a-záéíóúñü']+)/i);
  if (match) return match[1];
  
  // Alternativa: buscar después de género
  const match2 = text.match(/(?:m\.|f\.)\s+([a-záéíóúñü']+)/i);
  if (match2) return match2[1];
  
  return null;
}

// Función para limpiar y extraer definición
function cleanDefinition(text) {
  // Remover información gramatical del inicio
  let cleaned = text.replace(/^[^,]+,\s+(?:s\.|v\.|adj\.|adv\.)\s+(?:m\.|f\.)?\s+(?:inf\.?\s+)?/i, '');
  
  // Remover clases nominales
  cleaned = cleaned.replace(/\(el\.\s*\d+\)/gi, '');
  
  // Remover corchetes con pronunciación
  cleaned = cleaned.replace(/\[[^\]]+\]/g, '');
  
  // Limpiar espacios múltiples
  cleaned = cleaned.replace(/\s+/g, ' ').trim();
  
  return cleaned;
}

// Dividir el contenido en líneas
const lines = content.split('\n');

const entries = [];
let currentEntry = null;
let currentSpanish = '';
let currentDefinition = '';

console.log('📖 Procesando diccionario Español-Bubi...\n');

for (let i = 0; i < lines.length; i++) {
  const line = lines[i].trim();
  
  // Saltar líneas vacías o encabezados
  if (!line || line === 'Diccionario' || line === 'Español-Bubi') {
    continue;
  }
  
  // Detectar nueva entrada (palabra en español seguida de tipo gramatical)
  const entryMatch = line.match(/^([a-záéíóúñü]+),\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)/i);
  
  if (entryMatch) {
    // Guardar entrada anterior si existe
    if (currentEntry) {
      entries.push({
        spanish_word: currentSpanish,
        bubi: currentEntry.bubi,
        word_type: currentEntry.word_type,
        gender: currentEntry.gender,
        nominal_class: currentEntry.nominal_class,
        spanish: currentDefinition.trim(),
        notes: 'Fuente: Diccionario Español-Bubi'
      });
    }
    
    // Iniciar nueva entrada
    currentSpanish = entryMatch[1];
    const wordType = extractWordType(line);
    const gender = extractGender(line);
    const nominalClass = extractNominalClass(line);
    const bubiWord = extractBubiWord(line);
    
    currentEntry = {
      bubi: bubiWord,
      word_type: wordType,
      gender: gender,
      nominal_class: nominalClass
    };
    
    currentDefinition = cleanDefinition(line);
  } else if (currentEntry) {
    // Continuar con la definición de la entrada actual
    currentDefinition += ' ' + line;
  }
}

// Guardar última entrada
if (currentEntry) {
  entries.push({
    spanish_word: currentSpanish,
    bubi: currentEntry.bubi,
    word_type: currentEntry.word_type,
    gender: currentEntry.gender,
    nominal_class: currentEntry.nominal_class,
    spanish: currentDefinition.trim(),
    notes: 'Fuente: Diccionario Español-Bubi'
  });
}

// Filtrar entradas válidas (que tengan palabra en Bubi)
const validEntries = entries.filter(e => e.bubi && e.bubi.length > 0);

console.log(`✅ Total de entradas procesadas: ${entries.length}`);
console.log(`✅ Entradas válidas (con palabra Bubi): ${validEntries.length}`);
console.log(`❌ Entradas sin palabra Bubi: ${entries.length - validEntries.length}\n`);

// Ordenar alfabéticamente por palabra en español
validEntries.sort((a, b) => a.spanish_word.localeCompare(b.spanish_word, 'es'));

// Estadísticas
const stats = {
  total: validEntries.length,
  byType: {},
  byGender: {},
  byClass: {}
};

validEntries.forEach(entry => {
  // Por tipo
  const type = entry.word_type || 'sin tipo';
  stats.byType[type] = (stats.byType[type] || 0) + 1;
  
  // Por género
  const gender = entry.gender || 'sin género';
  stats.byGender[gender] = (stats.byGender[gender] || 0) + 1;
  
  // Por clase
  const nomClass = entry.nominal_class || 'sin clase';
  stats.byClass[nomClass] = (stats.byClass[nomClass] || 0) + 1;
});

console.log('📊 Estadísticas:\n');
console.log('Por tipo gramatical:');
Object.entries(stats.byType)
  .sort((a, b) => b[1] - a[1])
  .forEach(([type, count]) => {
    const percent = ((count / stats.total) * 100).toFixed(1);
    console.log(`  ${type}: ${count} (${percent}%)`);
  });

console.log('\nPor género:');
Object.entries(stats.byGender)
  .sort((a, b) => b[1] - a[1])
  .forEach(([gender, count]) => {
    const percent = ((count / stats.total) * 100).toFixed(1);
    console.log(`  ${gender}: ${count} (${percent}%)`);
  });

console.log('\nPor clase nominal (top 10):');
Object.entries(stats.byClass)
  .sort((a, b) => b[1] - a[1])
  .slice(0, 10)
  .forEach(([nomClass, count]) => {
    const percent = ((count / stats.total) * 100).toFixed(1);
    console.log(`  ${nomClass}: ${count} (${percent}%)`);
  });

// Guardar en JSON
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-organizado.json');
fs.writeFileSync(outputPath, JSON.stringify(validEntries, null, 2), 'utf8');
console.log(`\n💾 Archivo guardado: ${outputPath}`);

// Crear archivo SQL de importación
const sqlLines = [
  '-- Importación de diccionario Español-Bubi',
  '-- Total de entradas: ' + validEntries.length,
  '-- Fecha: ' + new Date().toISOString().split('T')[0],
  '',
  'BEGIN;',
  ''
];

// Dividir en lotes de 25
const batchSize = 25;
for (let i = 0; i < validEntries.length; i += batchSize) {
  const batch = validEntries.slice(i, i + batchSize);
  
  sqlLines.push(`-- Lote ${Math.floor(i / batchSize) + 1} (entradas ${i + 1} a ${Math.min(i + batchSize, validEntries.length)})`);
  sqlLines.push('INSERT INTO dictionary_entries (');
  sqlLines.push('  bubi, word_type, gender, nominal_class,');
  sqlLines.push('  spanish, notes, created_by');
  sqlLines.push(') VALUES');
  
  const values = batch.map((entry, idx) => {
    const bubi = entry.bubi.replace(/'/g, "''");
    const spanish = `${entry.spanish_word}: ${entry.spanish}`.replace(/'/g, "''");
    const notes = (entry.notes || '').replace(/'/g, "''");
    const wordType = entry.word_type ? `'${entry.word_type}'` : 'NULL';
    const gender = entry.gender ? `'${entry.gender}'` : 'NULL';
    const nomClass = entry.nominal_class ? `'${entry.nominal_class}'` : 'NULL';
    
    const comma = idx < batch.length - 1 ? ',' : ';';
    return `  ('${bubi}', ${wordType}, ${gender}, ${nomClass}, '${spanish}', '${notes}', 'import-espanol-bubi')${comma}`;
  });
  
  sqlLines.push(...values);
  sqlLines.push('');
}

sqlLines.push('COMMIT;');
sqlLines.push('');
sqlLines.push(`-- Total de entradas importadas: ${validEntries.length}`);

const sqlPath = path.join(process.cwd(), 'db', 'import-espanol-bubi.sql');
fs.writeFileSync(sqlPath, sqlLines.join('\n'), 'utf8');
console.log(`💾 Archivo SQL guardado: ${sqlPath}`);

// Mostrar primeras 10 entradas como ejemplo
console.log('\n📝 Primeras 10 entradas:\n');
validEntries.slice(0, 10).forEach((entry, idx) => {
  console.log(`${idx + 1}. ${entry.spanish_word} (${entry.word_type || 'N/A'}) → ${entry.bubi}`);
  console.log(`   ${entry.spanish.substring(0, 80)}${entry.spanish.length > 80 ? '...' : ''}\n`);
});

console.log('✨ Proceso completado');
