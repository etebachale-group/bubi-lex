const fs = require('fs');
const path = require('path');

// Leer el archivo
const filePath = path.join(process.cwd(), 'de español a bubi.txt');
const content = fs.readFileSync(filePath, 'utf8');

console.log('📖 Procesando diccionario Español-Bubi (CORREGIDO)...\n');

// Función para extraer palabras en Bubi correctamente
function extractBubiWords(text, wordType) {
  const bubiWords = [];
  
  // Patrón según el tipo de palabra
  if (wordType === 's.' || wordType === 'S.') {
    // Para sustantivos: buscar después de "m." o "f." o directamente después de "s."
    // Ejemplo: "s. f sáppi)" o "s. m. bototto"
    const match1 = text.match(/s\.\s+(?:m\.|f\.)\s+([a-záéíóúñü']+)/i);
    if (match1) {
      bubiWords.push(match1[1]);
    } else {
      // Si no tiene género, buscar directamente
      const match2 = text.match(/s\.\s+([a-záéíóúñü']+)/i);
      if (match2) bubiWords.push(match2[1]);
    }
  } else if (wordType === 'v.' || wordType === 'V.') {
    // Para verbos: buscar después de "inf" o "inf."
    // Ejemplo: "v. inf o tyí'a, o sOlla"
    const matches = text.match(/(?:inf\.?|in!)\s+o\s+([a-záéíóúñü']+)/gi);
    if (matches) {
      matches.forEach(m => {
        const word = m.match(/o\s+([a-záéíóúñü']+)/i);
        if (word) bubiWords.push(word[1]);
      });
    }
  } else if (wordType === 'adv.') {
    // Para adverbios: buscar después de "adv."
    // Ejemplo: "adv. onno, oke, onnotyé"
    const match = text.match(/adv\.\s+([a-záéíóúñü',\s]+?)(?:;|$)/i);
    if (match) {
      const words = match[1].split(',').map(w => w.trim()).filter(w => w.length > 0);
      bubiWords.push(...words);
    }
  } else if (wordType === 'adj.') {
    // Para adjetivos: buscar después de "adj."
    const match = text.match(/adj\.\s+([a-záéíóúñü']+)/i);
    if (match) bubiWords.push(match[1]);
  }
  
  return bubiWords.length > 0 ? bubiWords[0] : null; // Retornar la primera palabra principal
}

// Función para extraer tipo gramatical
function extractWordType(text) {
  const match = text.match(/,\s+(s\.|v\.|adj\.|adv\.|S\.|V\.|prep\.|conj\.|interj\.|pron\.)/i);
  return match ? match[1].toLowerCase() : null;
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

// Función para limpiar definición
function cleanDefinition(text, spanishWord) {
  let cleaned = text;
  
  // Remover la palabra en español del inicio
  cleaned = cleaned.replace(new RegExp(`^${spanishWord.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')},?\\s*`, 'i'), '');
  
  // Remover tipo gramatical y género
  cleaned = cleaned.replace(/^(?:s\.|v\.|adj\.|adv\.|S\.|V\.)\s+(?:m\.|f\.)?\s+(?:inf\.?|in!|ir¡\{\.?)?\s*/i, '');
  
  // Remover palabras en Bubi del inicio (hasta encontrar punto y coma o coma seguida de texto descriptivo)
  cleaned = cleaned.replace(/^[a-záéíóúñü',\s\(\)]+?(?=;|,\s+(?:la|el|los|las|-|preso|paso))/i, '');
  
  // Remover clases nominales
  cleaned = cleaned.replace(/\(el\.\s*\d+\)/gi, '');
  
  // Remover pronunciación entre corchetes
  cleaned = cleaned.replace(/\[[^\]]+\]/g, '');
  
  // Remover conjugaciones completas
  cleaned = cleaned.replace(/preso\s+yo\s+.+?etc\./gi, '');
  cleaned = cleaned.replace(/paso\s+punto\s+yo\s+.+?etc\./gi, '');
  cleaned = cleaned.replace(/paso\s+duro\s+yo\s+.+?etc\./gi, '');
  
  // Remover "Ej. Expr.:"
  cleaned = cleaned.replace(/Ej\.\s*Expr\.:\s*/gi, '');
  
  // Limpiar puntuación múltiple
  cleaned = cleaned.replace(/[,;]\s*[,;]+/g, ',');
  cleaned = cleaned.replace(/^\s*[,;]+\s*/, '');
  
  // Limpiar espacios múltiples
  cleaned = cleaned.replace(/\s+/g, ' ').trim();
  
  // Limitar longitud
  if (cleaned.length > 500) {
    cleaned = cleaned.substring(0, 497) + '...';
  }
  
  return cleaned;
}

// Dividir el contenido en líneas
const lines = content.split('\n');

const entries = [];
let currentEntry = null;
let currentSpanish = '';
let currentText = '';

for (let i = 0; i < lines.length; i++) {
  const line = lines[i].trim();
  
  // Saltar líneas vacías o encabezados
  if (!line || line === 'Diccionario' || line === 'Español-Bubi') {
    continue;
  }
  
  // Detectar nueva entrada (palabra en español seguida de tipo gramatical)
  const entryMatch = line.match(/^([a-záéíóúñü]+),\s+(s\.|v\.|adj\.|adv\.|S\.|V\.|prep\.|conj\.|interj\.|pron\.)/i);
  
  if (entryMatch) {
    // Guardar entrada anterior si existe
    if (currentEntry && currentSpanish) {
      const wordType = extractWordType(currentText);
      const bubiWord = extractBubiWords(currentText, wordType);
      const gender = extractGender(currentText);
      const nominalClass = extractNominalClass(currentText);
      const cleanedDef = cleanDefinition(currentText, currentSpanish);
      
      if (bubiWord && bubiWord.length > 1) { // Validar que sea una palabra real
        entries.push({
          spanish_word: currentSpanish,
          bubi: bubiWord,
          word_type: wordType,
          gender: gender,
          nominal_class: nominalClass,
          spanish: cleanedDef,
          notes: `Español: ${currentSpanish}`
        });
      }
    }
    
    // Iniciar nueva entrada
    currentSpanish = entryMatch[1];
    currentText = line;
  } else if (currentSpanish) {
    // Continuar con la entrada actual
    currentText += ' ' + line;
  }
}

// Guardar última entrada
if (currentEntry && currentSpanish) {
  const wordType = extractWordType(currentText);
  const bubiWord = extractBubiWords(currentText, wordType);
  const gender = extractGender(currentText);
  const nominalClass = extractNominalClass(currentText);
  const cleanedDef = cleanDefinition(currentText, currentSpanish);
  
  if (bubiWord && bubiWord.length > 1) {
    entries.push({
      spanish_word: currentSpanish,
      bubi: bubiWord,
      word_type: wordType,
      gender: gender,
      nominal_class: nominalClass,
      spanish: cleanedDef,
      notes: `Español: ${currentSpanish}`
    });
  }
}

console.log(`✅ Total de entradas procesadas: ${entries.length}\n`);

// Mostrar primeras 20 para verificar
console.log('📝 Primeras 20 entradas (verificación):\n');
entries.slice(0, 20).forEach((entry, idx) => {
  console.log(`${idx + 1}. ${entry.spanish_word} (${entry.word_type || 'N/A'}) → "${entry.bubi}"`);
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
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-corregido.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');
console.log(`\n💾 Archivo guardado: ${outputPath}`);

console.log('\n✨ Proceso completado');
console.log('⚠️  Revisa las primeras 20 entradas para verificar que las palabras en Bubi son correctas');
