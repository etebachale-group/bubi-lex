const fs = require('fs');
const path = require('path');

// Archivos a corregir
const files = [
  'db/import-diccionario-entries-parte-1.sql',
  'db/import-diccionario-entries-parte-2.sql',
  'db/import-diccionario-entries-parte-3.sql',
  'db/import-diccionario-entries-parte-4.sql'
];

// Función para agregar espacios después de abreviaturas
function fixSpacing(text) {
  let fixed = text;

  // Patrón 1: Abreviaturas comunes seguidas de punto y letra minúscula
  // Ejemplo: "adj.malo" -> "adj. malo"
  const patterns = [
    // Abreviaturas gramaticales
    [/\badj\.([\wáéíóúñü])/gi, 'adj. $1'],
    [/\badv\.([\wáéíóúñü])/gi, 'adv. $1'],
    [/\bantrop\.([\wáéíóúñü])/gi, 'antrop. $1'],
    [/\baum\.([\wáéíóúñü])/gi, 'aum. $1'],
    [/\bconec\.([\wáéíóúñü])/gi, 'conec. $1'],
    [/\bconj\.([\wáéíóúñü])/gi, 'conj. $1'],
    [/\bdem\.([\wáéíóúñü])/gi, 'dem. $1'],
    [/\binterj\.([\wáéíóúñü])/gi, 'interj. $1'],
    [/\bloc\.([\wáéíóúñü])/gi, 'loc. $1'],
    [/\bmorf\.([\wáéíóúñü])/gi, 'morf. $1'],
    [/\bprep\.([\wáéíóúñü])/gi, 'prep. $1'],
    [/\bpret\.([\wáéíóúñü])/gi, 'pret. $1'],
    [/\bpron\.([\wáéíóúñü])/gi, 'pron. $1'],
    [/\btopo\.([\wáéíóúñü])/gi, 'topo. $1'],
    
    // Sustantivo y verbo (más comunes)
    [/\bs\.([\wáéíóúñü])/gi, 's. $1'],
    [/\bv\.([\wáéíóúñü])/gi, 'v. $1'],
    
    // Género
    [/\bm\.([\wáéíóúñü])/gi, 'm. $1'],
    [/\bf\.([\wáéíóúñü])/gi, 'f. $1'],
    [/\bm\/f\.([\wáéíóúñü])/gi, 'm/f. $1'],
    
    // Número
    [/\bsing\.([\wáéíóúñü])/gi, 'sing. $1'],
    [/\bpl\.([\wáéíóúñü])/gi, 'pl. $1'],
    [/\bpI\.([\wáéíóúñü])/gi, 'pl. $1'], // Corregir pI a pl
    [/\bpi\.([\wáéíóúñü])/gi, 'pl. $1'], // Corregir pi a pl
    
    // Clase nominal
    [/\bCl\.([\d])/gi, 'Cl. $1'],
    [/\bel\.([\d])/gi, 'Cl. $1'], // Corregir el a Cl
    
    // También
    [/\bTb\.([\wáéíóúñü])/gi, 'Tb. $1'],
    
    // Expresión
    [/\bexpr\.([\wáéíóúñü])/gi, 'expr. $1'],
    [/\bej\.([\wáéíóúñü])/gi, 'ej. $1'],
    
    // Sustantivo (sus)
    [/\bsus\.([\wáéíóúñü])/gi, 'sus. $1']
  ];

  // Aplicar todos los patrones
  patterns.forEach(([pattern, replacement]) => {
    fixed = fixed.replace(pattern, replacement);
  });

  // Corregir "pI" a "pl" (mayúscula I a minúscula l)
  fixed = fixed.replace(/\bpI\./g, 'pl.');
  fixed = fixed.replace(/\bpi\./g, 'pl.');
  
  // Corregir "el" a "Cl" (clase nominal)
  fixed = fixed.replace(/\bel\. (\d)/g, 'Cl. $1');
  
  // Corregir "sus" a "s" (sustantivo)
  fixed = fixed.replace(/\bsus\./g, 's.');

  // Limpiar espacios múltiples
  fixed = fixed.replace(/  +/g, ' ');

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
  
  // Aplicar correcciones
  const fixed = fixSpacing(content);
  
  // Contar cambios
  const beforeLength = content.length;
  const afterLength = fixed.length;
  const changes = Math.abs(afterLength - beforeLength);
  totalChanges += changes;
  
  // Guardar archivo corregido
  fs.writeFileSync(filePath, fixed, 'utf8');
  
  console.log(`✅ Corregido: ${changes} caracteres modificados`);
});

console.log('\n🎉 Proceso completado');
console.log(`\n📊 Total de cambios: ${totalChanges} caracteres`);
console.log('\nArchivos corregidos:');
files.forEach(file => console.log(`  ✓ ${file}`));
console.log('\n✨ Ahora las definiciones tienen espacios correctos después de las abreviaturas');

