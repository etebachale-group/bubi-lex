const fs = require('fs');
const path = require('path');

// Archivos a corregir
const files = [
  'db/import-diccionario-entries-parte-1.sql',
  'db/import-diccionario-entries-parte-2.sql',
  'db/import-diccionario-entries-parte-3.sql',
  'db/import-diccionario-entries-parte-4.sql'
];

// Función para corregir abreviaturas de clase
function fixClassAbbreviations(text) {
  let fixed = text;

  // Corregir "CI." a "Cl." (mayúscula I a minúscula l)
  fixed = fixed.replace(/\bCI\./g, 'Cl.');
  
  // Corregir "PI." a "pl." (plural)
  fixed = fixed.replace(/\bPI\./g, 'pl.');
  
  // Corregir "pI." a "pl." (plural con I mayúscula)
  fixed = fixed.replace(/\bpI\./g, 'pl.');
  
  // Corregir "pi." a "pl." (plural minúscula)
  fixed = fixed.replace(/\bpi\./g, 'pl.');
  
  // Corregir "el." seguido de número a "Cl." (clase)
  fixed = fixed.replace(/\bel\. (\d)/g, 'Cl. $1');
  
  // Corregir "sus." a "s." (sustantivo)
  fixed = fixed.replace(/\bsus\./g, 's.');
  
  // Asegurar espacio después de "Cl."
  fixed = fixed.replace(/\bCl\.(\d)/g, 'Cl. $1');
  
  // Asegurar espacio después de "pl."
  fixed = fixed.replace(/\bpl\.([a-záéíóúñü])/gi, 'pl. $1');

  return fixed;
}

// Procesar cada archivo
let totalChanges = 0;

files.forEach(file => {
  const filePath = path.join(process.cwd(), file);
  
  if (!fs.existsSync(filePath)) {
    console.log(`❌ Archivo no encontrado: ${file}`);
    return;
  }

  console.log(`\n📝 Procesando: ${file}`);
  
  // Leer archivo
  const content = fs.readFileSync(filePath, 'utf8');
  
  // Contar ocurrencias antes
  const ciCount = (content.match(/\bCI\./g) || []).length;
  const piCount = (content.match(/\bPI\./g) || []).length;
  const pICount = (content.match(/\bpI\./g) || []).length;
  const elCount = (content.match(/\bel\. \d/g) || []).length;
  const susCount = (content.match(/\bsus\./g) || []).length;
  
  const before = ciCount + piCount + pICount + elCount + susCount;
  
  // Aplicar correcciones
  const fixed = fixClassAbbreviations(content);
  
  // Contar ocurrencias después
  const ciCountAfter = (fixed.match(/\bCI\./g) || []).length;
  const piCountAfter = (fixed.match(/\bPI\./g) || []).length;
  const pICountAfter = (fixed.match(/\bpI\./g) || []).length;
  const elCountAfter = (fixed.match(/\bel\. \d/g) || []).length;
  const susCountAfter = (fixed.match(/\bsus\./g) || []).length;
  
  const after = ciCountAfter + piCountAfter + pICountAfter + elCountAfter + susCountAfter;
  const changes = before - after;
  
  totalChanges += changes;
  
  // Guardar archivo corregido
  fs.writeFileSync(filePath, fixed, 'utf8');
  
  if (changes > 0) {
    console.log(`✅ Corregido: ${changes} abreviaturas`);
    if (ciCount > 0) console.log(`   - CI. → Cl.: ${ciCount}`);
    if (piCount > 0) console.log(`   - PI. → pl.: ${piCount}`);
    if (pICount > 0) console.log(`   - pI. → pl.: ${pICount}`);
    if (elCount > 0) console.log(`   - el. → Cl.: ${elCount}`);
    if (susCount > 0) console.log(`   - sus. → s.: ${susCount}`);
  } else {
    console.log(`✅ Sin cambios necesarios`);
  }
});

console.log('\n🎉 Proceso completado');
console.log(`\n📊 Total de abreviaturas corregidas: ${totalChanges}`);
console.log('\nArchivos procesados:');
files.forEach(file => console.log(`  ✓ ${file}`));
console.log('\n✨ Todas las abreviaturas están ahora estandarizadas');
