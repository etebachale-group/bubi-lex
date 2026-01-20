# 📁 Carpeta db/ - Base de Datos

Scripts SQL y documentación para el proyecto Bubi-Lex.

---

## 📂 Estructura

```
db/
├── 📄 Scripts SQL (importación y schemas)
├── 📁 docs/ (documentación)
└── 📄 README.md (este archivo)
```

---

## ✅ Scripts de Importación del Diccionario

**⚠️ EJECUTAR EN ESTE ORDEN:**

### 1. **ELIMINAR-CONSTRAINT-FORZADO.sql** ⭐
- Elimina constraints únicos problemáticos
- Limpia la tabla `dictionary_entries`
- **EJECUTAR PRIMERO SIEMPRE**

### 2-5. Importar en 4 Partes

- **import-diccionario-entries-parte-1.sql** (bloques 1-55)
- **import-diccionario-entries-parte-2.sql** (bloques 56-110)
- **import-diccionario-entries-parte-3.sql** (bloques 111-165)
- **import-diccionario-entries-parte-4.sql** (bloques 166-218)

**Total:** 5,446 entradas profesionales  
**Tiempo:** 2-4 minutos

---

## 🗄️ Schemas de Base de Datos

- **schema.sql** - Schema principal
- **add-comments-system.sql** - Sistema de comentarios
- **add-grammar-system.sql** - Sistema de gramática
- **add-stories-system.sql** - Sistema de historias
- **audit-schema.sql** - Sistema de auditoría
- **verify-stories-table.sql** - Verificación

---

## 📖 Documentación

### Guía Principal

**`GUIA-COMPLETA-IMPORTACION.md`** ⭐⭐⭐

Guía unificada que incluye:
- Inicio rápido
- Proceso paso a paso
- Solución de problemas
- Verificaciones
- Preguntas frecuentes

### Documentación Adicional

En `docs/`:
- **GUIA-TABLAS-DICCIONARIO.md** - Explicación de tablas

---

## 🚀 Inicio Rápido

```bash
# 1. Leer la guía
db/GUIA-COMPLETA-IMPORTACION.md

# 2. Ejecutar en Supabase SQL Editor (en orden):
db/ELIMINAR-CONSTRAINT-FORZADO.sql
db/import-diccionario-entries-parte-1.sql
db/import-diccionario-entries-parte-2.sql
db/import-diccionario-entries-parte-3.sql
db/import-diccionario-entries-parte-4.sql
```

---

## 🔍 Verificación

```sql
-- Ver total
SELECT COUNT(*) FROM dictionary_entries;
-- Esperado: 5446

-- Ver distribución
SELECT word_type, COUNT(*) as total
FROM dictionary_entries
GROUP BY word_type
ORDER BY total DESC;
```

---

## 📞 Ayuda

- **Guía completa:** `GUIA-COMPLETA-IMPORTACION.md`
- **Problemas con tablas:** `docs/GUIA-TABLAS-DICCIONARIO.md`

---

**Última actualización:** 20 de enero de 2026  
**Estado:** ✅ Simplificado y listo para usar
