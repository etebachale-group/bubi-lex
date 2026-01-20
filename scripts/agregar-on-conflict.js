const fs = require('fs');
const path = require('path');

// Archivos a modificar
const files = [
  'import-diccionario-entries-parte-1.sql',
  'import-diccionario-entries-parte-2.sql',
  'import-diccionario-entries-parte-3.sql',
  'import-diccionario-entries-parte-4.sql'
];

console.log('Agregando ON CONFLICT DO NOTHING a los scripts...\n');

files.forEach(filename => {
  const filePath = path.join(__dirname, '..', 'db', filename);
  
  if (!fs.existsSync(filePath)) {
    console.log(`⚠️  Archivo no encontrado: ${filename}`);
    return;
  }
  
  let content = fs.readFileSync(filePath, 'utf8');
  
  // Reemplazar INSERT INTO con INSERT INTO ... ON CONFLICT
  const originalInserts = (content.match(/INSERT INTO dictionary_entries \(/g) || []).length;
  
  content = content.replace(
    /INSERT INTO dictionary_entries \(\s*bubi,/g,
    'INSERT INTO dic