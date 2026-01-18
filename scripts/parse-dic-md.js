#!/usr/bin/env node

/**
 * Script para convertir db/dic.md a formato JSON para importar a la base de datos
 * Ejecutar: node scripts/parse-dic-md.js
 */

const fs = require('fs');
const path = require('path');

console.log('📖 Procesando diccionario desde db/dic.md...\n');

// Leer el archivo
const filePath = path.join(process.cwd(), 'db', 'dic.md');
const content = fs.readFileSync(filePath, 'utf8');

// Parsear el contenido
const entries = [];
const lines = content.split(/\r?\n/); // Manejar tanto \n como \r\n

for (let i = 0; i < lines.length; i++) {
  const line = lines[i];
  
  // Saltar líneas vacías
  if (!line.trim()) {
    continue;
  }
  
  // Saltar encabezados de sección (solo una letra mayúscula sola en la línea)
  if (/^[A-ZÖË]\s*$/.test(line.trim())) {
    continue;
  }
  
  // Detectar entrada: línea con 4 espacios al inicio y contiene :
  // Formato: "    palabra: traducción"
  const match = line.match(/^    (.+?):\s*(.+?)\s*$/);
  if (match) {
    const bubi = match[1].trim();
    const spanish = match[2].trim();
    
    entries.push({
      bubi,
      spanish,
      ipa: null,
      notes: null
    });
  }
}

// Ordenar alfabéticamente por palabra bubi (ignorando mayúsculas y caracteres especiales)
entries.sort((a, b) => {
  const cleanA = a.bubi.toLowerCase().replace(/[^a-zöëáéíóúñ]/g, '');
  const cleanB = b.bubi.toLowerCase().replace(/[^a-zöëáéíóúñ]/g, '');
  return cleanA.localeCompare(cleanB, 'es');
});

// Estadísticas
console.log(`✅ Procesadas ${entries.length} entradas\n`);

// Mostrar primeras 10 entradas como ejemplo
console.log('📝 Primeras 10 entradas:');
entries.slice(0, 10).forEach((entry, idx) => {
  console.log(`${idx + 1}. ${entry.bubi} → ${entry.spanish}`);
});

console.log('\n...\n');

// Mostrar últimas 5 entradas
console.log('📝 Últimas 5 entradas:');
entries.slice(-5).forEach((entry, idx) => {
  console.log(`${entries.length - 4 + idx}. ${entry.bubi} → ${entry.spanish}`);
});

// Guardar como JSON
const outputPath = path.join(process.cwd(), 'db', 'dictionary-import.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');

console.log(`\n✅ Archivo guardado en: db/dictionary-import.json`);
console.log(`📊 Total de entradas: ${entries.length}`);

// Crear también un archivo SQL para importar directamente
const sqlPath = path.join(process.cwd(), 'db', 'import-dictionary.sql');
let sqlContent = `-- ============================================================================
-- IMPORTAR DICCIONARIO BUBI-ESPAÑOL
-- ============================================================================
-- Este script importa ${entries.length} palabras del diccionario
-- Generado automáticamente desde db/dic.md
-- ============================================================================

-- Limpiar tabla (opcional - comentar si no quieres eliminar datos existentes)
-- DELETE FROM dictionary_entries;

-- Insertar palabras
`;

// Dividir en lotes de 100 para evitar queries muy largas
const batchSize = 100;
for (let i = 0; i < entries.length; i += batchSize) {
  const batch = entries.slice(i, i + batchSize);
  
  sqlContent += `\n-- Lote ${Math.floor(i / batchSize) + 1} (${i + 1} - ${Math.min(i + batchSize, entries.length)})\n`;
  sqlContent += `INSERT INTO dictionary_entries (bubi, spanish, ipa, notes) VALUES\n`;
  
  batch.forEach((entry, idx) => {
    const bubi = entry.bubi.replace(/'/g, "''");
    const spanish = entry.spanish.replace(/'/g, "''");
    const comma = idx === batch.length - 1 ? ';' : ',';
    
    sqlContent += `  ('${bubi}', '${spanish}', NULL, NULL)${comma}\n`;
  });
}

sqlContent += `\n-- Verificar importación
SELECT COUNT(*) as total_palabras FROM dictionary_entries;

-- Ver primeras 10 palabras
SELECT bubi, spanish FROM dictionary_entries ORDER BY bubi LIMIT 10;

-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================
`;

fs.writeFileSync(sqlPath, sqlContent, 'utf8');

console.log(`✅ Script SQL guardado en: db/import-dictionary.sql`);
console.log(`\n📋 Para importar a Supabase:`);
console.log(`   1. Abre Supabase Dashboard → SQL Editor`);
console.log(`   2. Copia el contenido de db/import-dictionary.sql`);
console.log(`   3. Ejecuta el script`);
console.log(`   4. ¡Listo! ${entries.length} palabras importadas\n`);
