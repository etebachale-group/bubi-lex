#!/usr/bin/env node

/**
 * Script para agregar tracking de colaboradores a la base de datos
 * Ejecutar con: node scripts/add-collaborator-tracking.js
 */

const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Cargar variables de entorno
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Error: Variables de entorno no configuradas');
  console.error('Asegúrate de tener NEXT_PUBLIC_SUPABASE_URL y NEXT_PUBLIC_SUPABASE_ANON_KEY en .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function runMigration() {
  console.log('🚀 Iniciando migración de tracking de colaboradores...\n');

  try {
    // Leer el archivo SQL
    const sqlPath = path.join(__dirname, '..', 'db', 'add-collaborator-tracking.sql');
    const sql = fs.readFileSync(sqlPath, 'utf8');

    console.log('📄 Archivo SQL cargado');
    console.log('⚠️  NOTA: Esta migración debe ejecutarse manualmente en Supabase SQL Editor');
    console.log('⚠️  debido a que requiere permisos de ALTER TABLE\n');

    console.log('📋 Instrucciones:');
    console.log('1. Ve a tu proyecto en Supabase Dashboard');
    console.log('2. Abre el SQL Editor');
    console.log('3. Copia y pega el siguiente SQL:\n');
    console.log('─'.repeat(80));
    console.log(sql);
    console.log('─'.repeat(80));
    console.log('\n4. Ejecuta el SQL');
    console.log('5. Verifica que las columnas se agregaron correctamente\n');

    // Verificar si las columnas ya existen (solo lectura)
    console.log('🔍 Verificando estado actual de la base de datos...\n');

    const { data: dictEntries, error: dictError } = await supabase
      .from('dictionary_entries')
      .select('*')
      .limit(1);

    if (dictError) {
      console.log('⚠️  No se pudo verificar dictionary_entries:', dictError.message);
    } else if (dictEntries && dictEntries.length > 0) {
      const entry = dictEntries[0];
      const hasCreatedBy = 'created_by' in entry;
      const hasUpdatedBy = 'updated_by' in entry;

      console.log('📊 Estado de dictionary_entries:');
      console.log(`   - created_by: ${hasCreatedBy ? '✅ Existe' : '❌ No existe'}`);
      console.log(`   - updated_by: ${hasUpdatedBy ? '✅ Existe' : '❌ No existe'}`);
    }

    const { data: newsEntries, error: newsError } = await supabase
      .from('news')
      .select('*')
      .limit(1);

    if (newsError) {
      console.log('⚠️  No se pudo verificar news:', newsError.message);
    } else if (newsEntries && newsEntries.length > 0) {
      const entry = newsEntries[0];
      const hasCreatedBy = 'created_by' in entry;
      const hasUpdatedBy = 'updated_by' in entry;

      console.log('\n📊 Estado de news:');
      console.log(`   - created_by: ${hasCreatedBy ? '✅ Existe' : '❌ No existe'}`);
      console.log(`   - updated_by: ${hasUpdatedBy ? '✅ Existe' : '❌ No existe'}`);
    }

    console.log('\n✅ Verificación completada');
    console.log('\n💡 Tip: Después de ejecutar la migración, ejecuta este script nuevamente');
    console.log('   para verificar que las columnas se agregaron correctamente.');

  } catch (error) {
    console.error('❌ Error:', error.message);
    process.exit(1);
  }
}

runMigration();
