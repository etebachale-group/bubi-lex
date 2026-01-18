/**
 * Script de verificación de funcionalidades del admin
 * Verifica que todas las conexiones con la base de datos estén funcionando
 */

const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Error: Variables de entorno de Supabase no configuradas');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyDictionaryTable() {
  console.log('\n📚 Verificando tabla dictionary_entries...');
  
  try {
    // Verificar que la tabla existe y tiene datos
    const { data, error, count } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes, created_by, updated_by', { count: 'exact' })
      .limit(1);
    
    if (error) {
      console.error('❌ Error al acceder a dictionary_entries:', error.message);
      return false;
    }
    
    console.log(`✅ Tabla dictionary_entries accesible (${count || 0} entradas)`);
    
    // Verificar columnas de tracking
    if (data && data.length > 0) {
      const hasTracking = 'created_by' in data[0] && 'updated_by' in data[0];
      if (hasTracking) {
        console.log('✅ Columnas de tracking (created_by, updated_by) presentes');
      } else {
        console.log('⚠️  Columnas de tracking no encontradas - ejecutar add-collaborator-tracking.sql');
      }
    }
    
    return true;
  } catch (err) {
    console.error('❌ Error:', err.message);
    return false;
  }
}

async function verifyNewsTable() {
  console.log('\n📰 Verificando tabla news...');
  
  try {
    const { data, error, count } = await supabase
      .from('news')
      .select('id, title, content, date, image, video, likes, created_by, updated_by', { count: 'exact' })
      .limit(1);
    
    if (error) {
      console.error('❌ Error al acceder a news:', error.message);
      return false;
    }
    
    console.log(`✅ Tabla news accesible (${count || 0} noticias)`);
    
    // Verificar columnas de tracking
    if (data && data.length > 0) {
      const hasTracking = 'created_by' in data[0] && 'updated_by' in data[0];
      if (hasTracking) {
        console.log('✅ Columnas de tracking (created_by, updated_by) presentes');
      } else {
        console.log('⚠️  Columnas de tracking no encontradas - ejecutar add-collaborator-tracking.sql');
      }
    }
    
    return true;
  } catch (err) {
    console.error('❌ Error:', err.message);
    return false;
  }
}

async function verifyAuditTable() {
  console.log('\n🔍 Verificando tabla admin_audit_log...');
  
  try {
    const { data, error, count } = await supabase
      .from('admin_audit_log')
      .select('id, timestamp, actor_email, action, target, meta', { count: 'exact' })
      .limit(1);
    
    if (error) {
      console.error('⚠️  Tabla admin_audit_log no encontrada - ejecutar audit-schema.sql');
      return false;
    }
    
    console.log(`✅ Tabla admin_audit_log accesible (${count || 0} registros)`);
    return true;
  } catch (err) {
    console.error('⚠️  Error:', err.message);
    return false;
  }
}

async function checkForDuplicates() {
  console.log('\n🔎 Verificando duplicados en diccionario...');
  
  try {
    const { data, error } = await supabase
      .from('dictionary_entries')
      .select('bubi');
    
    if (error) {
      console.error('❌ Error al verificar duplicados:', error.message);
      return false;
    }
    
    // Contar duplicados
    const bubiCounts = {};
    data.forEach(entry => {
      const key = entry.bubi.toLowerCase().trim();
      bubiCounts[key] = (bubiCounts[key] || 0) + 1;
    });
    
    const duplicates = Object.entries(bubiCounts).filter(([_, count]) => count > 1);
    
    if (duplicates.length > 0) {
      console.log(`⚠️  Se encontraron ${duplicates.length} palabras duplicadas:`);
      duplicates.slice(0, 5).forEach(([word, count]) => {
        console.log(`   - "${word}": ${count} veces`);
      });
      if (duplicates.length > 5) {
        console.log(`   ... y ${duplicates.length - 5} más`);
      }
      console.log('\n💡 Usa el panel de admin para eliminar duplicados: /admin/dictionary/duplicates');
    } else {
      console.log('✅ No se encontraron duplicados');
    }
    
    return true;
  } catch (err) {
    console.error('❌ Error:', err.message);
    return false;
  }
}

async function verifyRealtimeConnection() {
  console.log('\n⚡ Verificando conexión en tiempo real...');
  
  try {
    // Verificar que podemos suscribirnos a cambios
    const channel = supabase
      .channel('test-channel')
      .on('postgres_changes', 
        { event: '*', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          console.log('✅ Evento recibido:', payload);
        }
      );
    
    await channel.subscribe((status) => {
      if (status === 'SUBSCRIBED') {
        console.log('✅ Conexión en tiempo real establecida');
      } else if (status === 'CHANNEL_ERROR') {
        console.log('⚠️  Error en conexión en tiempo real');
      }
    });
    
    // Desuscribirse después de verificar
    setTimeout(() => {
      supabase.removeChannel(channel);
    }, 2000);
    
    return true;
  } catch (err) {
    console.error('⚠️  Error en conexión en tiempo real:', err.message);
    return false;
  }
}

async function main() {
  console.log('🚀 Verificando funcionalidades del admin de BubiLex\n');
  console.log('=' .repeat(60));
  
  const results = {
    dictionary: await verifyDictionaryTable(),
    news: await verifyNewsTable(),
    audit: await verifyAuditTable(),
    duplicates: await checkForDuplicates(),
    realtime: await verifyRealtimeConnection(),
  };
  
  console.log('\n' + '='.repeat(60));
  console.log('\n📊 RESUMEN DE VERIFICACIÓN:\n');
  
  Object.entries(results).forEach(([key, success]) => {
    const icon = success ? '✅' : '❌';
    const label = key.charAt(0).toUpperCase() + key.slice(1);
    console.log(`${icon} ${label}`);
  });
  
  const allPassed = Object.values(results).every(r => r);
  
  if (allPassed) {
    console.log('\n✅ Todas las verificaciones pasaron correctamente');
  } else {
    console.log('\n⚠️  Algunas verificaciones fallaron - revisa los detalles arriba');
  }
  
  console.log('\n' + '='.repeat(60));
  
  // Esperar un poco antes de salir para que se complete la verificación de realtime
  setTimeout(() => {
    process.exit(allPassed ? 0 : 1);
  }, 3000);
}

main().catch(err => {
  console.error('❌ Error fatal:', err);
  process.exit(1);
});
