const fs = require('fs');
const path = require('path');

console.log('📖 Mejorando definiciones del diccionario Español-Bubi...\n');

// Leer el JSON con palabras en Bubi correctas
const jsonPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-final.json');
const entries = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));

console.log(`📊 Total de entradas: ${entries.length}\n`);

// Mejorar cada entrada
entries.forEach((entry, index) => {
  let spanish = entry.spanish;
  
  // 1. Extraer ejemplos mejorados (frases completas con contexto)
  const examples = [];
  
  // Buscar ejemplos con "Ej. Expr.:" o "Ex. Expr.:"
  let exampleText = spanish;
  const exprMatch = exampleText.match(/(?:Ej|Ex)\s*\.\s*(?:E\s*xpr\.?|Expr\.?):\s*(.+?)(?=(?:Ej|Ex)\s*\.\s*|$)/is);
  if (exprMatch) {
    // Dividir por comas o punto y coma para obtener múltiples ejemplos
    const exampleParts = exprMatch[1].split(/[,;]/).filter(p => p.trim().length > 10);
    examples.push(...exampleParts.slice(0, 3).map(ex => ex.trim()));
  }
  
  // Si no hay ejemplos con "Ej. Expr:", buscar frases que parecen ejemplos
  if (examples.length === 0) {
    // Buscar frases con verbos conjugados (contienen "n la", "o la", "a la")
    const sentenceMatches = spanish.match(/(?:^|[.;])\s*([^.;]+(?:n la|o la|a la|he |ne |ba )[^.;]+)/g);
    if (sentenceMatches && sentenceMatches.length > 0) {
      examples.push(...sentenceMatches.slice(0, 3).map(s => s.replace(/^[.;]\s*/, '').trim()));
    }
  }
  
  entry.examples = examples.length > 0 ? examples.slice(0, 3).join(' | ') : null;
  
  // 2. Limpiar definición en español
  
  // Remover ejemplos con "Ej. Expr.:"
  spanish = spanish.replace(/(?:Ej|Ex)\s*\.\s*Expr\.?:\s*[^.]+(?:\[[^\]]+\])?[^.]*\./gi, '');
  
  // Remover pronunciaciones entre corchetes
  spanish = spanish.replace(/\[[^\]]+\]/g, '');
  
  // Remover conjugaciones completas de verbos
  spanish = spanish.replace(/preso?\s+yo\s+[^.]+?etc\./gi, '');
  spanish = spanish.replace(/paso\s+punto\s+yo\s+[^.]+?etc\./gi, '');
  spanish = spanish.replace(/paso\s+duro\s+yo\s+[^.]+?etc\./gi, '');
  spanish = spanish.replace(/pres\.\s+yo\s+[^.]+?etc\./gi, '');
  spanish = spanish.replace(/pas\.\s+punto\s+yo\s+[^.]+?etc\./gi, '');
  
  // Remover "inf." y "inf"
  spanish = spanish.replace(/\binf\.?\s+/gi, '');
  
  // Remover clases nominales del texto (ya están en nominal_class)
  spanish = spanish.replace(/\(el\.\s*\d+[a-z]?\)/gi, '');
  spanish = spanish.replace(/\(els?\.\s*\d+[a-z]?(?:,\s*\d+[a-z]?)?\)/gi, '');
  
  // Remover género del texto (ya está en gender)
  spanish = spanish.replace(/\b(m\.|f\.|m\/f\.)\s+/gi, '');
  
  // Remover tipo gramatical del texto
  spanish = spanish.replace(/\b(s\.|v\.|adj\.|adv\.|prep\.|conj\.|interj\.|pron\.)\s+/gi, '');
  
  // Remover número del texto (ya está en number)
  spanish = spanish.replace(/\b(pl\.|pI\.|sing\.)\s+/gi, '');
  
  // 3. Extraer variantes (palabras en Bubi alternativas)
  const variants = [];
  
  // Buscar "o palabra" que indica variante en Bubi
  const variantMatches = spanish.match(/,\s+o\s+([a-záéíóúñü']+)/g);
  if (variantMatches) {
    variantMatches.forEach(v => {
      const word = v.replace(/,\s+o\s+/, '').trim();
      // Solo agregar si parece ser una palabra en Bubi (tiene caracteres especiales o es corta)
      if (word.match(/[áéíóúñü']/) || word.length <= 8) {
        variants.push(word);
      }
    });
  }
  
  entry.variants = variants.length > 0 ? variants.slice(0, 3).join(', ') : null;
  
  // 4. Limpiar espacios y puntuación
  spanish = spanish.replace(/\s+/g, ' ').trim();
  spanish = spanish.replace(/[,;]\s*[,;]+/g, ',');
  spanish = spanish.replace(/^\s*[,;]+\s*/, '');
  spanish = spanish.replace(/\s+([,;.])/g, '$1');
  
  // 5. Remover texto redundante al inicio
  // Si empieza con "o palabra," removerlo
  spanish = spanish.replace(/^o\s+[a-záéíóúñü']+,\s*/i, '');
  
  // 6. Limitar longitud
  if (spanish.length > 400) {
    spanish = spanish.substring(0, 397) + '...';
  }
  
  entry.spanish = spanish;
  
  // 7. Asegurar que notes tenga la palabra en español
  entry.notes = `Español: ${entry.spanish_word}`;
});

// Estadísticas
const stats = {
  total: entries.length,
  withExamples: entries.filter(e => e.examples).length,
  withVariants: entries.filter(e => e.variants).length,
  withGender: entries.filter(e => e.gender).length,
  withClass: entries.filter(e => e.nominal_class).length,
  withNumber: entries.filter(e => e.number).length,
  byType: {}
};

entries.forEach(e => {
  stats.byType[e.word_type] = (stats.byType[e.word_type] || 0) + 1;
});

console.log('📊 Estadísticas finales:');
console.log(`   Total: ${stats.total}`);
console.log(`   Con ejemplos: ${stats.withExamples} (${(stats.withExamples/stats.total*100).toFixed(1)}%)`);
console.log(`   Con variantes: ${stats.withVariants} (${(stats.withVariants/stats.total*100).toFixed(1)}%)`);
console.log(`   Con género: ${stats.withGender} (${(stats.withGender/stats.total*100).toFixed(1)}%)`);
console.log(`   Con clase nominal: ${stats.withClass} (${(stats.withClass/stats.total*100).toFixed(1)}%)`);
console.log(`   Con número: ${stats.withNumber} (${(stats.withNumber/stats.total*100).toFixed(1)}%)`);
console.log('\n📈 Por tipo gramatical:');
Object.entries(stats.byType).sort((a, b) => b[1] - a[1]).forEach(([type, count]) => {
  console.log(`   ${type}: ${count} (${(count/stats.total*100).toFixed(1)}%)`);
});

// Guardar JSON mejorado
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-mejorado.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');
console.log(`\n✅ Guardado: ${outputPath}`);

// Mostrar ejemplos de mejoras
console.log('\n📝 Ejemplos de entradas mejoradas:\n');
entries.slice(0, 5).forEach((e, i) => {
  console.log(`${i+1}. ${e.spanish_word} → ${e.bubi}`);
  console.log(`   Tipo: ${e.word_type}${e.gender ? ` ${e.gender}` : ''}${e.nominal_class ? ` ${e.nominal_class}` : ''}`);
  console.log(`   Definición: ${e.spanish.substring(0, 80)}${e.spanish.length > 80 ? '...' : ''}`);
  if (e.examples) console.log(`   Ejemplos: ${e.examples.substring(0, 80)}...`);
  if (e.variants) console.log(`   Variantes: ${e.variants}`);
  console.log('');
});

console.log('🎉 Proceso completado!');
