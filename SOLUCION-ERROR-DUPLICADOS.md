# Solución: Error de Duplicados al Limpiar Comillas

## ❌ Error Encontrado

```
ERROR: 23505: duplicate key value violates unique constraint "unique_bubi_lower"
DETAIL: Key (lower(TRIM(BOTH FROM bubi)))=(mba) already exists.
```

## 🔍 Causa del Problema

La base de datos tiene un constraint único que previene duplicados:
- Constraint: `unique_bubi_lower`
- Verifica: `lower(TRIM(BOTH FROM bubi))`

**Ejemplo del problema:**
```
Entrada 1: 'mba  (con comilla)
Entrada 2: mba   (sin comilla) ← Ya existe

Al limpiar 'mba → mba = CONFLICTO ❌
```

## ✅ Solución Implementada

He creado **2 scripts** para manejar este problema:

### Opción 1: Script Automático (Recomendado)
📄 **Archivo**: `db/clean-quotes.sql` (actualizado)

**Qué hace:**
1. Identifica duplicados potenciales
2. Elimina automáticamente entradas con comillas si ya existe la versión sin comillas
3. Limpia comillas de palabras restantes sin conflictos
4. Verifica integridad final

**Cuándo usar:** Si confías en que las versiones sin comillas son las correctas

### Opción 2: Script Seguro (Manual)
📄 **Archivo**: `db/clean-quotes-safe.sql` (nuevo)

**Qué hace:**
1. Muestra todos los duplicados potenciales
2. Solo elimina duplicados con **mismo significado**
3. Te muestra duplicados con **diferente significado** para revisión manual
4. Limpia solo palabras sin conflictos
5. Te permite eliminar duplicados específicos por ID

**Cuándo usar:** Si quieres revisar cada caso antes de eliminar

---

## 📋 Instrucciones Paso a Paso

### Usando el Script Seguro (Recomendado para primera vez)

#### 1. Ver palabras con comillas
```sql
SELECT 
  id, 
  bubi as palabra_original,
  TRIM(BOTH '''' FROM bubi) as palabra_limpia,
  spanish,
  created_at
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%'
ORDER BY bubi;
```

#### 2. Identificar duplicados
```sql
SELECT 
  de1.id as id_con_comillas,
  de1.bubi as con_comillas,
  de2.id as id_sin_comillas,
  de2.bubi as sin_comillas,
  de1.spanish as traduccion_1,
  de2.spanish as traduccion_2,
  CASE 
    WHEN de1.spanish = de2.spanish THEN '✅ Mismo significado - ELIMINAR'
    ELSE '⚠️ Diferente significado - REVISAR'
  END as accion_recomendada
FROM dictionary_entries de1
JOIN dictionary_entries de2 
  ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
  AND de2.bubi NOT LIKE '''%'
  AND de2.bubi NOT LIKE '%''%'
  AND de1.id != de2.id
ORDER BY de1.bubi;
```

**Resultado esperado:**
```
id_con_comillas | con_comillas | id_sin_comillas | sin_comillas | traduccion_1 | traduccion_2 | accion_recomendada
----------------|--------------|-----------------|--------------|--------------|--------------|-------------------
123             | 'mba         | 456             | mba          | Perro        | Perro        | ✅ Mismo significado
789             | 'bata        | 234             | bata         | Casa         | Hogar        | ⚠️ Diferente significado
```

#### 3. Eliminar duplicados con mismo significado
```sql
DELETE FROM dictionary_entries
WHERE id IN (
  SELECT de1.id
  FROM dictionary_entries de1
  JOIN dictionary_entries de2 
    ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
  WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
    AND de2.bubi NOT LIKE '''%'
    AND de2.bubi NOT LIKE '%''%'
    AND de1.id != de2.id
    AND de1.spanish = de2.spanish
);
```

#### 4. Revisar duplicados con diferente significado
```sql
SELECT 
  de1.id as id_con_comillas,
  de1.bubi as con_comillas,
  de1.spanish as significado_1,
  de2.id as id_sin_comillas,
  de2.bubi as sin_comillas,
  de2.spanish as significado_2
FROM dictionary_entries de1
JOIN dictionary_entries de2 
  ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
  AND de2.bubi NOT LIKE '''%'
  AND de2.bubi NOT LIKE '%''%'
  AND de1.id != de2.id
  AND de1.spanish != de2.spanish;
```

**Si hay resultados:** Decide manualmente cuál mantener y elimina el otro:
```sql
-- Eliminar por ID específico
DELETE FROM dictionary_entries WHERE id = 123;  -- Reemplaza con el ID correcto
```

#### 5. Limpiar comillas de palabras sin conflictos
```sql
UPDATE dictionary_entries
SET bubi = TRIM(BOTH '''' FROM bubi)
WHERE (bubi LIKE '''%' OR bubi LIKE '%''%')
AND NOT EXISTS (
  SELECT 1 
  FROM dictionary_entries de2
  WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
  AND de2.id != dictionary_entries.id
);
```

#### 6. Limpiar comillas en español
```sql
UPDATE dictionary_entries
SET spanish = TRIM(BOTH '''' FROM spanish)
WHERE spanish LIKE '''%' OR spanish LIKE '%''%';
```

#### 7. Verificar que todo está limpio
```sql
-- Debe devolver 0
SELECT COUNT(*) as palabras_con_comillas_restantes
FROM dictionary_entries
WHERE bubi LIKE '''%' OR bubi LIKE '%''%';

-- Verificar que no hay duplicados
SELECT 
  LOWER(TRIM(BOTH FROM bubi)) as palabra,
  COUNT(*) as total
FROM dictionary_entries
GROUP BY LOWER(TRIM(BOTH FROM bubi))
HAVING COUNT(*) > 1;
```

---

## 🎯 Resumen de Archivos

| Archivo | Descripción | Cuándo usar |
|---------|-------------|-------------|
| `db/clean-quotes.sql` | Script automático actualizado | Limpieza rápida, confías en los datos |
| `db/clean-quotes-safe.sql` | Script seguro con revisión manual | Primera vez, quieres control total |
| `SOLUCION-ERROR-DUPLICADOS.md` | Este documento | Referencia y guía |

---

## ⚠️ Recomendaciones

1. **Hacer backup** antes de ejecutar cualquier DELETE o UPDATE
2. **Usar el script seguro** la primera vez
3. **Revisar duplicados** con diferente significado manualmente
4. **Ejecutar paso a paso** en lugar de todo de una vez
5. **Verificar resultados** después de cada paso

---

## 🔧 Comandos Útiles

### Backup antes de limpiar
```sql
-- Crear tabla temporal con backup
CREATE TABLE dictionary_entries_backup AS 
SELECT * FROM dictionary_entries 
WHERE bubi LIKE '''%' OR bubi LIKE '%''%';

-- Verificar backup
SELECT COUNT(*) FROM dictionary_entries_backup;
```

### Restaurar desde backup (si algo sale mal)
```sql
-- Restaurar entradas específicas
INSERT INTO dictionary_entries 
SELECT * FROM dictionary_entries_backup 
WHERE id NOT IN (SELECT id FROM dictionary_entries);

-- Eliminar backup cuando todo esté bien
DROP TABLE dictionary_entries_backup;
```

---

**Fecha**: 19 de Enero 2025  
**Problema**: Error de constraint único al limpiar comillas  
**Solución**: Scripts con manejo de duplicados
