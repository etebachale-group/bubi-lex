const fs = require('fs');
const path = require('path');

console.log('📖 Procesamiento inteligente del diccionario Español-Bubi...\n');

// Leer el archivo
const filePath = path.join(process.cwd(), 'de español a bubi.txt');
const content = fs.readFileSync(filePath, 'utf8');

// Dividir en líneas y limpiar
const lines = content.split('\n').map(l => l.trim()).filter(l => l);

const entries = [];
let currentEntry = null;
let currentText = '';

// Patrones mejorados
const entryPattern = /^([a-záéíóúñü]+(?:\s+[a-záéíóúñü]+)?),\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)/i;

for (let i = 0; i < lines.length; i++) {
  const line = lines[i];
  
  // Saltar encabezados
  if (line.match(/^Diccionario/i) || line.match(/^Español-Bubi/i)) continue;
  
  // Detectar nueva entrada
  const match = line.match(entryPattern);
  
  if (match) {
    // Guardar entrada anterior si existe
    if (currentEntry && currentText) {
      processEntry(currentEntry, currentText, entries);
    }
    
    // Iniciar nueva entrada
    currentEntry = {
      spanish_word: match[1].toLowerCase().trim(),
      word_type: match[2].toLowerCase()
    };
    currentText = line;
  } else if (currentEntry) {
    // Continuar acumulando texto de la entrada actual
    currentText += ' ' + line;
  }
}

// Procesar última entrada
if (currentEntry && currentText) {
  processEntry(currentEntry, currentText, entries);
}

function processEntry(entry, fullText, entries) {
  // Extraer palabra en Bubi - mejorado para manejar múltiples casos
  let bubiMatch;
  
  // Caso 1: v. inf o palabra, v. inf. o palabra
  bubiMatch = fullText.match(/v\.\s+inf\.?\s+(?:\d+\.\s+)?o\s+([a-záéíóúñü']+)/i);
  
  // Caso 2: s. f/m palabra (clase)
  if (!bubiMatch) {
    bubiMatch = fullText.match(/(?:s\.|adj\.)\s+(?:f\.|m\.|m\/f\.)\s+([a-záéíóúñü']+)\s+\(/i);
  }
  
  // Caso 3: adv. palabra
  if (!bubiMatch) {
    bubiMatch = fullText.match(/adv\.\s+([a-záéíóúñü']+)(?:\s*,|\s*;)/i);
  }
  
  // Caso 4: tipo palabra (sin género)
  if (!bubiMatch) {
    bubiMatch = fullText.match(/(?:s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)\s+([a-záéíóúñü']+)\s+\(/i);
  }
  
  // Caso 5: cualquier palabra después del tipo
  if (!bubiMatch) {
    bubiMatch = fullText.match(/(?:s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)\s+(?:inf\.?\s+)?(?:f\.?\s+|m\.?\s+)?([a-záéíóúñü']+)/i);
  }
  
  if (!bubiMatch || bubiMatch[1].length < 2) {
    console.log(`⚠️  No se pudo extraer palabra Bubi de: ${entry.spanish_word}`);
    return;
  }
  
  entry.bubi = bubiMatch[1].trim();
  
  // Extraer género
  const genderMatch = fullText.match(/\b(m\.|f\.|m\/f\.)\b/i);
  entry.gender = genderMatch ? genderMatch[1].toLowerCase() : null;
  
  // Extraer clase nominal
  const classMatch = fullText.match(/\(el\.\s*(\d+[a-z]?)\)/i);
  entry.nominal_class = classMatch ? `Cl. ${classMatch[1]}` : null;
  
  // Extraer número
  const numberMatch = fullText.match(/\b(pl\.|pI\.|sing\.)\b/i);
  entry.number = numberMatch ? numberMatch[1].toLowerCase().replace('pi.', 'pl.') : null;
  
  // Limpiar definición en español
  let spanish = fullText;
  
  // Remover palabra en español del inicio
  spanish = spanish.replace(new RegExp(`^${entry.spanish_word},?\\s*`, 'i'), '');
  
  // Remover tipo gramatical
  spanish = spanish.replace(/^(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)\s+/i, '');
  
  // Remover "inf."
  spanish = spanish.replace(/^inf\.?\s+/i, '');
  
  // Remover género
  spanish = spanish.replace(/^(m\.|f\.|m\/f\.)\s+/i, '');
  
  // Extraer ejemplos (texto después de "Ej." o "Ex.")
  const examples = [];
  const exampleMatches = spanish.match(/(?:Ej|Ex)\s*\.\s*Expr\.?:\s*([^.]+(?:\[[^\]]+\])?[^.]*\.)/gi);
  if (exampleMatches) {
    examples.push(...exampleMatches.map(ex => {
      return ex.replace(/(?:Ej|Ex)\s*\.\s*Expr\.?:\s*/i, '').trim();
    }));
    // Remover ejemplos de la definición
    spanish = spanish.replace(/(?:Ej|Ex)\s*\.\s*Expr\.?:\s*[^.]+(?:\[[^\]]+\])?[^.]*\./gi, '');
  }
  
  // Buscar más ejemplos (frases con corchetes de pronunciación)
  const bracketExamples = spanish.match(/[^[\]]+\[[^\]]+\]/g);
  if (bracketExamples) {
    examples.push(...bracketExamples.slice(0, 3).map(ex => ex.trim()));
  }
  
  entry.examples = examples.length > 0 ? examples.slice(0, 3).join(' | ') : null;
  
  // Remover pronunciaciones entre corchetes de la definición
  spanish = spanish.replace(/\[[^\]]+\]/g, '');
  
  // Remover conjugaciones completas
  spanish = spanish.replace(/preso?\s+yo\s+.+?etc\./gi, '');
  spanish = spanish.replace(/paso\s+punto\s+yo\s+.+?etc\./gi, '');
  spanish = spanish.replace(/paso\s+duro\s+yo\s+.+?etc\./gi, '');
  spanish = spanish.replace(/pres\.\s+yo\s+.+?etc\./gi, '');
  spanish = spanish.replace(/pas\.\s+punto\s+yo\s+.+?etc\./gi, '');
  
  // Extraer variantes (palabras después de "o" que parecen ser Bubi)
  const variants = [];
  const variantMatches = spanish.match(/,\s+o\s+([a-záéíóúñü']+)/g);
  if (variantMatches) {
    variants.push(...variantMatches.map(v => v.replace(/,\s+o\s+/, '').trim()));
  }
  entry.variants = variants.length > 0 ? variants.slice(0, 3).join(', ') : null;
  
  // Limpiar espacios múltiples y puntuación
  spanish = spanish.replace(/\s+/g, ' ').trim();
  spanish = spanish.replace(/[,;]\s*[,;]+/g, ',');
  spanish = spanish.replace(/^\s*[,;]+\s*/, '');
  
  // Limitar longitud
  if (spanish.length > 500) {
    spanish = spanish.substring(0, 497) + '...';
  }
  
  entry.spanish = spanish;
  entry.notes = `Español: ${entry.spanish_word}`;
  
  entries.push(entry);
}

console.log(`✅ Total de entradas procesadas: ${entries.length}\n`);

// Estadísticas
const stats = {
  total: entries.length,
  withExamples: entries.filter(e => e.examples).length,
  withVariants: entries.filter(e => e.variants).length,
  withGender: entries.filter(e => e.gender).length,
  withClass: entries.filter(e => e.nominal_class).length,
  byType: {}
};

entries.forEach(e => {
  stats.byType[e.word_type] = (stats.byType[e.word_type] || 0) + 1;
});

console.log('📊 Estadísticas:');
console.log(`   Total: ${stats.total}`);
console.log(`   Con ejemplos: ${stats.withExamples} (${(stats.withExamples/stats.total*100).toFixed(1)}%)`);
console.log(`   Con variantes: ${stats.withVariants} (${(stats.withVariants/stats.total*100).toFixed(1)}%)`);
console.log(`   Con género: ${stats.withGender} (${(stats.withGender/stats.total*100).toFixed(1)}%)`);
console.log(`   Con clase nominal: ${stats.withClass} (${(stats.withClass/stats.total*100).toFixed(1)}%)`);
console.log('\n📈 Por tipo gramatical:');
Object.entries(stats.byType).sort((a, b) => b[1] - a[1]).forEach(([type, count]) => {
  console.log(`   ${type}: ${count} (${(count/stats.total*100).toFixed(1)}%)`);
});

// Guardar JSON
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-inteligente.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');
console.log(`\n✅ Guardado: ${outputPath}`);

// Mostrar primeras 10 entradas
console.log('\n📝 Primeras 10 entradas:');
entries.slice(0, 10).forEach((e, i) => {
  console.log(`${i+1}. ${e.spanish_word} → ${e.bubi} (${e.word_type})`);
});

console.log('\n🎉 Proceso completado!');
