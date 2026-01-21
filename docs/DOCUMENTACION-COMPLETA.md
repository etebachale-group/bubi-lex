# 📚 Documentación Completa - BubiLex

**Proyecto:** BubiLex - Diccionario Digital Bubi  
**Última actualización:** 22 de Enero 2026  
**Versión:** 6.0

---

## 📋 Índice

1. [Resumen del Proyecto](#resumen-del-proyecto)
2. [Estructura de la Base de Datos](#estructura-de-la-base-de-datos)
3. [Diccionarios Implementados](#diccionarios-implementados)
4. [Guías de Importación](#guías-de-importación)
5. [Gestión de Datos](#gestión-de-datos)
6. [Funcionalidades del Sistema](#funcionalidades-del-sistema)
7. [Scripts Disponibles](#scripts-disponibles)
8. [Próximos Pasos](#próximos-pasos)

---

## 1. Resumen del Proyecto

### 🎯 Objetivo
BubiLex es una plataforma digital para preservar y promover el idioma Bubi de Guinea Ecuatorial, ofreciendo:
- Diccionario bidireccional (Bubi ↔ Español)
- Sistema de aprendizaje con IA
- Gramática interactiva
- Historias y noticias en Bubi
- Sistema de colaboración

### 📊 Estadísticas Actuales
- **Diccionario Bubi-Español:** 5,446 entradas
- **Diccionario Español-Bubi:** 2,230 entradas
- **Total:** 7,676 entradas únicas
- **Usuarios:** Sistema de roles (Admin, Colaborador, Usuario)

---

## 2. Estructura de la Base de Datos

### Tabla Principal: `dictionary_entries`

```sql
CREATE TABLE dictionary_entries (
  id BIGSERIAL PRIMARY KEY,
  
  -- Palabra en Bubi
  bubi TEXT NOT NULL,
  
  -- Información Gramatical
  word_type TEXT,              -- s., v., adj., adv., prep., conj., interj., pron.
  gender TEXT,                 -- m., f., m/f.
  number TEXT,                 -- sing., pl.
  nominal_class TEXT,          -- Cl. 1-16
  plural_form TEXT,
  
  -- Traducción y Detalles
  spanish TEXT NOT NULL,
  ipa TEXT,                    -- Pronunciación IPA
  examples TEXT,               -- Ejemplos separados por " | "
  variants TEXT,               -- Variantes separadas por ", "
  notes TEXT,
  
  -- Metadatos
  created_at TIMESTAMPTZ DEFAULT NOW(),
  created_by TEXT,             -- 'import-script', 'import-espanol-bubi', email
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  updated_by TEXT
);
```

### Índices
```sql
CREATE INDEX idx_dictionary_bubi ON dictionary_entries(bubi);
CREATE INDEX idx_dictionary_spanish ON dictionary_entries(spanish);
CREATE INDEX idx_dictionary_word_type ON dictionary_entries(word_type);
CREATE INDEX idx_dictionary_created_by ON dictionary_entries(created_by);
```

### Búsqueda Full-Text
```sql
CREATE INDEX idx_dictionary_fts ON dictionary_entries 
USING GIN (to_tsvector('spanish', bubi || ' ' || spanish || ' ' || COALESCE(notes, '')));
```

---

## 3. Diccionarios Implementados

### 3.1 Diccionario Bubi-Español

**Origen:** Diccionario Bubi Completo  
**Entradas:** 5,446  
**Identificador:** `created_by = 'import-script'`

**Características:**
- Vocabulario completo del idioma Bubi
- 76.5% sustantivos, 10.6% antropónimos
- Incluye clases nominales (sistema Bantú)
- Pronunciación IPA
- Ejemplos de uso
- Notas culturales

**Distribución por Tipo:**
- Sustantivos: 76.5%
- Antropónimos: 10.6%
- Adjetivos: 5.2%
- Verbos: 1.0%
- Otros: 6.7%

### 3.2 Diccionario Español-Bubi

**Origen:** Diccionario Español-Bubi  
**Entradas:** 2,230  
**Identificador:** `created_by = 'import-espanol-bubi'`

**Características:**
- Enfocado en uso práctico
- Definiciones limpias en español
- 32% incluye ejemplos de uso
- 18% incluye variantes
- Búsqueda bidireccional

**Distribución por Tipo:**
- Sustantivos: 70.8%
- Verbos: 19.6%
- Adjetivos: 7.3%
- Adverbios: 2.2%

**Campos Especiales:**
- `spanish`: Solo la palabra en español (limpia)
- `examples`: Frases de ejemplo en Bubi
- `variants`: Palabras alternativas en Bubi
- `notes`: "Español: palabra" para búsqueda

---

## 4. Guías de Importación

### 4.1 Importar Diccionario Bubi-Español

**Archivos:** 4 partes (5,446 entradas)

```bash
# Ejecutar en Supabase SQL Editor en orden:
1. db/import-diccionario-entries-parte-1.sql  # 1,500 entradas
2. db/import-diccionario-entries-parte-2.sql  # 1,500 entradas
3. db/import-diccionario-entries-parte-3.sql  # 1,500 entradas
4. db/import-diccionario-entries-parte-4.sql  # 946 entradas
```

**Tiempo estimado:** 4-6 minutos total

### 4.2 Importar Diccionario Español-Bubi

**Archivos:** 2 partes (2,230 entradas)

```bash
# Ejecutar en Supabase SQL Editor en orden:
1. db/import-espanol-bubi-parte-1.sql  # 1,200 entradas
2. db/import-espanol-bubi-parte-2.sql  # 1,030 entradas
```

**Tiempo estimado:** 2-3 minutos total

### 4.3 Verificación Post-Importación

```sql
-- Verificar totales
SELECT 
  created_by,
  COUNT(*) as total,
  MIN(created_at) as primera,
  MAX(created_at) as ultima
FROM dictionary_entries
GROUP BY created_by;

-- Resultado esperado:
-- import-script: 5,446
-- import-espanol-bubi: 2,230
```

---

## 5. Gestión de Datos

### 5.1 Hacer Backup

**Antes de cualquier operación destructiva:**

```sql
-- Ejecutar: db/backup-antes-eliminar.sql
-- Guardar el resultado JSON en un archivo seguro
```

### 5.2 Eliminar Datos

**Opciones disponibles:**

1. **Eliminar TODO** (⚠️ PELIGROSO)
   ```sql
   -- Archivo: db/eliminar-todas-palabras.sql
   -- Elimina: Bubi-Español + Español-Bubi + Colaboradores
   ```

2. **Eliminar solo Bubi-Español**
   ```sql
   -- Archivo: db/eliminar-bubi-espanol.sql
   -- Elimina: Solo created_by = 'import-script'
   -- Mantiene: Español-Bubi y colaboradores
   ```

3. **Eliminar solo Español-Bubi**
   ```sql
   -- Archivo: db/eliminar-espanol-bubi.sql
   -- Elimina: Solo created_by = 'import-espanol-bubi'
   -- Mantiene: Bubi-Español y colaboradores
   ```

**⚠️ IMPORTANTE:** Todos los scripts incluyen:
- Verificación antes de eliminar
- Transacciones (BEGIN...COMMIT/ROLLBACK)
- Comentados por defecto (debes descomentar)
- Verificación después de eliminar

### 5.3 Guía de Eliminación Segura

Ver: `db/GUIA-ELIMINACION-SEGURA.md`

**Checklist:**
- [ ] Hacer backup
- [ ] Verificar qué se eliminará
- [ ] Informar al equipo
- [ ] Tener archivos SQL para reimportar
- [ ] Usar transacciones
- [ ] Verificar resultado antes de COMMIT

---

## 6. Funcionalidades del Sistema

### 6.1 Búsqueda Bidireccional

**Bubi → Español:**
- Busca en: `bubi` + `variants`
- Ejemplo: "onno" o "oke" encuentran la misma palabra

**Español → Bubi:**
- Busca en: `spanish` + `notes`
- Ejemplo: "abajo" encuentra "onno"

### 6.2 Visualización de Entradas

**Información mostrada:**
- Palabra en Bubi (con badges de tipo, género, clase)
- Pronunciación IPA (con opción de generar con IA)
- Variantes (si existen)
- Forma plural (si existe)
- Definición en español (limpia)
- Ejemplos de uso (separados visualmente)
- Notas culturales
- Origen del diccionario

### 6.3 Sistema de Roles

**Admin:**
- Acceso completo
- Gestión de diccionario
- Gestión de usuarios
- Auditoría

**Colaborador:**
- Agregar palabras
- Editar sus palabras
- Ver estadísticas

**Usuario:**
- Búsqueda
- Visualización
- Sistema de aprendizaje

### 6.4 Funcionalidades con IA

- Generación de pronunciación IPA
- Ejemplos de uso contextuales
- Etimología de palabras
- Sistema de quiz interactivo
- Sesiones de aprendizaje personalizadas

---

## 7. Scripts Disponibles

### 7.1 Scripts de Procesamiento

**Diccionario Bubi-Español:**
```bash
# Ya procesado - archivos SQL listos
# No requiere reprocesamiento
```

**Diccionario Español-Bubi:**
```bash
# 1. Extraer palabras del TXT original
node scripts/parse-espanol-bubi-final.js

# 2. Limpiar definiciones en español
node scripts/limpiar-definiciones-espanol.js

# 3. Generar archivos SQL
node scripts/generate-sql-espanol-bubi-mejorado.js
```

### 7.2 Scripts de Verificación

```bash
# Verificar conexión a Supabase
node scripts/verify-supabase-connection.js

# Verificar funcionalidad admin
node scripts/verify-admin-functionality.js

# Verificar mejoras
node scripts/verify-improvements.js
```

### 7.3 Scripts de Base de Datos

```sql
-- Aplicar schema completo
-- Archivo: db/schema.sql

-- Agregar sistema de comentarios
-- Archivo: db/add-comments-system.sql

-- Agregar sistema de historias
-- Archivo: db/add-stories-system.sql

-- Agregar sistema de gramática
-- Archivo: db/add-grammar-system.sql

-- Agregar auditoría
-- Archivo: db/audit-schema.sql
```

---

## 8. Próximos Pasos

### Corto Plazo (1-2 semanas)
- [ ] Importar diccionario Español-Bubi a producción
- [ ] Probar búsqueda bidireccional con usuarios
- [ ] Ajustar estilos según feedback
- [ ] Agregar más ejemplos de uso

### Mediano Plazo (1-2 meses)
- [ ] Filtros por tipo gramatical
- [ ] Filtros por clase nominal
- [ ] Sistema de favoritos por usuario
- [ ] Mejora de búsqueda con sinónimos
- [ ] Audio de pronunciación real

### Largo Plazo (3-6 meses)
- [ ] Sistema de contribuciones de usuarios
- [ ] Integración completa con sistema de aprendizaje
- [ ] API pública del diccionario
- [ ] Aplicación móvil
- [ ] Modo offline

---

## 📞 Soporte y Contacto

**Documentación adicional:**
- `db/GUIA-ELIMINACION-SEGURA.md` - Gestión de datos
- `db/GUIA-IMPORTACION-ESPANOL-BUBI.md` - Importación Español-Bubi
- `db/docs/GUIA-TABLAS-DICCIONARIO.md` - Estructura detallada

**Archivos de configuración:**
- `.env.example` - Variables de entorno
- `package.json` - Dependencias del proyecto
- `tsconfig.json` - Configuración TypeScript

---

## 📊 Resumen de Cambios Recientes

### 22 de Enero 2026
- ✅ Actualizada página del diccionario con todos los campos
- ✅ Implementada búsqueda bidireccional (Bubi ↔ Español)
- ✅ Limpiadas definiciones en español (solo palabra, sin texto en Bubi)
- ✅ Mejorada visualización con badges y secciones separadas
- ✅ Agregado origen del diccionario en cada entrada

### 21 de Enero 2026
- ✅ Corregido espaciado en abreviaturas (Cl., pl., adj., etc.)
- ✅ Procesado diccionario Español-Bubi (2,230 entradas)
- ✅ Creados scripts de eliminación segura
- ✅ Implementado sistema de backup

### 20 de Enero 2026
- ✅ Importado diccionario Bubi-Español (5,446 entradas)
- ✅ Implementado sistema de tiempo real
- ✅ Mejorada UI del diccionario
- ✅ Agregado sistema de auditoría

---

**Versión del documento:** 6.0  
**Fecha:** 22 de Enero 2026  
**Estado:** ✅ Actualizado y Completo
