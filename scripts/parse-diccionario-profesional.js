const fs = require('fs');
const path = require('path');

// Mapeo de abreviaturas
const ABBREVIATIONS = {
  's.': 'sustantivo',
  'v.': 'verbo',
  'adj.': 'adjetivo',
  'adv.': 'adverbio',
  'prep.': 'preposición',
  'conj.': 'conjunción',
  'interj.': 'interjección',
  'pron.': 'pronombre',
  'loc.': 'locución',
  'morf.': 'morfema',
  'antrop.': 'antropónimo',
  'topo.': 'topónimo',
  'aum.': 'aumento',
  'conec.': 'conectivo',
  'dem.': 'demostrativo'
};

// Función para limpiar texto
function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/\s+/g, ' ')
    .trim();
}

// Función para escapar SQL
function escapeSql(text) {
  if (!text) return '';
  return text.replace(/'/g, "''");
}

// Función para extraer tipo gramatical
function extractWordType(text) {
  const match = text.match(/^(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.|morf\.|antrop\.|topo\.|aum\.|conec\.|dem\.)/i);
  return match ? match[1] : null;
}

// Función para extraer género
function extractGender(text) {
  const match = text.match(/\b(m\.|f\.|m\/f)\b/i);
  return match ? match[1] : null;
}

// Función para extraer número
function extractNumber(text) {
  const match = text.match(/\b(sing\.|pl\.)\b/i);
  return match ? match[1] : null;
}

// Función para extraer clase nominal
function extractNominalClass(text) {
  const match = text.match(/Cl\.\s*(\d+[a-z]?)/i);
  return match ? `Cl. ${match[1]}` : null;
}

// Función para extraer forma plural
function extractPluralForm(text) {
  const match = text.match(/pl\.\s+Cl\.\s+\d+:\s*["']([^"']+)["']/i);
  return match ? match[1] : null;
}

// Función para extraer sinónimos/variantes
function extractVariants(text) {
  const variants = [];
  
  // Buscar "Tb." (también)
  const tbMatch = text.match(/Tb\.\s+([a-záéíóúñü',\s]+?)(?:\.|;|$)/i);
  if (tbMatch) {
    const words = tbMatch[1].split(/,\s*/);
    variants.push(...words.map(w => w.trim()).filter(w => w.length > 0));
  }
  
  return variants.length > 0 ? variants.join(', ') : null;
}

// Función para extraer ejemplos
function extractExamples(text) {
  const examples = [];
  
  // Buscar patrones de ejemplos
  const patterns = [
    /Ej\.\s*expr\.:\s*([^.]+\[[^\]]+\][^.]*)/gi,
    /ej\.:\s*([^.]+)/gi,
    /expr\.:\s*([^.]+)/gi
  ];
  
  patterns.forEach(pattern => {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const example = match[1].trim();
      if (example.length > 5 && example.length < 500) {
        examples.push(example);
      }
    }
  });
  
  return examples.length > 0 ? examples.join(' | ') : null;
}

// Función para limpiar definición
function cleanDefinition(text, wordType, gender, number, nominalClass, pluralForm, variants, examples) {
  let cleaned = text;
  
  // Remover tipo gramatical
  if (wordType) {
    cleaned = cleaned.replace(new RegExp(`^${wordType.replace('.', '\\.')}\\s*`, 'i'), '');
  }
  
  // Remover género
  if (gender) {
    cleaned = cleaned.replace(new RegExp(`\\b${gender.replace('.', '\\.')}\\b`, 'gi'), '');
  }
  
  // Remover número
  if (number) {
    cleaned = cleaned.replace(new RegExp(`\\b${number.replace('.', '\\.')}\\b`, 'gi'), '');
  }
  
  // Remover clase nominal
  if (nominalClass) {
    cleaned = cleaned.replace(/Cl\.\s*\d+[a-z]?/gi, '');
  }
  
  // Remover forma plural
  if (pluralForm) {
    cleaned = cleaned.replace(/pl\.\s+Cl\.\s+\d+:\s*["'][^"']+["']/gi, '');
  }
  
  // Remover variantes
  if (variants) {
    cleaned = cleaned.replace(/Tb\.\s+[a-záéíóúñü',\s]+?(?:\.|;|$)/gi, '');
  }
  
  // Remover ejemplos
  if (examples) {
    cleaned = cleaned.replace(/Ej\.\s*expr\.:\s*[^.]+\[[^\]]+\][^.]*/gi, '');
    cleaned = cleaned.replace(/ej\.:\s*[^.]+/gi, '');
    cleaned = cleaned.replace(/expr\.:\s*[^.]+/gi, '');
  }
  
  // Remover paréntesis
  cleaned = cleaned.replace(/\([^)]*\)/g, '');
  
  // Remover corchetes
  cleaned = cleaned.replace(/\[[^\]]*\]/g, '');
  
  // Limpiar espacios múltiples y puntos
  cleaned = cleaned
    .replace(/\s+/g, ' ')
    .replace(/\s*\.\s*/g, '. ')
    .replace(/\s*,\s*/g, ', ')
    .replace(/\.+/g, '.')
    .trim();
  
  // Remover punto final si existe
  cleaned = cleaned.replace(/\.$/, '');
  
  return cleaned;
}

// Función principal de parsing
function parseBubiToSpanish(content) {
  const entries = [];
  const lines = content.split('\n');
  
  let i = 0;
  while (i < lines.length) {
    const line = lines[i].trim();
    
    // Saltar líneas vacías o encabezados
    if (!line || line.length < 2) {
      i++;
      continue;
    }
    
    // Detectar nueva entrada: palabra, tipo gramatical
    const entryMatch = line.match(/^([a-záéíóúñüÁÉÍÓÚÑÜ'']+),\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.|morf\.|antrop\.|topo\.|aum\.|conec\.|dem\.)/i);
    
    if (entryMatch) {
      const bubi = entryMatch[1].trim();
      let fullText = line.substring(entryMatch[0].length).trim();
      
      // Continuar leyendo líneas hasta encontrar la siguiente entrada
      i++;
      while (i < lines.length) {
        const nextLine = lines[i].trim();
        
        // Si encontramos otra entrada, retroceder y salir
        if (nextLine.match(/^[a-záéíóúñüÁÉÍÓÚÑÜ'']+,\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.|morf\.|antrop\.|topo\.|aum\.|conec\.|dem\.)/i)) {
          break;
        }
        
        // Si es una línea vacía, salir
        if (!nextLine) {
          i++;
          break;
        }
        
        // Agregar a la definición
        fullText += ' ' + nextLine;
        i++;
      }
      
      // Extraer información estructurada
      const wordType = extractWordType(entryMatch[2]);
      const gender = extractGender(fullText);
      const number = extractNumber(fullText);
      const nominalClass = extractNominalClass(fullText);
      const pluralForm = extractPluralForm(fullText);
      const variants = extractVariants(fullText);
      const examples = extractExamples(fullText);
      
      // Limpiar definición
      const spanish = cleanDefinition(fullText, wordType, gender, number, nominalClass, pluralForm, variants, examples);
      
      // Validar y agregar entrada
      if (bubi && spanish && bubi.length < 100 && spanish.length > 2) {
        entries.push({
          bubi: cleanText(bubi),
          word_type: wordType,
          gender: gender,
          number: number,
          nominal_class: nominalClass,
          plural_form: pluralForm,
          spanish: spanish.substring(0, 1000),
          examples: examples,
          variants: variants,
          source: 'bubi-español'
        });
      }
    } else {
      i++;
    }
  }
  
  return entries;
}

// Función para generar SQL profesional
function generatePostgreSql(entries) {
  let sql = `-- Script de importación profesional del diccionario Bubi
-- Generado automáticamente
-- Total de entradas: ${entries.length}
-- Fecha: ${new Date().toISOString()}

-- Estructura profesional basada en diccionarios españoles
-- Incluye: tipo gramatical, género, número, clase nominal, ejemplos, variantes

BEGIN;

`;
  
  // Generar INSERTs en lotes de 25
  const batchSize = 25;
  for (let i = 0; i < entries.length; i += batchSize) {
    const batch = entries.slice(i, i + batchSize);
    
    sql += `-- Lote ${Math.floor(i / batchSize) + 1} (entradas ${i + 1} a ${Math.min(i + batchSize, entries.length)})\n`;
    sql += `INSERT INTO dictionary (\n`;
    sql += `  bubi, word_type, gender, number, nominal_class, plural_form,\n`;
    sql += `  spanish, examples, variants, notes, created_by\n`;
    sql += `) VALUES\n`;
    
    const values = batch.map((entry, index) => {
      const bubi = escapeSql(entry.bubi);
      const wordType = entry.word_type ? `'${escapeSql(entry.word_type)}'` : 'NULL';
      const gender = entry.gender ? `'${escapeSql(entry.gender)}'` : 'NULL';
      const number = entry.number ? `'${escapeSql(entry.number)}'` : 'NULL';
      const nominalClass = entry.nominal_class ? `'${escapeSql(entry.nominal_class)}'` : 'NULL';
      const pluralForm = entry.plural_form ? `'${escapeSql(entry.plural_form)}'` : 'NULL';
      const spanish = escapeSql(entry.spanish);
      const examples = entry.examples ? `'${escapeSql(entry.examples)}'` : 'NULL';
      const variants = entry.variants ? `'${escapeSql(entry.variants)}'` : 'NULL';
      const source = escapeSql(entry.source);
      const isLast = index === batch.length - 1;
      
      return `  ('${bubi}', ${wordType}, ${gender}, ${number}, ${nominalClass}, ${pluralForm}, '${spanish}', ${examples}, ${variants}, 'Fuente: ${source}', 'import-script')${isLast ? ';' : ','}`;
    });
    
    sql += values.join('\n') + '\n\n';
  }
  
  sql += `COMMIT;

-- Resumen de importación:
-- Total de entradas: ${entries.length}
-- 
-- Estadísticas por tipo gramatical:
`;

  // Estadísticas por tipo
  const typeStats = {};
  entries.forEach(entry => {
    const type = entry.word_type || 'sin tipo';
    typeStats[type] = (typeStats[type] || 0) + 1;
  });
  
  Object.entries(typeStats).sort((a, b) => b[1] - a[1]).forEach(([type, count]) => {
    sql += `--   ${type}: ${count} entradas\n`;
  });
  
  sql += `
-- Instrucciones post-importación:
-- 1. VACUUM ANALYZE dictionary;
-- 2. SELECT COUNT(*) FROM dictionary;
-- 3. SELECT word_type, COUNT(*) FROM dictionary GROUP BY word_type ORDER BY COUNT(*) DESC;
`;
  
  return sql;
}

// Función principal
async function main() {
  try {
    console.log('🚀 Iniciando parseo PROFESIONAL del diccionario Bubi...\n');
    
    // Leer archivo
    const bubiToSpanishPath = path.join(__dirname, '..', 'palabras', 'de bubi a español.txt');
    
    console.log('📖 Leyendo archivo: de bubi a español.txt');
    const bubiToSpanishContent = fs.readFileSync(bubiToSpanishPath, 'utf-8');
    
    // Parsear archivo
    console.log('\n🔍 Parseando con estructura profesional...');
    const entries = parseBubiToSpanish(bubiToSpanishContent);
    console.log(`   ✅ ${entries.length} entradas encontradas`);
    
    // Filtrar entradas válidas
    const validEntries = entries.filter(entry => 
      entry.bubi && entry.spanish && 
      entry.bubi.length >= 2 && entry.spanish.length >= 3 &&
      entry.bubi.length < 100 && entry.spanish.length < 1500
    );
    console.log(`   ✅ ${validEntries.length} entradas válidas`);
    
    // Ordenar alfabéticamente
    validEntries.sort((a, b) => a.bubi.localeCompare(b.bubi, 'es'));
    
    // Estadísticas por tipo
    console.log('\n📊 Estadísticas por tipo gramatical:');
    const typeStats = {};
    validEntries.forEach(entry => {
      const type = entry.word_type || 'sin tipo';
      typeStats[type] = (typeStats[type] || 0) + 1;
    });
    
    Object.entries(typeStats).sort((a, b) => b[1] - a[1]).forEach(([type, count]) => {
      const fullType = ABBREVIATIONS[type] || type;
      console.log(`   • ${type} (${fullType}): ${count} entradas`);
    });
    
    // Generar SQL
    console.log('\n📝 Generando script SQL profesional...');
    const sql = generatePostgreSql(validEntries);
    
    // Guardar archivo SQL
    const outputPath = path.join(__dirname, '..', 'db', 'import-diccionario-profesional.sql');
    fs.writeFileSync(outputPath, sql, 'utf-8');
    console.log(`   ✅ Script guardado en: ${outputPath}`);
    
    // Generar JSON estructurado
    const jsonPath = path.join(__dirname, '..', 'db', 'diccionario-profesional.json');
    fs.writeFileSync(jsonPath, JSON.stringify(validEntries, null, 2), 'utf-8');
    console.log(`   ✅ JSON guardado en: ${jsonPath}`);
    
    // Mostrar ejemplos
    console.log('\n📝 Ejemplos de entradas estructuradas:');
    validEntries.slice(0, 5).forEach((entry, i) => {
      console.log(`\n   ${i + 1}. Palabra: "${entry.bubi}"`);
      console.log(`      Tipo: ${entry.word_type || 'N/A'}`);
      console.log(`      Género: ${entry.gender || 'N/A'}`);
      console.log(`      Número: ${entry.number || 'N/A'}`);
      console.log(`      Clase: ${entry.nominal_class || 'N/A'}`);
      console.log(`      Definición: "${entry.spanish.substring(0, 60)}..."`);
      if (entry.variants) console.log(`      Variantes: ${entry.variants}`);
      if (entry.examples) console.log(`      Ejemplos: ${entry.examples.substring(0, 60)}...`);
    });
    
    console.log('\n✨ ¡Proceso completado exitosamente!');
    console.log('\n📌 Próximos pasos:');
    console.log('   1. Ejecutar: db/schema-dictionary-mejorado.sql (crear estructura)');
    console.log('   2. Ejecutar: db/import-diccionario-profesional.sql (importar datos)');
    console.log('   3. Verificar: SELECT word_type, COUNT(*) FROM dictionary GROUP BY word_type;');
    
  } catch (error) {
    console.error('\n❌ Error durante el proceso:', error.message);
    console.error(error.stack);
    process.exit(1);
  }
}

// Ejecutar
main();
