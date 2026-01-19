# 🔧 Solución Rápida: Error de Duplicados

## El Problema

Al intentar limpiar comillas, obtuviste este error:
```
ERROR: duplicate key value violates unique constraint "unique_bubi_lower"
DETAIL: Key (lower(TRIM(BOTH FROM bubi)))=(mba) already exists.
```

**Causa:** Algunas palabras con comillas ya existen sin comillas en la base de datos.

---

## ✅ Solución Rápida (5 minutos)

### 1. Abre Supabase SQL Editor

### 2. Haz Backup
```sql
CREATE TABLE dictionary_entries_backup AS 
SELECT * FROM dictionary_entries 
WHERE bubi LIKE '''%' OR bubi LIKE '%''%';
```

### 3. Ejecuta este script completo
```sql
-- Eliminar duplicados con mismo significado
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

-- Limpiar comillas sin conflictos
UPDATE dictionary_entries
SET bubi = TRIM(BOTH '''' FROM bubi)
WHERE (bubi LIKE '''%' OR bubi LIKE '%''%')
AND NOT EXISTS (
  SELECT 1 FROM dictionary_entries de2
  WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
  AND de2.id != dictionary_entries.id
);

-- Limpiar español
UPDATE dictionary_entries
SET spanish = TRIM(BOTH '''' FROM spanish)
WHERE spanish LIKE '''%' OR spanish LIKE '%''%';
```

### 4. Verifica que funcionó
```sql
SELECT COUNT(*) FROM dictionary_entries WHERE bubi LIKE '''%';
-- Debe devolver 0
```

---

## 📚 Documentación Completa

Si quieres más control o revisar manualmente:
- Lee: `SOLUCION-ERROR-DUPLICADOS.md`
- Usa: `db/clean-quotes-safe.sql`

---

## 🆘 Si algo sale mal

Restaurar desde backup:
```sql
INSERT INTO dictionary_entries 
SELECT * FROM dictionary_entries_backup 
WHERE id NOT IN (SELECT id FROM dictionary_entries);
```

## 🗑️ Vaciar el backup después

Una vez que todo esté bien:
```sql
DROP TABLE IF EXISTS dictionary_entries_backup;
```

---

**Listo!** Ahora puedes continuar con el resto del proyecto.
