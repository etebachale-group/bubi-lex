# 📚 Guía de Importación - Diccionario Español-Bubi

## 📋 Archivos Generados

Se han generado **2 archivos SQL** con las entradas del diccionario Español-Bubi:

1. `db/import-espanol-bubi-parte-1.sql` - 1200 entradas
2. `db/import-espanol-bubi-parte-2.sql` - 1030 entradas

**Total:** 2230 entradas

---

## 🚀 Proceso de Importación

### Paso 1: Preparar la Base de Datos

Si ya tienes el diccionario Bubi-Español importado, puedes importar directamente.

Si es una base de datos nueva, ejecuta primero:
```sql
-- Asegurarse de que la tabla existe
-- Ver: db/schema.sql
```

### Paso 2: Importar las Partes en Orden

Ejecuta los archivos en orden en Supabase SQL Editor:

1. **Parte 1:** `db/import-espanol-bubi-parte-1.sql`
2. **Parte 2:** `db/import-espanol-bubi-parte-2.sql`



**Tiempo estimado:** 1-2 minutos por archivo

### Paso 3: Verificar la Importación

Ejecuta el script de verificación:
```bash
db/verify-espanol-bubi-import.sql
```

**Resultados esperados:**
- Total de entradas: 2230
- Con ejemplos: 714
- Con variantes: 307

---

## 📊 Estructura de Datos

Cada entrada tiene los siguientes campos:

```sql
INSERT INTO dictionary_entries (
  bubi,           -- Palabra en Bubi
  word_type,      -- Tipo gramatical (s., v., adj., adv.)
  gender,         -- Género (m., f., NULL)
  number,         -- Número (sing., pl., NULL)
  nominal_class,  -- Clase nominal (Cl. 1-16, NULL)
  spanish,        -- Definición en español (limpia)
  examples,       -- Ejemplos de uso (separados por |)
  variants,       -- Variantes (separadas por ,)
  notes,          -- Nota con palabra en español original
  created_by      -- 'import-espanol-bubi'
)
```

---

## 🔍 Mejoras Aplicadas

### 1. Normalización de Tipos Gramaticales
- ✅ Todos en minúsculas (s., v., adj., adv.)
- ✅ Consistente con diccionario Bubi-Español

### 2. Extracción de Ejemplos
- ✅ Ejemplos separados del campo `spanish`
- ✅ Hasta 3 ejemplos por entrada
- ✅ Formato: "ejemplo1 | ejemplo2 | ejemplo3"

### 3. Extracción de Variantes
- ✅ Variantes separadas del campo `spanish`
- ✅ Formato: "variante1, variante2"

### 4. Limpieza de Definiciones
- ✅ Conjugaciones removidas
- ✅ Pronunciación entre corchetes removida
- ✅ Clases nominales en campo separado
- ✅ Definición limitada a 500 caracteres

### 5. Campo Notes
- ✅ Incluye palabra en español original
- ✅ Formato: "Español: palabra"
- ✅ Facilita búsqueda bidireccional

---

## 📈 Estadísticas

| Métrica | Cantidad | Porcentaje |
|---------|----------|------------|
| Total de entradas | 2230 | 100% |
| Con ejemplos | 714 | 32.0% |
| Con variantes | 307 | 13.8% |
| Con número | 9 | 0.4% |
| Con clase nominal | 1684 | 75.5% |

---

## 🎯 Comparación con Bubi-Español

| Aspecto | Bubi-Español | Español-Bubi |
|---------|--------------|--------------|
| Total de entradas | 5,446 | 2230 |
| Con ejemplos | ~600 (11%) | 714 (32.0%) |
| Con variantes | ~800 (15%) | 307 (13.8%) |
| Calidad | Alta | Alta (mejorada) |

---

## ✅ Checklist de Importación

- [ ] Ejecutar `import-espanol-bubi-parte-1.sql`
- [ ] Ejecutar `import-espanol-bubi-parte-2.sql`


- [ ] Ejecutar `verify-espanol-bubi-import.sql`
- [ ] Verificar total: 2230 entradas
- [ ] Probar búsqueda en la aplicación
- [ ] Verificar que no hay duplicados problemáticos

---

## 🔄 Búsqueda Bidireccional

Con ambos diccionarios importados, la aplicación tendrá:

- ✅ **Bubi → Español:** 5,446 entradas
- ✅ **Español → Bubi:** 2230 entradas
- ✅ **Total combinado:** ~7676 entradas
- ✅ **Búsqueda en ambas direcciones**

---

**Fecha de generación:** 2026-01-21  
**Script utilizado:** `scripts/generate-sql-espanol-bubi-mejorado.js`  
**Estado:** ✅ Listo para importar  
**Versión:** 2.0 (Mejorada)
