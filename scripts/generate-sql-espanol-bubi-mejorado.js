const fs = require('fs');
const path = require('path');

// Leer el JSON limpio con definiciones en español correctas
const jsonPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-limpio.json');
const entries = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));

console.log('📖 Generando SQL mejorado para Español-Bubi...\n');

// Función para normalizar tipo gramatical
function normalizeWordType(type) {
  if (!type) return null;
  return type.toLowerCase().trim();
}

// Función para extraer ejemplos de la definición
function extractExamples(text) {
  const examples = [];
  
  // Buscar patrones de ejemplos con corchetes [pronunciación]
  const bracketMatches = text.match(/[^[\]]+\[[^\]]+\]/g);
  if (bracketMatches) {
    examples.push(...bracketMatches.map(m => m.trim()));
  }
  
  // Buscar frases de ejemplo (que empiezan con minúscula después de punto y coma)
  const exampleMatches = text.match(/;\s+[a-záéíóúñü][^;.]+[.;]/g);
  if (exampleMatches) {
    examples.push(...exampleMatches.map(m => m.replace(/^;\s+/, '').trim()));
  }
  
  return examples.length > 0 ? examples.slice(0, 3).join(' | ') : null;
}

// Función para extraer variantes
function extractVariants(text) {
  const variants = [];
  
  // Buscar "o palabra" que indica variante
  const variantMatches = text.match(/,\s+o\s+([a-záéíóúñü']+)/g);
  if (variantMatches) {
    variants.push(...variantMatches.map(m => m.replace(/,\s+o\s+/, '').trim()));
  }
  
  return variants.length > 0 ? variants.join(', ') : null;
}

// Función para limpiar definición
function cleanDefinition(text, spanishWord) {
  // Si el texto ya es solo la palabra en español (limpio), no hacer nada
  if (text.trim().toLowerCase() === spanishWord.toLowerCase()) {
    return text.trim();
  }
  
  let cleaned = text;
  
  // Remover la palabra en español del inicio
  cleaned = cleaned.replace(new RegExp(`^${spanishWord},?\\s*`, 'i'), '');
  
  // Remover tipo gramatical
  cleaned = cleaned.replace(/^(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)\s+/i, '');
  
  // Remover género
  cleaned = cleaned.replace(/^(m\.|f\.|m\/f\.)\s+/i, '');
  
  // Remover "inf." de verbos
  cleaned = cleaned.replace(/^inf\.?\s+/i, '');
  
  // Remover palabras en Bubi del inicio (hasta el primer punto y coma o coma)
  cleaned = cleaned.replace(/^[a-záéíóúñü',\s]+?(?=[;,])/i, '');
  
  // Remover clases nominales
  cleaned = cleaned.replace(/\(el\.\s*\d+\)/gi, '');
  
  // Remover pronunciación entre corchetes
  cleaned = cleaned.replace(/\[[^\]]+\]/g, '');
  
  // Remover conjugaciones completas (preso yo..., paso punto..., paso duro...)
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
  
  // Limitar longitud a 500 caracteres para la definición principal
  if (cleaned.length > 500) {
    cleaned = cleaned.substring(0, 497) + '...';
  }
  
  return cleaned;
}

// Función para extraer número (singular/plural)
function extractNumber(text) {
  if (text.match(/\bpl\./i) || text.match(/\bpI\./i)) return 'pl.';
  if (text.match(/\bsing\./i)) return 'sing.';
  return null;
}

// Procesar entradas
const processedEntries = entries.map(entry => {
  const wordType = normalizeWordType(entry.word_type);
  const examples = extractExamples(entry.spanish);
  const variants = extractVariants(entry.spanish);
  const cleanedSpanish = cleanDefinition(entry.spanish, entry.spanish_word);
  const number = extractNumber(entry.spanish);
  
  return {
    bubi: entry.bubi,
    word_type: wordType,
    gender: entry.gender,
    number: number,
    nominal_class: entry.nominal_class,
    spanish: cleanedSpanish,
    examples: examples,
    variants: variants,
    notes: `Español: ${entry.spanish_word}`,
    created_by: 'import-espanol-bubi'
  };
});

// Estadísticas
console.log('📊 Estadísticas de procesamiento:\n');
console.log(`Total de entradas: ${processedEntries.length}`);
console.log(`Con ejemplos: ${processedEntries.filter(e => e.examples).length}`);
console.log(`Con variantes: ${processedEntries.filter(e => e.variants).length}`);
console.log(`Con número: ${processedEntries.filter(e => e.number).length}`);
console.log(`Con clase nominal: ${processedEntries.filter(e => e.nominal_class).length}\n`);

// Generar SQL en múltiples partes (como el diccionario Bubi-Español)
const ENTRIES_PER_FILE = 1200; // ~1200 entradas por archivo
const numFiles = Math.ceil(processedEntries.length / ENTRIES_PER_FILE);

console.log(`📝 Generando ${numFiles} archivos SQL...\n`);

for (let fileNum = 0; fileNum < numFiles; fileNum++) {
  const startIdx = fileNum * ENTRIES_PER_FILE;
  const endIdx = Math.min(startIdx + ENTRIES_PER_FILE, processedEntries.length);
  const fileEntries = processedEntries.slice(startIdx, endIdx);
  
  const sqlLines = [
    '-- Script de importación Español-Bubi (Mejorado)',
    `-- PARTE ${fileNum + 1} de ${numFiles}`,
    `-- Entradas: ${startIdx + 1} a ${endIdx}`,
    `-- Total de entradas en esta parte: ${fileEntries.length}`,
    '-- Fecha: ' + new Date().toISOString().split('T')[0],
    '',
    '-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3...)',
    '',
    'BEGIN;',
    ''
  ];
  
  // Dividir en lotes de 25
  const batchSize = 25;
  let batchNum = 1;
  
  for (let i = 0; i < fileEntries.length; i += batchSize) {
    const batch = fileEntries.slice(i, Math.min(i + batchSize, fileEntries.length));
    
    sqlLines.push(`-- Lote ${batchNum} (entradas ${startIdx + i + 1} a ${startIdx + i + batch.length})`);
    sqlLines.push('INSERT INTO dictionary_entries (');
    sqlLines.push('  bubi, word_type, gender, number, nominal_class,');
    sqlLines.push('  spanish, examples, variants, notes, created_by');
    sqlLines.push(') VALUES');
    
    const values = batch.map((entry, idx) => {
      // Escapar comillas simples
      const bubi = (entry.bubi || '').replace(/'/g, "''");
      const spanish = (entry.spanish || '').replace(/'/g, "''");
      const examples = entry.examples ? `'${entry.examples.replace(/'/g, "''")}'` : 'NULL';
      const variants = entry.variants ? `'${entry.variants.replace(/'/g, "''")}'` : 'NULL';
      const notes = (entry.notes || '').replace(/'/g, "''");
      
      // Valores con NULL apropiado
      const wordType = entry.word_type ? `'${entry.word_type}'` : 'NULL';
      const gender = entry.gender ? `'${entry.gender}'` : 'NULL';
      const number = entry.number ? `'${entry.number}'` : 'NULL';
      const nomClass = entry.nominal_class ? `'${entry.nominal_class}'` : 'NULL';
      
      const comma = idx < batch.length - 1 ? ',' : ';';
      
      return `  ('${bubi}', ${wordType}, ${gender}, ${number}, ${nomClass}, '${spanish}', ${examples}, ${variants}, '${notes}', 'import-espanol-bubi')${comma}`;
    });
    
    sqlLines.push(...values);
    sqlLines.push('');
    batchNum++;
  }
  
  sqlLines.push('COMMIT;');
  sqlLines.push('');
  sqlLines.push(`-- ✅ Parte ${fileNum + 1} de ${numFiles} completada`);
  sqlLines.push(`-- Total de entradas en esta parte: ${fileEntries.length}`);
  
  // Guardar archivo
  const filename = `import-espanol-bubi-parte-${fileNum + 1}.sql`;
  const filepath = path.join(process.cwd(), 'db', filename);
  fs.writeFileSync(filepath, sqlLines.join('\n'), 'utf8');
  
  console.log(`✅ ${filename} - ${fileEntries.length} entradas`);
}

// Crear archivo de verificación
const verifySQL = [
  '-- Script de verificación para importación Español-Bubi',
  '-- Ejecutar después de importar todas las partes',
  '',
  '-- 1. Verificar total de entradas',
  'SELECT COUNT(*) as total',
  'FROM dictionary_entries',
  "WHERE created_by = 'import-espanol-bubi';",
  '-- Esperado: ' + processedEntries.length,
  '',
  '-- 2. Verificar distribución por tipo',
  'SELECT',
  '  word_type,',
  '  COUNT(*) as total,',
  '  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dictionary_entries WHERE created_by = \'import-espanol-bubi\'), 1) as porcentaje',
  'FROM dictionary_entries',
  "WHERE created_by = 'import-espanol-bubi'",
  'GROUP BY word_type',
  'ORDER BY total DESC;',
  '',
  '-- 3. Verificar entradas con ejemplos',
  'SELECT COUNT(*) as con_ejemplos',
  'FROM dictionary_entries',
  "WHERE created_by = 'import-espanol-bubi'",
  'AND examples IS NOT NULL;',
  '',
  '-- 4. Verificar entradas con variantes',
  'SELECT COUNT(*) as con_variantes',
  'FROM dictionary_entries',
  "WHERE created_by = 'import-espanol-bubi'",
  'AND variants IS NOT NULL;',
  '',
  '-- 5. Ver primeras 10 entradas',
  'SELECT',
  '  bubi,',
  '  word_type,',
  '  gender,',
  '  number,',
  '  nominal_class,',
  '  LEFT(spanish, 50) as spanish_preview,',
  '  notes',
  'FROM dictionary_entries',
  "WHERE created_by = 'import-espanol-bubi'",
  'ORDER BY id',
  'LIMIT 10;',
  '',
  '-- 6. Buscar posibles duplicados con diccionario Bubi-Español',
  'SELECT',
  '  d1.bubi,',
  '  d1.word_type as tipo_es_bubi,',
  '  d2.word_type as tipo_bubi_es,',
  '  d1.spanish as def_es_bubi,',
  '  d2.spanish as def_bubi_es',
  'FROM dictionary_entries d1',
  'INNER JOIN dictionary_entries d2 ON LOWER(d1.bubi) = LOWER(d2.bubi)',
  "WHERE d1.created_by = 'import-espanol-bubi'",
  "AND d2.created_by = 'import-script'",
  'LIMIT 20;'
];

const verifyPath = path.join(process.cwd(), 'db', 'verify-espanol-bubi-import.sql');
fs.writeFileSync(verifyPath, verifySQL.join('\n'), 'utf8');
console.log(`\n✅ verify-espanol-bubi-import.sql - Script de verificación`);

// Crear guía de importación
const guideContent = `# 📚 Guía de Importación - Diccionario Español-Bubi

## 📋 Archivos Generados

Se han generado **${numFiles} archivos SQL** con las entradas del diccionario Español-Bubi:

${Array.from({length: numFiles}, (_, i) => `${i + 1}. \`db/import-espanol-bubi-parte-${i + 1}.sql\` - ${i === numFiles - 1 ? processedEntries.length - (numFiles - 1) * ENTRIES_PER_FILE : ENTRIES_PER_FILE} entradas`).join('\n')}

**Total:** ${processedEntries.length} entradas

---

## 🚀 Proceso de Importación

### Paso 1: Preparar la Base de Datos

Si ya tienes el diccionario Bubi-Español importado, puedes importar directamente.

Si es una base de datos nueva, ejecuta primero:
\`\`\`sql
-- Asegurarse de que la tabla existe
-- Ver: db/schema.sql
\`\`\`

### Paso 2: Importar las Partes en Orden

Ejecuta los archivos en orden en Supabase SQL Editor:

1. **Parte 1:** \`db/import-espanol-bubi-parte-1.sql\`
2. **Parte 2:** \`db/import-espanol-bubi-parte-2.sql\`
${numFiles > 2 ? `3. **Parte 3:** \`db/import-espanol-bubi-parte-3.sql\`` : ''}
${numFiles > 3 ? `4. **Parte 4:** \`db/import-espanol-bubi-parte-4.sql\`` : ''}

**Tiempo estimado:** 1-2 minutos por archivo

### Paso 3: Verificar la Importación

Ejecuta el script de verificación:
\`\`\`bash
db/verify-espanol-bubi-import.sql
\`\`\`

**Resultados esperados:**
- Total de entradas: ${processedEntries.length}
- Con ejemplos: ${processedEntries.filter(e => e.examples).length}
- Con variantes: ${processedEntries.filter(e => e.variants).length}

---

## 📊 Estructura de Datos

Cada entrada tiene los siguientes campos:

\`\`\`sql
INSERT INTO dictionary_entries (
  bubi,           -- Palabra en Bubi
  word_type,      -- Tipo gramatical (s., v., adj., adv.)
  gender,         -- Género (m., f., NULL)
  number,         -- Número (sing., pl., NULL)
  nominal_class,  -- Clase nominal (Cl. 1-16, NULL)
  spanish,        -- Definición en español (limpia)
  examples,       -- Ejemplos de uso (separados por |)
  variants,       -- Variantes (separadas por ,)
  notes,          -- Nota con palabra en español original
  created_by      -- 'import-espanol-bubi'
)
\`\`\`

---

## 🔍 Mejoras Aplicadas

### 1. Normalización de Tipos Gramaticales
- ✅ Todos en minúsculas (s., v., adj., adv.)
- ✅ Consistente con diccionario Bubi-Español

### 2. Extracción de Ejemplos
- ✅ Ejemplos separados del campo \`spanish\`
- ✅ Hasta 3 ejemplos por entrada
- ✅ Formato: "ejemplo1 | ejemplo2 | ejemplo3"

### 3. Extracción de Variantes
- ✅ Variantes separadas del campo \`spanish\`
- ✅ Formato: "variante1, variante2"

### 4. Limpieza de Definiciones
- ✅ Conjugaciones removidas
- ✅ Pronunciación entre corchetes removida
- ✅ Clases nominales en campo separado
- ✅ Definición limitada a 500 caracteres

### 5. Campo Notes
- ✅ Incluye palabra en español original
- ✅ Formato: "Español: palabra"
- ✅ Facilita búsqueda bidireccional

---

## 📈 Estadísticas

| Métrica | Cantidad | Porcentaje |
|---------|----------|------------|
| Total de entradas | ${processedEntries.length} | 100% |
| Con ejemplos | ${processedEntries.filter(e => e.examples).length} | ${((processedEntries.filter(e => e.examples).length / processedEntries.length) * 100).toFixed(1)}% |
| Con variantes | ${processedEntries.filter(e => e.variants).length} | ${((processedEntries.filter(e => e.variants).length / processedEntries.length) * 100).toFixed(1)}% |
| Con número | ${processedEntries.filter(e => e.number).length} | ${((processedEntries.filter(e => e.number).length / processedEntries.length) * 100).toFixed(1)}% |
| Con clase nominal | ${processedEntries.filter(e => e.nominal_class).length} | ${((processedEntries.filter(e => e.nominal_class).length / processedEntries.length) * 100).toFixed(1)}% |

---

## 🎯 Comparación con Bubi-Español

| Aspecto | Bubi-Español | Español-Bubi |
|---------|--------------|--------------|
| Total de entradas | 5,446 | ${processedEntries.length} |
| Con ejemplos | ~600 (11%) | ${processedEntries.filter(e => e.examples).length} (${((processedEntries.filter(e => e.examples).length / processedEntries.length) * 100).toFixed(1)}%) |
| Con variantes | ~800 (15%) | ${processedEntries.filter(e => e.variants).length} (${((processedEntries.filter(e => e.variants).length / processedEntries.length) * 100).toFixed(1)}%) |
| Calidad | Alta | Alta (mejorada) |

---

## ✅ Checklist de Importación

- [ ] Ejecutar \`import-espanol-bubi-parte-1.sql\`
- [ ] Ejecutar \`import-espanol-bubi-parte-2.sql\`
${numFiles > 2 ? '- [ ] Ejecutar `import-espanol-bubi-parte-3.sql`' : ''}
${numFiles > 3 ? '- [ ] Ejecutar `import-espanol-bubi-parte-4.sql`' : ''}
- [ ] Ejecutar \`verify-espanol-bubi-import.sql\`
- [ ] Verificar total: ${processedEntries.length} entradas
- [ ] Probar búsqueda en la aplicación
- [ ] Verificar que no hay duplicados problemáticos

---

## 🔄 Búsqueda Bidireccional

Con ambos diccionarios importados, la aplicación tendrá:

- ✅ **Bubi → Español:** 5,446 entradas
- ✅ **Español → Bubi:** ${processedEntries.length} entradas
- ✅ **Total combinado:** ~${5446 + processedEntries.length} entradas
- ✅ **Búsqueda en ambas direcciones**

---

**Fecha de generación:** ${new Date().toISOString().split('T')[0]}  
**Script utilizado:** \`scripts/generate-sql-espanol-bubi-mejorado.js\`  
**Estado:** ✅ Listo para importar  
**Versión:** 2.0 (Mejorada)
`;

const guidePath = path.join(process.cwd(), 'db', 'GUIA-IMPORTACION-ESPANOL-BUBI.md');
fs.writeFileSync(guidePath, guideContent, 'utf8');
console.log(`\n✅ GUIA-IMPORTACION-ESPANOL-BUBI.md - Guía completa\n`);

console.log('🎉 Proceso completado exitosamente!\n');
console.log('📁 Archivos generados:');
console.log(`   - ${numFiles} archivos SQL de importación`);
console.log('   - 1 script de verificación');
console.log('   - 1 guía de importación');
console.log(`\n📊 Total de entradas: ${processedEntries.length}`);
console.log(`✨ Listo para importar a Supabase`);
