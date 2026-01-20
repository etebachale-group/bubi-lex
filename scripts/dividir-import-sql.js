const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, '..', 'db', 'import-diccionario-profesional-entries.sql');
const content = fs.readFileSync(filePath, 'utf8');
const lines = content.split('\n');

console.log(`Total de líneas: ${lines.length}`);

const insertIndices = [];
lines.forEach((line, index) => {
  if (line.trim().startsWith('INSERT INTO dictionary_entries')) {
    insertIndices.push(index);
  }
});

console.log(`Total de bloques INSERT: ${insertIndices.length}`);

const blocksPerPart = Math.ceil(insertIndices.length / 4);
console.log(`Bloques por parte: ${blocksPerPart}`);

const parts = [
  { start: 0, end: blocksPerPart - 1, name: 'parte-1' },
  { start: blocksPerPart, end: (blocksPerPart * 2) - 1, name: 'parte-2' },
  { start: blocksPerPart * 2, end: (blocksPerPart * 3) - 1, name: 'parte-3' },
  { start: blocksPerPart * 3, end: insertIndices.length - 1, name: 'parte-4' }
];

parts.forEach((part, partIndex) => {
  console.log(`\nCreando ${part.name}...`);
  
  const startLine = insertIndices[part.start];
  const endLine = part.end < insertIndices.length - 1 
    ? insertIndices[part.end + 1] - 1 
    : lines.length - 1;
  
  let actualEndLine = endLine;
  for (let i = endLine; i >= startLine; i--) {
    if (lines[i].trim() === 'COMMIT;') {
      actualEndLine = i;
      break;
    }
  }
  
  const partContent = lines.slice(startLine, actualEndLine + 1).join('\n');
  const entriesInPart = part.end - part.start + 1;
  
  let continuationMsg = '';
  if (partIndex === 3) {
    continuationMsg = '  IF total_count = 5446 THEN\n    RAISE NOTICE \'✅ IMPORTACIÓN COMPLETA - 5446 entradas\';\n  ELSE\n    RAISE NOTICE \'⚠️  Total actual: %, esperado: 5446\', total_count;\n  END IF;';
  } else {
    const nextPart = partIndex + 2;
    continuationMsg = '  RAISE NOTICE \'Continúa con: import-diccionario-entries-parte-' + nextPart + '.sql\';';
  }
  
  const fullContent = '-- Script de importación profesional del diccionario Bubi\n' +
    '-- PARTE ' + (partIndex + 1) + ' de 4\n' +
    '-- Bloques: ' + (part.start + 1) + ' a ' + (part.end + 1) + '\n' +
    '-- Total de entradas en esta parte: ~' + (entriesInPart * 25) + '\n' +
    '-- Fecha: 2026-01-20\n\n' +
    '-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3, 4)\n\n' +
    'BEGIN;\n\n' +
    partContent + '\n\n' +
    '-- ============================================\n' +
    '-- RESUMEN DE PARTE ' + (partIndex + 1) + '\n' +
    '-- ============================================\n\n' +
    'DO $$\n' +
    'DECLARE\n' +
    '  total_count INTEGER;\n' +
    'BEGIN\n' +
    '  SELECT COUNT(*) INTO total_count FROM dictionary_entries;\n' +
    '  \n' +
    '  RAISE NOTICE \'===========================================\';\n' +
    '  RAISE NOTICE \'PARTE ' + (partIndex + 1) + ' DE 4 COMPLETADA\';\n' +
    '  RAISE NOTICE \'===========================================\';\n' +
    '  RAISE NOTICE \'Total acumulado: % entradas\', total_count;\n' +
    '  RAISE NOTICE \'===========================================\';\n' +
    continuationMsg + '\n' +
    '  RAISE NOTICE \'===========================================\';\n' +
    'END $$;\n';
  
  const outputPath = path.join(__dirname, '..', 'db', 'import-diccionario-entries-' + part.name + '.sql');
  fs.writeFileSync(outputPath, fullContent, 'utf8');
  
  console.log('✅ Creado: import-diccionario-entries-' + part.name + '.sql');
  console.log('   Bloques INSERT: ' + (part.start + 1) + ' a ' + (part.end + 1));
  console.log('   Líneas: ' + startLine + ' a ' + actualEndLine);
});

console.log('\n✅ División completada. Archivos creados:');
console.log('   1. db/import-diccionario-entries-parte-1.sql');
console.log('   2. db/import-diccionario-entries-parte-2.sql');
console.log('   3. db/import-diccionario-entries-parte-3.sql');
console.log('   4. db/import-diccionario-entries-parte-4.sql');
console.log('\n📋 Ejecutar en orden en Supabase SQL Editor');
