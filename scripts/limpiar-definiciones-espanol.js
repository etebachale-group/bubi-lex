const fs = require('fs');
const path = require('path');

console.log('📖 Limpiando definiciones en español del diccionario...\n');

// Leer el JSON con palabras en Bubi correctas
const jsonPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-final.json');
const entries = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));

console.log(`📊 Total de entradas: ${entries.length}\n`);

// Función para extraer solo el significado en español
function extractSpanishMeaning(text) {
  let cleaned = text;
  
  // 1. Remover todo después de "Ej." o "Ex."
  cleaned = cleaned.replace(/(?:Ej|Ex)\s*\.\s*.+$/is, '');
  
  // 2. Remover conjugaciones (preso, paso punto, paso duro, etc.)
  cleaned = cleaned.replace(/\b(?:preso?|paso\s+(?:punto|duro)|pres\.|pas\.\s+punto)\s+.+$/gi, '');
  
  // 3. Remover todo entre corchetes
  cleaned = cleaned.replace(/\[[^\]]+\]/g, '');
  
  // 4. Remover frases completas en Bubi (empiezan con o/n/a/e + palabra)
  cleaned = cleaned.replace(/\b[onae]\s+[a-záéíóúñü']+(?:\s+[a-záéíóúñü']+)+/gi, '');
  
  // 5. Remover palabras sueltas en Bubi (con apóstrofes o acentos especiales)
  cleaned = cleaned.replace(/\b[a-záéíóúñü]+[''][a-záéíóúñü]+\b/gi, '');
  
  // 6. Remover clases nominales y género
  cleaned = cleaned.replace(/\(el\.\s*\d+[a-z]?\)/gi, '');
  cleaned = cleaned.replace(/\b(m\.|f\.|m\/f\.|s\.|v\.|adj\.|adv\.|pl\.|sing\.|inf\.)\s*/gi, '');
  
  // 7. Remover números de sección
  cleaned = cleaned.replace(/^\d+\.\s*-?\s*/, '');
  
  // 8. Tomar solo palabras en español puro (sin caracteres especiales de Bubi)
  // Buscar palabras que parecen español
  const spanishPattern = /\b[a-záéíóúñ]+(?:\s+[a-záéíóúñ]+){0,4}\b/gi;
  const spanishMatches = cleaned.match(spanishPattern);
  
  if (spanishMatches && spanishMatches.length > 0) {
    // Filtrar palabras muy cortas o que parecen Bubi
    const filtered = spanishMatches.filter(phrase => {
      const words = phrase.trim().split(/\s+/);
      // Mantener solo si tiene al menos una palabra de 3+ letras
      return words.some(w => w.length >= 3);
    });
    
    if (filtered.length > 0) {
      cleaned = filtered.slice(0, 3).join(', ');
    }
  }
  
  // 9. Limpiar espacios y puntuación
  cleaned = cleaned.replace(/\s+/g, ' ').trim();
  cleaned = cleaned.replace(/^[,;:\s-]+/, '');
  cleaned = cleaned.replace(/[,;:\s-]+$/, '');
  
  // 10. Si quedó vacío o muy corto, usar placeholder
  if (cleaned.length < 3) {
    cleaned = 'Ver definición completa';
  }
  
  // 11. Limitar longitud
  if (cleaned.length > 100) {
    cleaned = cleaned.substring(0, 97) + '...';
  }
  
  return cleaned;
}

// Mejorar cada entrada
entries.forEach((entry, index) => {
  const originalSpanish = entry.spanish;
  
  // 1. Extraer ejemplos ANTES de limpiar
  const examples = [];
  
  // Buscar ejemplos con "Ej. Expr.:"
  const exprMatch = originalSpanish.match(/(?:Ej|Ex)\s*\.\s*(?:E\s*xpr\.?|Expr\.?):\s*(.+?)(?=(?:Ej|Ex)\s*\.\s*|$)/is);
  if (exprMatch) {
    const exampleParts = exprMatch[1].split(/[,;]/).filter(p => p.trim().length > 10);
    examples.push(...exampleParts.slice(0, 3).map(ex => ex.trim()));
  }
  
  // Si no hay ejemplos con "Ej. Expr:", buscar frases que parecen ejemplos
  if (examples.length === 0) {
    const sentenceMatches = originalSpanish.match(/(?:^|[.;])\s*([^.;]+(?:n la|o la|a la|he |ne |ba )[^.;]+)/g);
    if (sentenceMatches && sentenceMatches.length > 0) {
      examples.push(...sentenceMatches.slice(0, 3).map(s => s.replace(/^[.;]\s*/, '').trim()));
    }
  }
  
  entry.examples = examples.length > 0 ? examples.slice(0, 3).join(' | ') : null;
  
  // 2. Extraer variantes ANTES de limpiar
  const variants = [];
  const variantMatches = originalSpanish.match(/,\s+o\s+([a-záéíóúñü']+)/g);
  if (variantMatches) {
    variantMatches.forEach(v => {
      const word = v.replace(/,\s+o\s+/, '').trim();
      if (word.match(/[áéíóúñü']/) || word.length <= 8) {
        variants.push(word);
      }
    });
  }
  entry.variants = variants.length > 0 ? variants.slice(0, 3).join(', ') : null;
  
  // 3. Para Español-Bubi, la definición ES la palabra en español
  // No hay definición en español en el texto, solo conjugaciones y ejemplos en Bubi
  entry.spanish = entry.spanish_word;
  
  // 4. Asegurar que notes tenga la palabra en español
  entry.notes = `Español: ${entry.spanish_word}`;
});

// Estadísticas
const stats = {
  total: entries.length,
  withExamples: entries.filter(e => e.examples).length,
  withVariants: entries.filter(e => e.variants).length,
  withGender: entries.filter(e => e.gender).length,
  withClass: entries.filter(e => e.nominal_class).length,
  avgSpanishLength: Math.round(entries.reduce((sum, e) => sum + e.spanish.length, 0) / entries.length),
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
console.log(`   Longitud promedio español: ${stats.avgSpanishLength} caracteres`);
console.log('\n📈 Por tipo gramatical:');
Object.entries(stats.byType).sort((a, b) => b[1] - a[1]).forEach(([type, count]) => {
  console.log(`   ${type}: ${count} (${(count/stats.total*100).toFixed(1)}%)`);
});

// Guardar JSON limpio
const outputPath = path.join(process.cwd(), 'palabras', 'espanol-bubi-limpio.json');
fs.writeFileSync(outputPath, JSON.stringify(entries, null, 2), 'utf8');
console.log(`\n✅ Guardado: ${outputPath}`);

// Mostrar ejemplos de mejoras
console.log('\n📝 Ejemplos de definiciones limpias:\n');
entries.slice(0, 10).forEach((e, i) => {
  console.log(`${i+1}. ${e.spanish_word} → ${e.bubi}`);
  console.log(`   Español: ${e.spanish}`);
  if (e.examples) console.log(`   Ejemplos: ${e.examples.substring(0, 60)}...`);
  if (e.variants) console.log(`   Variantes: ${e.variants}`);
  console.log('');
});

console.log('🎉 Proceso completado!');
