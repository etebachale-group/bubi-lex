# 📊 Guía: Tablas del Diccionario

## Situación Actual

Tu proyecto tiene **DOS tablas diferentes** para el diccionario:

### 1. `dictionary_entries` ✅ (EN USO)
**Estado:** Tabla ACTIVA usada por tu aplicación

**Ubicación en código:**
- `src/app/api/dictionary/route.ts` → `.from('dictionary_entries')`
- `src/app/admin/dictionary/dictionary-list.tsx` → Suscripciones a cambios
- Todos los scripts de verificación

**Estructura actual:**
```sql
CREATE TABLE dictionary_entries (
  id SERIAL PRIMARY KEY,
  bubi TEXT NOT NULL,
  spanish TEXT NOT NULL,
  ipa VARCHAR(255),
  notes TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  created_by VARCHAR(255),
  updated_by VARCHAR(255)
);
```

**Problema:** ❌ No tiene campos profesionales (word_type, gender, etc.)

---

### 2. `dictionary_entries_backup`
**Estado:** Backup/respaldo

**Propósito:** 
- Copia de seguridad de `dictionary_entries`
- Creado por algún script de migración anterior
- Sirve para restaurar si algo sale mal

**Acción:** Puedes eliminarlo si ya no lo necesitas

---

### 3. `dictionary` ⚠️ (NO EN USO)
**Estado:** Tabla NUEVA creada por scripts recientes

**Estructura:** ✅ Profesional (24 columnas con word_type, gender, etc.)

**Problema:** ❌ Tu aplicación NO la está usando

**Datos:** Tiene 5,446 entradas profesionales importadas

---

## 🎯 Solución Recomendada

### Opción A: Migrar `dictionary_entries` (RECOMENDADO)

**Ventaja:** No necesitas cambiar código de la aplicación

**Pasos:**

#### 1. Migrar estructura de `dictionary_entries`
```bash
# Ejecutar en Supabase SQL Editor:
db/migrate-dictionary-entries-to-professional.sql
```

**Qué hace:**
- ✅ Crea backup automático
- ✅ Agrega 17 columnas nuevas profesionales
- ✅ Mantiene datos actuales
- ✅ Crea índices optimizados
- ✅ NO rompe la aplicación

#### 2. Limpiar datos antiguos (opcional)
```sql
-- Solo si quieres empezar limpio
TRUNCATE TABLE dictionary_entries;
```

#### 3. Importar datos profesionales
Necesitas modificar `import-diccionario-profesional.sql` para cambiar:
```sql
-- Cambiar esto:
INSERT INTO dictionary (...)

-- Por esto:
INSERT INTO dictionary_entries (...)
```

O usar el script que crearé a continuación.

---

### Opción B: Cambiar código para usar `dictionary`

**Ventaja:** Ya tienes los datos profesionales importados

**Desventaja:** Necesitas actualizar TODO el código

**Archivos a cambiar:**
1. `src/app/api/dictionary/route.ts`
2. `src/app/api/dictionary/[id]/route.ts`
3. `src/app/admin/dictionary/dictionary-list.tsx`
4. `src/app/admin/dictionary/dictionary-entry-form.tsx`
5. Todos los componentes que consultan el diccionario

**Cambio en cada archivo:**
```typescript
// Cambiar:
.from('dictionary_entries')

// Por:
.from('dictionary')
```

---

## 📋 Recomendación Final

### ✅ OPCIÓN A (Más Fácil)

1. Ejecutar `db/migrate-dictionary-entries-to-professional.sql`
2. Ejecutar script de importación adaptado (lo crearé)
3. Listo - tu app sigue funcionando

### Ventajas:
- ✅ No cambias código
- ✅ Migración segura con backup
- ✅ Funciona inmediatamente

---

## 🗑️ Limpieza Recomendada

Después de migrar exitosamente:

```sql
-- 1. Eliminar tabla dictionary (no usada)
DROP TABLE IF EXISTS dictionary CASCADE;

-- 2. Eliminar backup antiguo (si ya no lo necesitas)
DROP TABLE IF EXISTS dictionary_entries_backup CASCADE;

-- 3. Mantener solo:
-- - dictionary_entries (con estructura profesional)
-- - dictionary_entries_backup_20260120 (backup reciente)
-- - dictionary_abbreviations (tabla de referencia)
```

---

## 📝 Próximo Paso

Voy a crear un script de importación que use `dictionary_entries` en lugar de `dictionary`.

**Archivo a crear:** `db/import-profesional-to-dictionary-entries.sql`

Este script:
- ✅ Importa las 5,446 entradas profesionales
- ✅ Usa la tabla `dictionary_entries`
- ✅ Funciona con tu aplicación actual
- ✅ No requiere cambios de código

---

**Fecha:** 20 de enero de 2026  
**Recomendación:** Opción A - Migrar `dictionary_entries`
