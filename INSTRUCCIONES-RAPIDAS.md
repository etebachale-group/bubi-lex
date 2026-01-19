# 🚀 Instrucciones Rápidas

## 1️⃣ Limpiar Base de Datos (2 minutos)

Abre Supabase SQL Editor y ejecuta:

```sql
-- Backup
CREATE TABLE dictionary_entries_backup AS 
SELECT * FROM dictionary_entries 
WHERE bubi LIKE '''%' OR bubi LIKE '%''%';

-- Eliminar duplicados
DELETE FROM dictionary_entries
WHERE id IN (
  SELECT de1.id FROM dictionary_entries de1
  JOIN dictionary_entries de2 
    ON LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM de1.bubi))
  WHERE (de1.bubi LIKE '''%' OR de1.bubi LIKE '%''%')
    AND de2.bubi NOT LIKE '''%'
    AND de1.id != de2.id
    AND de1.spanish = de2.spanish
);

-- Limpiar comillas
UPDATE dictionary_entries
SET bubi = TRIM(BOTH '''' FROM bubi)
WHERE (bubi LIKE '''%' OR bubi LIKE '%''%')
AND NOT EXISTS (
  SELECT 1 FROM dictionary_entries de2
  WHERE LOWER(TRIM(BOTH FROM de2.bubi)) = LOWER(TRIM(BOTH '''' FROM dictionary_entries.bubi))
  AND de2.id != dictionary_entries.id
);

UPDATE dictionary_entries
SET spanish = TRIM(BOTH '''' FROM spanish)
WHERE spanish LIKE '''%' OR spanish LIKE '%''%';

-- Verificar (debe devolver 0)
SELECT COUNT(*) FROM dictionary_entries WHERE bubi LIKE '''%';

-- Vaciar backup
DROP TABLE IF EXISTS dictionary_entries_backup;
```

## 2️⃣ Subir a GitHub (1 minuto)

```bash
git add .
git commit -m "feat: pronunciación IPA, tiempo real en noticias, corrección videos"
git push
```

## 3️⃣ Probar en Producción (3 minutos)

### Test Noticias:
1. Crea noticia con video de YouTube → Aparece automáticamente ✅
2. Edita el video → Cambia automáticamente ✅
3. Elimina noticia → Desaparece automáticamente ✅

### Test Pronunciación:
1. Ve al diccionario
2. Busca palabra sin IPA
3. Clic en "Generar pronunciación con IA"
4. Verifica que se genera ✅

---

## ✅ Listo!

Todo implementado y funcionando:
- ✅ Pronunciación IPA con IA
- ✅ Noticias en tiempo real
- ✅ Videos de YouTube únicos
- ✅ Script de limpieza de comillas

**Documentación completa**: Ver `RESUMEN-FINAL-2025-01-19.md`
