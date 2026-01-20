const fs = require('fs');
const path = require('path');

// Función para limpiar texto y quitar paréntesis pero mantener acentos
function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/\([^)]*\)/g, '') // Quitar paréntesis y su contenido
    .replace(/\s+/g, ' ') // Normalizar espacios
    .replace(/\[.*?\]/g, '') // Quitar corchetes y su contenido
    .trim();
}

// Función para escapar comillas simples en SQL
function escapeSql(text) {
  if (!text) return '';
  return text.replace(/'/g, "''");
}

// Función mejorada para parsear el archivo de Bubi a Español
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
    
    // Detectar nueva entrada: palabra seguida de coma y tipo (s., v., adj., etc.)
    const entryMatch = line.match(/^([a-záéíóúñüÁÉÍÓÚÑÜ']+),\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.|morf\.|antrop\.)/i);
    
    if (entryMatch) {
      const bubi = entryMatch[1].trim();
      let definition = line.substring(entryMatch[0].length).trim();
      
      // Continuar leyendo líneas hasta encontrar la siguiente entrada
      i++;
      while (i < lines.length) {
        const nextLine = lines[i].trim();
        
        // Si encontramos otra entrada, retroceder y salir
        if (nextLine.match(/^[a-záéíóúñüÁÉÍÓÚÑÜ']+,\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.|morf\.|antrop\.)/i)) {
          break;
        }
        
        // Si es una línea vacía, salir
        if (!nextLine) {
          i++;
          break;
        }
        
        // Agregar a la definición
        definition += ' ' + nextLine;
        i++;
      }
      
      // Limpiar y agregar entrada
      const cleanedBubi = cleanText(bubi);
      const cleanedDefinition = cleanText(definition);
      
      if (cleanedBubi && cleanedDefinition && cleanedBubi.length < 100) {
        entries.push({
          bubi: cleanedBubi,
          spanish: cleanedDefinition.substring(0, 1000), // Limitar longitud
          source: 'bubi-español'
        });
      }
    } else {
      i++;
    }
  }
  
  return entries;
}

// Función mejorada para parsear el archivo de Español a Bubi
function parseSpanishToBubi(content) {
  const entries = [];
  const lines = content.split('\n');
  
  let i = 0;
  while (i < lines.length) {
    const line = lines[i].trim();
    
    // Saltar líneas vacías o encabezados
    if (!line || line.length < 2 || line.startsWith('Diccionario') || line.startsWith('Español-Bubi')) {
      i++;
      continue;
    }
    
    // Detectar nueva entrada: palabra en español seguida de coma y tipo
    const entryMatch = line.match(/^([a-záéíóúñüÁÉÍÓÚÑÜ]+),\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.)/i);
    
    if (entryMatch) {
      const spanish = entryMatch[1].trim();
      let definition = line.substring(entryMatch[0].length).trim();
      
      // Continuar leyendo líneas hasta encontrar la siguiente entrada
      i++;
      while (i < lines.length) {
        const nextLine = lines[i].trim();
        
        // Si encontramos otra entrada, retroceder y salir
        if (nextLine.match(/^[a-záéíóúñüÁÉÍÓÚÑÜ]+,\s+(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.|loc\.)/i)) {
          break;
        }
        
        // Si es una línea vacía, salir
        if (!nextLine) {
          i++;
          break;
        }
        
        // Agregar a la definición
        definition += ' ' + nextLine;
        i++;
      }
      
      // Extraer palabras en Bubi de la definición
      const bubiWords = extractBubiWords(definition);
      
      if (bubiWords.length > 0) {
        bubiWords.forEach(bubiWord => {
          entries.push({
            spanish: spanish,
            bubi: bubiWord,
            source: 'español-bubi'
          });
        });
      }
    } else {
      i++;
    }
  }
  
  return entries;
}

// Función para extraer palabras en Bubi de una definición en español
function extractBubiWords(definition) {
  const words = [];
  
  // Buscar patrones comunes de palabras en Bubi
  // Ejemplo: "o botyo", "e eriia", etc.
  const patterns = [
    /\b([aeio]\s+[a-záéíóúñü']+)\b/gi,  // Artículos + palabra
    /\b([a-záéíóúñü']{4,})\b/gi,         // Palabras largas (probablemente Bubi)
  ];
  
  patterns.forEach(pattern => {
    const matches = definition.match(pattern);
    if (matches) {
      matches.forEach(match => {
        const cleaned = cleanText(match);
        if (cleaned && cleaned.length >= 3 && cleaned.length < 50) {
          words.push(cleaned);
        }
      });
    }
  });
  
  // Retornar solo las primeras 3 palabras para evitar ruido
  return [...new Set(words)].slice(0, 3);
}

// Función para combinar y deduplicar entradas
function combineEntries(bubiToSpanish, spanishToBubi) {
  const entriesMap = new Map();
  
  // Agregar entradas de Bubi a Español (prioridad)
  bubiToSpanish.forEach(entry => {
    const key = entry.bubi.toLowerCase();
    if (!entriesMap.has(key) || entriesMap.get(key).spanish.length < entry.spanish.length) {
      entriesMap.set(key, entry);
    }
  });
  
  // Agregar entradas de Español a Bubi solo si no existen
  spanishToBubi.forEach(entry => {
    const key = entry.bubi.toLowerCase();
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

-- Nota: Este script está diseñado para PostgreSQL/Supabase
-- Los acentos y caracteres especiales del Bubi se mantienen intactos
-- Los paréntesis han sido removidos según instrucciones

BEGIN;

`;
  
  // Generar INSERTs en lotes de 50
  const batchSize = 50;
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
-- 
-- Instrucciones post-importación:
-- 1. Ejecutar: VACUUM ANALYZE dictionary;
-- 2. Verificar: SELECT COUNT(*) FROM dictionary;
-- 3. Revisar duplicados: SELECT bubi, COUNT(*) FROM dictionary GROUP BY bubi HAVING COUNT(*) > 1;
`;
  
  return sql;
}

// Función principal
async function main() {
  try {
    console.log('🚀 Iniciando parseo MEJORADO de archivos de diccionario...\n');
    
    // Leer archivos
    const bubiToSpanishPath = path.join(__dirname, '..', 'palabras', 'de bubi a español.txt');
    const spanishToBubiPath = path.join(__dirname, '..', 'palabras', 'de español a bubi.txt');
    
    console.log('📖 Leyendo archivo: de bubi a español.txt');
    const bubiToSpanishContent = fs.readFileSync(bubiToSpanishPath, 'utf-8');
    
    console.log('📖 Leyendo archivo: de español a bubi.txt');
    const spanishToBubiContent = fs.readFileSync(spanishToBubiPath, 'utf-8');
    
    // Parsear archivos
    console.log('\n🔍 Parseando archivo Bubi → Español (mejorado)...');
    const bubiToSpanishEntries = parseBubiToSpanish(bubiToSpanishContent);
    console.log(`   ✅ ${bubiToSpanishEntries.length} entradas encontradas`);
    
    console.log('🔍 Parseando archivo Español → Bubi (mejorado)...');
    const spanishToBubiEntries = parseSpanishToBubi(spanishToBubiContent);
    console.log(`   ✅ ${spanishToBubiEntries.length} entradas encontradas`);
    
    // Combinar y deduplicar
    console.log('\n🔄 Combinando y deduplicando entradas...');
    const allEntries = combineEntries(bubiToSpanishEntries, spanishToBubiEntries);
    console.log(`   ✅ ${allEntries.length} entradas únicas`);
    
    // Filtrar entradas vacías o inválidas
    const validEntries = allEntries.filter(entry => 
      entry.bubi && entry.spanish && 
      entry.bubi.length >= 2 && entry.spanish.length >= 3 &&
      entry.bubi.length < 100 && entry.spanish.length < 1500 &&
      !entry.bubi.match(/^\d+$/) && // No solo números
      !entry.spanish.match(/^[\d\s]+$/) // No solo números y espacios
    );
    console.log(`   ✅ ${validEntries.length} entradas válidas (filtradas ${allEntries.length - validEntries.length} inválidas)`);
    
    // Ordenar alfabéticamente por palabra en Bubi
    validEntries.sort((a, b) => a.bubi.localeCompare(b.bubi, 'es'));
    
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
    
    // Mostrar algunas entradas de ejemplo
    console.log('\n📝 Ejemplos de entradas:');
    validEntries.slice(0, 5).forEach((entry, i) => {
      console.log(`   ${i + 1}. "${entry.bubi}" → "${entry.spanish.substring(0, 60)}..."`);
    });
    
    console.log('\n✨ ¡Proceso completado exitosamente!');
    console.log('\n📌 Próximos pasos:');
    console.log('   1. Revisar el archivo: db/import-diccionario-completo.sql');
    console.log('   2. Conectar a Supabase/PostgreSQL');
    console.log('   3. Ejecutar el script SQL');
    console.log('   4. Verificar con: SELECT COUNT(*) FROM dictionary;');
    
  } catch (error) {
    console.error('\n❌ Error durante el proceso:', error.message);
    console.error(error.stack);
    process.exit(1);
  }
}

// Ejecutar
main();
