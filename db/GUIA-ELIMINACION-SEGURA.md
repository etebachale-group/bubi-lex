# 🗑️ Guía de Eliminación Segura de Palabras

## ⚠️ ADVERTENCIA IMPORTANTE

Eliminar palabras del diccionario es una operación **PERMANENTE** y **NO SE PUEDE DESHACER** fácilmente. Sigue esta guía cuidadosamente.

---

## 📋 Scripts Disponibles

### 1. `backup-antes-eliminar.sql` ✅ EJECUTAR PRIMERO
**Propósito:** Hacer backup de todas las entradas antes de eliminar

**Uso:**
```sql
-- Ejecutar en Supabase SQL Editor
-- Copiar y guardar el resultado
```

### 2. `eliminar-todas-palabras.sql` ⚠️ PELIGROSO
**Propósito:** Eliminar TODAS las palabras del diccionario

**Elimina:**
- Diccionario Bubi-Español (5,446 entradas)
- Diccionario Español-Bubi (2,230 entradas)
- Entradas de colaboradores
- Entradas de administradores

**Usa solo si:** Quieres empezar desde cero

### 3. `eliminar-bubi-espanol.sql` 🔶 SELECTIVO
**Propósito:** Eliminar solo el diccionario Bubi-Español

**Elimina:**
- Solo entradas con `created_by = 'import-script'`
- Aproximadamente 5,446 entradas

**Mantiene:**
- Diccionario Español-Bubi
- Entradas de colaboradores

### 4. `eliminar-espanol-bubi.sql` 🔶 SELECTIVO
**Propósito:** Eliminar solo el diccionario Español-Bubi

**Elimina:**
- Solo entradas con `created_by = 'import-espanol-bubi'`
- Aproximadamente 2,230 entradas

**Mantiene:**
- Diccionario Bubi-Español
- Entradas de colaboradores

---

## 🚀 Proceso Recomendado

### Paso 1: Hacer Backup ✅
```sql
-- Ejecutar: db/backup-antes-eliminar.sql
-- Guardar el resultado en un archivo
```

### Paso 2: Verificar Estadísticas
```sql
SELECT 
  created_by,
  COUNT(*) as total
FROM dictionary_entries
GROUP BY created_by;
```

### Paso 3: Elegir Script de Eliminación

**Opción A: Eliminar TODO**
```sql
-- Ejecutar: db/eliminar-todas-palabras.sql
-- Descomenta las líneas 38-51
```

**Opción B: Eliminar solo Bubi-Español**
```sql
-- Ejecutar: db/eliminar-bubi-espanol.sql
-- Descomenta las líneas de eliminación
```

**Opción C: Eliminar solo Español-Bubi**
```sql
-- Ejecutar: db/eliminar-espanol-bubi.sql
-- Descomenta las líneas de eliminación
```

### Paso 4: Verificar Resultado
```sql
SELECT 
  'DESPUÉS DE ELIMINAR' as momento,
  COUNT(*) as total_restante,
  COUNT(CASE WHEN created_by = 'import-script' THEN 1 END) as bubi_espanol,
  COUNT(CASE WHEN created_by = 'import-espanol-bubi' THEN 1 END) as espanol_bubi
FROM dictionary_entries;
```

### Paso 5: Reimportar (si es necesario)

**Para Bubi-Español:**
```sql
-- Ejecutar en orden:
1. db/import-diccionario-entries-parte-1.sql
2. db/import-diccionario-entries-parte-2.sql
3. db/import-diccionario-entries-parte-3.sql
4. db/import-diccionario-entries-parte-4.sql
```

**Para Español-Bubi:**
```sql
-- Ejecutar en orden:
1. db/import-espanol-bubi-parte-1.sql
2. db/import-espanol-bubi-parte-2.sql
```

---

## 🔒 Medidas de Seguridad

### ✅ Antes de Eliminar

1. **Hacer backup completo** con `backup-antes-eliminar.sql`
2. **Verificar estadísticas** para saber qué se eliminará
3. **Informar al equipo** si es un entorno compartido
4. **Verificar que tienes los archivos SQL** para reimportar

### ⚠️ Durante la Eliminación

1. **Leer el script completo** antes de ejecutar
2. **Descomenta solo las líneas necesarias**
3. **Usa transacciones** (BEGIN...COMMIT/ROLLBACK)
4. **Verifica el resultado** antes de hacer COMMIT

### 🔄 Después de Eliminar

1. **Verificar que se eliminó lo correcto**
2. **Reimportar si es necesario**
3. **Verificar la importación** con scripts de verificación
4. **Probar la aplicación** para asegurar que funciona

---

## 🆘 En Caso de Error

### Si eliminaste por error:

**Opción 1: Usar ROLLBACK (si aún no hiciste COMMIT)**
```sql
ROLLBACK;
```

**Opción 2: Restaurar desde backup JSON**
```sql
-- Contactar al administrador del sistema
-- Proporcionar el archivo de backup
```

**Opción 3: Reimportar desde archivos SQL**
```sql
-- Ejecutar los archivos de importación correspondientes
```

**Opción 4: Restaurar desde Supabase Backup**
```
1. Ir a Supabase Dashboard
2. Database > Backups
3. Seleccionar backup más reciente
4. Restaurar
```

---

## 📊 Comandos Útiles

### Ver todas las entradas por origen
```sql
SELECT 
  created_by,
  COUNT(*) as total,
  MIN(created_at) as primera,
  MAX(created_at) as ultima
FROM dictionary_entries
GROUP BY created_by
ORDER BY total DESC;
```

### Ver primeras 10 entradas de cada diccionario
```sql
-- Bubi-Español
SELECT * FROM dictionary_entries 
WHERE created_by = 'import-script' 
LIMIT 10;

-- Español-Bubi
SELECT * FROM dictionary_entries 
WHERE created_by = 'import-espanol-bubi' 
LIMIT 10;
```

### Contar entradas por tipo gramatical
```sql
SELECT 
  word_type,
  created_by,
  COUNT(*) as total
FROM dictionary_entries
GROUP BY word_type, created_by
ORDER BY created_by, total DESC;
```

---

## ✅ Checklist de Seguridad

Antes de eliminar, verifica:

- [ ] He hecho backup con `backup-antes-eliminar.sql`
- [ ] He guardado el resultado del backup en un archivo
- [ ] Sé exactamente qué voy a eliminar
- [ ] Tengo los archivos SQL para reimportar
- [ ] He informado al equipo (si aplica)
- [ ] Estoy usando transacciones (BEGIN...COMMIT)
- [ ] He leído el script completo
- [ ] Entiendo que es una operación permanente

---

## 📞 Contacto

Si tienes dudas o problemas:
1. Revisa esta guía completa
2. Verifica los scripts SQL
3. Contacta al administrador del sistema
4. NO ejecutes scripts si no estás seguro

---

**Fecha de creación:** 21 de enero de 2026  
**Versión:** 1.0  
**Autor:** Sistema de Gestión BubiLex
