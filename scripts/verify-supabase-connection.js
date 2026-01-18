#!/usr/bin/env node

/**
 * Script para verificar la conexión a Supabase
 * Ejecutar: node scripts/verify-supabase-connection.js
 */

const fs = require('fs');
const path = require('path');

// Leer .env.local manualmente
function loadEnv() {
  const envPath = path.join(process.cwd(), '.env.local');
  if (!fs.existsSync(envPath)) {
    console.error('❌ No se encontró el archivo .env.local');
    console.log('💡 Copia .env.example a .env.local y configura las credenciales');
    process.exit(1);
  }

  const envContent = fs.readFileSync(envPath, 'utf8');
  envContent.split('\n').forEach(line => {
    const match = line.match(/^([^=:#]+)=(.*)$/);
    if (match) {
      const key = match[1].trim();
      const value = match[2].trim();
      if (!process.env[key]) {
        process.env[key] = value;
      }
    }
  });
}

loadEnv();

const { createClient } = require('@supabase/supabase-js');

console.log('🔍 Verificando configuración de Supabase...\n');

// 1. Verificar variables de entorno
const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

console.log('📋 Variables de entorno:');
console.log(`   NEXT_PUBLIC_SUPABASE_URL: ${url ? '✅ Configurada' : '❌ Falta'}`);
console.log(`   NEXT_PUBLIC_SUPABASE_ANON_KEY: ${anonKey ? '✅ Configurada' : '❌ Falta'}`);

if (!url || !anonKey) {
  console.error('\n❌ Error: Faltan variables de entorno de Supabase');
  console.log('\n💡 Solución:');
  console.log('   1. Copia .env.example a .env.local');
  console.log('   2. Asegúrate de que las credenciales sean correctas');
  process.exit(1);
}

console.log(`\n🌐 URL de Supabase: ${url}`);

// 2. Crear cliente
let supabase;
try {
  supabase = createClient(url, anonKey);
  console.log('✅ Cliente de Supabase creado correctamente\n');
} catch (error) {
  console.error('❌ Error al crear cliente de Supabase:', error.message);
  process.exit(1);
}

// 3. Verificar conexión y tablas
async function verifyConnection() {
  console.log('🔌 Probando conexión a la base de datos...\n');

  try {
    // Verificar tabla dictionary_entries
    console.log('📚 Verificando tabla dictionary_entries...');
    const { data: dictData, error: dictError, count: dictCount } = await supabase
      .from('dictionary_entries')
      .select('*', { count: 'exact', head: true });

    if (dictError) {
      console.error('   ❌ Error:', dictError.message);
      if (dictError.message.includes('relation') || dictError.message.includes('does not exist')) {
        console.log('   💡 La tabla no existe. Ejecuta el schema SQL en Supabase.');
      }
    } else {
      console.log(`   ✅ Tabla existe con ${dictCount || 0} entradas`);
    }

    // Verificar tabla news
    console.log('\n📰 Verificando tabla news...');
    const { data: newsData, error: newsError, count: newsCount } = await supabase
      .from('news')
      .select('*', { count: 'exact', head: true });

    if (newsError) {
      console.error('   ❌ Error:', newsError.message);
      if (newsError.message.includes('relation') || newsError.message.includes('does not exist')) {
        console.log('   💡 La tabla no existe. Ejecuta el schema SQL en Supabase.');
      }
    } else {
      console.log(`   ✅ Tabla existe con ${newsCount || 0} entradas`);
    }

    // Verificar tabla audit_log (opcional)
    console.log('\n🔍 Verificando tabla audit_log (opcional)...');
    const { error: auditError } = await supabase
      .from('audit_log')
      .select('*', { count: 'exact', head: true });

    if (auditError) {
      if (auditError.message.includes('relation') || auditError.message.includes('does not exist')) {
        console.log('   ⚠️  Tabla no existe (opcional)');
        console.log('   💡 Ejecuta db/audit-schema.sql si quieres auditoría');
      } else {
        console.error('   ❌ Error:', auditError.message);
      }
    } else {
      console.log('   ✅ Tabla existe');
    }

    // Verificar tabla dictionary_events (opcional)
    console.log('\n📊 Verificando tabla dictionary_events (opcional)...');
    const { error: eventsError } = await supabase
      .from('dictionary_events')
      .select('*', { count: 'exact', head: true });

    if (eventsError) {
      if (eventsError.message.includes('relation') || eventsError.message.includes('does not exist')) {
        console.log('   ⚠️  Tabla no existe (opcional)');
        console.log('   💡 Ejecuta db/audit-schema.sql si quieres eventos');
      } else {
        console.error('   ❌ Error:', eventsError.message);
      }
    } else {
      console.log('   ✅ Tabla existe');
    }

    // Resumen
    console.log('\n' + '='.repeat(60));
    console.log('📊 RESUMEN DE VERIFICACIÓN');
    console.log('='.repeat(60));

    const hasErrors = dictError || newsError;
    
    if (!hasErrors) {
      console.log('\n✅ ¡Conexión a Supabase exitosa!');
      console.log('✅ Todas las tablas principales están configuradas correctamente');
      console.log('\n🎉 Tu aplicación está lista para funcionar');
    } else {
      console.log('\n⚠️  Hay problemas con la configuración de la base de datos');
      console.log('\n📝 Pasos para solucionar:');
      console.log('   1. Ve a tu proyecto en Supabase Dashboard');
      console.log('   2. Abre el SQL Editor');
      console.log('   3. Ejecuta el contenido de db/schema.sql');
      console.log('   4. Opcionalmente ejecuta db/audit-schema.sql');
      console.log('   5. Vuelve a ejecutar este script');
    }

    console.log('\n' + '='.repeat(60) + '\n');

  } catch (error) {
    console.error('\n❌ Error inesperado:', error.message);
    console.error('\n💡 Verifica que:');
    console.log('   - Las credenciales de Supabase sean correctas');
    console.log('   - Tu proyecto de Supabase esté activo');
    console.log('   - Tengas conexión a internet');
    process.exit(1);
  }
}

// Ejecutar verificación
verifyConnection();
