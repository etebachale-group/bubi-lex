const fs = require('fs');
const path = require('path');

// Función para limpiar texto y quitar paréntesis pero mantener acentos
function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/\([^)]*\)/g, '') // Quitar paréntesis y su contenido
    .replace(/\s+/g, ' ') // Normalizar espacios
    .trim();
}

// Función para escapar comillas simples en SQL
function escapeSql(text) {
  if (!text) return '';
  return text.replace(/'/g, "''");
}

// Función para parsear el archivo de Bubi a Español
function parseBubiToSpanish(content) {
  const entries = [];
  const lines = content.split('\n');
  
  let currentEntry = null;
  let currentDefinition = '';
  
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    
    // Saltar líneas vacías o encabezados
    if (!line || line.startsWith('Diccionario') || line.startsWith('Bubi-Español')) {
      continue;
    }
    
    // Detectar nueva entrada (empieza con letra minúscula o mayúscula seguida de coma)
    const entryMatch = line.match(/^([a-záéíóúñüÁÉÍÓÚÑÜ']+),\s*(.+)/i);
    
    if (entryMatch) {
      // Guardar entrada anterior si existe
      if (currentEntry) {
        entries.push({
          bubi: cleanText(currentEntry.bubi),
          spanish: cleanText(currentDefinition),
          source: 'bubi-español'
        });
      }
      
      // Nueva entrada
      currentEntry = {
        bubi: entryMatch[1].trim()
      };
      currentDefinition = entryMatch[2].trim();
    } else if (currentEntry && line) {
      // Continuar definición de entrada actual
      currentDefinition += ' ' + line;
    }
  }
  
  // Guardar última entrada
  if (currentEntry) {
    entries.push({
      bubi: cleanText(currentEntry.bubi),
      spanish: cleanText(currentDefinition),
      source: 'bubi-español'
    });
  }
  
  return entries;
}

// Función para parsear el archivo de Español a Bubi
function parseSpanishToBubi(content) {
  const entries = [];
  const lines = content.split('\n');
  
  let currentEntry = null;
  let currentDefinition = '';
  
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    
    // Saltar líneas vacías o encabezados
    if (!line || line.startsWith('Diccionario') || line.startsWith('Español-Bubi')) {
      continue;
    }
    
    // Detectar nueva entrada (palabra en español seguida de coma)
    const entryMatch = line.match(/^([a-záéíóúñüÁÉÍÓÚÑÜ]+),\s*(.+)/i);
    
    if (entryMatch) {
      // Guardar entrada anterior si existe
      if (currentEntry) {
        entries.push({
          spanish: cleanText(currentEntry.spanish),
          bubi: cleanText(currentDefinition),
          source: 'español-bubi'
        });
      }
      
      // Nueva entrada
      currentEntry = {
        spanish: entryMatch[1].trim()
      };
      currentDefinition = entryMatch[2].trim();
    } else if (currentEntry && line) {
      // Continuar definición de entrada actual
      currentDefinition += ' ' + line;
    }
  }
  
  // Guardar última entrada
  if (currentEntry) {
    entries.push({
      spanish: cleanText(currentEntry.spanish),
      bubi: cleanText(currentDefinition),
      source: 'español-bubi'
    });
  }
  
  return entries;
}

// Función para combinar y deduplicar entradas
function combineEntries(bubiToSpanish, spanishToBubi) {
  const entriesMap = new Map();
  
  // Agregar entradas de Bubi a Español
  bubiToSpanish.forEach(entry => {
    const key = `${entry.bubi}|${entry.spanish}`;
    if (!entriesMap.has(key)) {
      entriesMap.set(key, entry);
    }
  });
  
  // Agregar entradas de Español a Bubi
  spanishToBubi.forEach(entry => {
    const key = `${entry.bubi}|${entry.spanish}`;
    if (!entriesMap.has(key)) {
      entriesMap.set(key, entry);
    }
  });
  
  return Array.from(entriesMap.values());
}

// Función para generar SQL de PostgreSQL
function generatePostgreSql(entries) {
  let sql = `-- Script de importación de diccionario Bubi
-- Generado automáticamente
-- Total de entradas: ${entries.length}
-- Fecha: ${new Date().toISOString()}

-- Nota: Este script está diseñado para PostgreSQL
-- Los acentos y caracteres especiales se mantienen

BEGIN;

`;
  
  // Generar INSERTs en lotes de 100
  const batchSize = 100;
  for (let i = 0; i < entries.length; i += batchSize) {
    const batch = entries.slice(i, i + batchSize);
    
    sql += `-- Lote ${Math.floor(i / batchSize) + 1} (entradas ${i + 1} a ${Math.min(i + batchSize, entries.length)})\n`;
    sql += `INSERT INTO dictionary (bubi, spanish, ipa, notes, created_by) VALUES\n`;
    
    const values = batch.map((entry, index) => {
      const bubi = escapeSql(entry.bubi);
      const spanish = escapeSql(entry.spanish);
      const source = escapeSql(entry.source);
      const isLast = index === batch.length - 1;
      
      return `  ('${bubi}', '${spanish}', NULL, 'Fuente: ${source}', 'import-script')${isLast ? ';' : ','}`;
    });
    
    sql += values.join('\n') + '\n\n';
  }
  
  sql += `COMMIT;

-- Resumen de importación:
-- Total de entradas insertadas: ${entries.length}
-- Recuerda ejecutar VACUUM ANALYZE dictionary; después de la importación
`;
  
  return sql;
}

// Función principal
async function main() {
  try {
    console.log('🚀 Iniciando parseo de archivos de diccionario...\n');
    
    // Leer archivos
    const bubiToSpanishPath = path.join(__dirname, '..', 'palabras', 'de bubi a español.txt');
    const spanishToBubiPath = path.join(__dirname, '..', 'palabras', 'de español a bubi.txt');
    
    console.log('📖 Leyendo archivo: de bubi a español.txt');
    const bubiToSpanishContent = fs.readFileSync(bubiToSpanishPath, 'utf-8');
    
    console.log('📖 Leyendo archivo: de español a bubi.txt');
    const spanishToBubiContent = fs.readFileSync(spanishToBubiPath, 'utf-8');
    
    // Parsear archivos
    console.log('\n🔍 Parseando archivo Bubi → Español...');
    const bubiToSpanishEntries = parseBubiToSpanish(bubiToSpanishContent);
    console.log(`   ✅ ${bubiToSpanishEntries.length} entradas encontradas`);
    
    console.log('🔍 Parseando archivo Español → Bubi...');
    const spanishToBubiEntries = parseSpanishToBubi(spanishToBubiContent);
    console.log(`   ✅ ${spanishToBubiEntries.length} entradas encontradas`);
    
    // Combinar y deduplicar
    console.log('\n🔄 Combinando y deduplicando entradas...');
    const allEntries = combineEntries(bubiToSpanishEntries, spanishToBubiEntries);
    console.log(`   ✅ ${allEntries.length} entradas únicas`);
    
    // Filtrar entradas vacías o inválidas
    const validEntries = allEntries.filter(entry => 
      entry.bubi && entry.spanish && 
      entry.bubi.length > 0 && entry.spanish.length > 0 &&
      entry.bubi.length < 500 && entry.spanish.length < 2000
    );
    console.log(`   ✅ ${validEntries.length} entradas válidas (filtradas ${allEntries.length - validEntries.length} inválidas)`);
    
    // Generar SQL
    console.log('\n📝 Generando script SQL de PostgreSQL...');
    const sql = generatePostgreSql(validEntries);
    
    // Guardar archivo SQL
    const outputPath = path.join(__dirname, '..', 'db', 'import-diccionario-completo.sql');
    fs.writeFileSync(outputPath, sql, 'utf-8');
    console.log(`   ✅ Script guardado en: ${outputPath}`);
    
    // Generar también un archivo JSON para referencia
    const jsonPath = path.join(__dirname, '..', 'db', 'diccionario-completo.json');
    fs.writeFileSync(jsonPath, JSON.stringify(validEntries, null, 2), 'utf-8');
    console.log(`   ✅ JSON guardado en: ${jsonPath}`);
    
    // Estadísticas
    console.log('\n📊 Estadísticas:');
    console.log(`   • Total de entradas: ${validEntries.length}`);
    console.log(`   • Promedio longitud palabra Bubi: ${Math.round(validEntries.reduce((sum, e) => sum + e.bubi.length, 0) / validEntries.length)} caracteres`);
    console.log(`   • Promedio longitud definición: ${Math.round(validEntries.reduce((sum, e) => sum + e.spanish.length, 0) / validEntries.length)} caracteres`);
    console.log(`   • Palabra Bubi más larga: ${validEntries.reduce((max, e) => e.bubi.length > max.length ? e.bubi : max, '').substring(0, 50)}...`);
    
    console.log('\n✨ ¡Proceso completado exitosamente!');
    console.log('\n📌 Próximos pasos:');
    console.log('   1. Revisar el archivo: db/import-diccionario-completo.sql');
    console.log('   2. Ejecutar el script en PostgreSQL/Supabase');
    console.log('   3. Verificar la importación con: SELECT COUNT(*) FROM dictionary;');
    
  } catch (error) {
    console.error('\n❌ Error durante el proceso:', error.message);
    console.error(error.stack);
    process.exit(1);
  }
}

// Ejecutar
main();
