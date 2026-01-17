#!/usr/bin/env node

/**
 * Script de verificación de mejoras implementadas
 * Ejecutar con: node scripts/verify-improvements.js
 */

const fs = require('fs');
const path = require('path');

const checks = [];
let passed = 0;
let failed = 0;

function check(name, condition, message) {
  checks.push({ name, condition, message });
  if (condition) {
    console.log(`✅ ${name}`);
    passed++;
  } else {
    console.log(`❌ ${name}`);
    console.log(`   ${message}`);
    failed++;
  }
}

function fileExists(filePath) {
  return fs.existsSync(path.join(process.cwd(), filePath));
}

function fileContains(filePath, searchString) {
  try {
    const content = fs.readFileSync(path.join(process.cwd(), filePath), 'utf8');
    return content.includes(searchString);
  } catch {
    return false;
  }
}

console.log('\n🔍 Verificando mejoras implementadas...\n');

// Verificar archivos nuevos
console.log('📁 Archivos Nuevos:');
check(
  'Logger implementado',
  fileExists('src/lib/logger.ts'),
  'Falta src/lib/logger.ts'
);

check(
  'Rate limiting implementado',
  fileExists('src/lib/rate-limit.ts'),
  'Falta src/lib/rate-limit.ts'
);

check(
  'Tipos NextAuth definidos',
  fileExists('src/types/next-auth.d.ts'),
  'Falta src/types/next-auth.d.ts'
);

check(
  'Schema de auditoría creado',
  fileExists('db/audit-schema.sql'),
  'Falta db/audit-schema.sql'
);

check(
  'Documentación de arquitectura',
  fileExists('docs/ARQUITECTURA.md'),
  'Falta docs/ARQUITECTURA.md'
);

// Verificar mejoras en código
console.log('\n🔧 Mejoras en Código:');

check(
  'Rate limiting en dictionary API',
  fileContains('src/app/api/dictionary/route.ts', 'rateLimit'),
  'Falta implementar rate limiting en dictionary API'
);

check(
  'Autenticación en news API',
  fileContains('src/app/api/news/route.ts', 'getServerSession'),
  'Falta autenticación en news API'
);

check(
  'Validación Zod en news',
  fileContains('src/app/api/news/route.ts', 'NewsSchema'),
  'Falta validación Zod en news API'
);

check(
  'Auditoría persistente implementada',
  fileContains('src/lib/audit-log.ts', 'getAuditFromDB'),
  'Falta implementar auditoría persistente'
);

check(
  'Logger en auth-options',
  fileContains('src/lib/auth-options.ts', 'logger'),
  'Falta usar logger en auth-options'
);

// Verificar configuración
console.log('\n⚙️  Configuración:');

check(
  '.env.example actualizado',
  fileContains('.env.example', 'AUDIT_LOG_PERSIST'),
  'Falta actualizar .env.example con nuevas variables'
);

// Verificar que no haya problemas comunes
console.log('\n🔍 Verificación de Calidad:');

check(
  'Sin TODOs de autenticación',
  !fileContains('src/app/api/news/route.ts', 'TODO: Add authentication'),
  'Todavía hay TODOs de autenticación pendientes'
);

check(
  'Sin catch blocks vacíos en dictionary',
  !fileContains('src/app/api/dictionary/route.ts', 'catch {}'),
  'Hay catch blocks vacíos en dictionary API'
);

// Resumen
console.log('\n' + '='.repeat(50));
console.log(`\n📊 Resumen: ${passed} pasadas, ${failed} fallidas\n`);

if (failed === 0) {
  console.log('🎉 ¡Todas las verificaciones pasaron!\n');
  console.log('Próximos pasos:');
  console.log('1. Ejecutar: npm install');
  console.log('2. Ejecutar: npm run build');
  console.log('3. Aplicar db/audit-schema.sql en tu base de datos');
  console.log('4. Configurar variables de entorno en .env.local');
  console.log('5. Ejecutar: npm run dev\n');
  process.exit(0);
} else {
  console.log('⚠️  Algunas verificaciones fallaron.');
  console.log('Revisa los mensajes arriba para más detalles.\n');
  process.exit(1);
}
