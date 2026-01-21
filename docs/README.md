# 📚 Documentación BubiLex

Bienvenido a la documentación del proyecto BubiLex - Diccionario Digital del Idioma Bubi.

---

## 📖 Documentos Principales

### 🌟 Estado Actual (LEER PRIMERO)
- **[ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md)** - Estado actual y funcionalidades implementadas

### � Documento Maestero
- **[DOCUMENTACION-COMPLETA.md](./DOCUMENTACION-COMPLETA.md)** - Documentación completa y unificada del proyecto

### 📊 Documentos de Referencia
- **[CAMBIOS-FINALES-22-ENE-2026.md](./CAMBIOS-FINALES-22-ENE-2026.md)** - Últimos cambios implementados
- **[ORGANIZACION-BASE-DATOS.md](./ORGANIZACION-BASE-DATOS.md)** - Estructura detallada de la base de datos
- **[DOCUMENTACION-PROYECTO.md](./DOCUMENTACION-PROYECTO.md)** - Documentación técnica del proyecto

### 📁 Recursos Adicionales
- **[diccionario-bubi-completo/](./diccionario-bubi-completo/)** - Diccionario Bubi completo en formato Markdown

---

## 🚀 Inicio Rápido

### Para Desarrolladores

1. **Configurar el proyecto:**
   ```bash
   npm install
   cp .env.example .env.local
   # Configurar variables de entorno (ver ACTUALIZACION-DICCIONARIO-22-ENE-2026.md)
   ```

2. **Importar datos:**
   - Ver: [DOCUMENTACION-COMPLETA.md - Guías de Importación](./DOCUMENTACION-COMPLETA.md#4-guías-de-importación)

3. **Ejecutar en desarrollo:**
   ```bash
   npm run dev
   ```

### Para Usuarios

1. **Conocer funcionalidades:**
   - Ver: [ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md)

2. **Usar el diccionario:**
   - Ir a: `/dictionary` (7,676 palabras disponibles)

3. **Traducir:**
   - Usar traductor en página principal (Español → Bubi)

4. **Aprender:**
   - Ir a: `/ai-features` (Sistema de aprendizaje con IA)

### Para Administradores

1. **Gestión de datos:**
   - Ver: `db/GUIA-ELIMINACION-SEGURA.md`
   - Ver: `db/GUIA-IMPORTACION-ESPANOL-BUBI.md`

2. **Backup y restauración:**
   - Ejecutar: `db/backup-antes-eliminar.sql`

3. **Panel de administración:**
   - Ir a: `/admin`

---

## 📂 Estructura de Documentación

```
docs/
├── ACTUALIZACION-DICCIONARIO-22-ENE-2026.md  # 🆕 Estado actual (LEER PRIMERO)
├── DOCUMENTACION-COMPLETA.md                 # � Documento maestro
├── CAMBIOS-FINALES-22-ENE-2026.md           # � Últimos cambios
├── README.md                                 # � Este archivo
├── ORGANIZACION-BASE-DATOS.md                # 🗄️ Estructura de BD
├── DOCUMENTACION-PROYECTO.md                 # 🔧 Documentación técnica
└── diccionario-bubi-completo/                # 📚 Diccionario completo
    ├── DiccionarioBubiCompleto.md
    └── README.md
```

---

## �️ Base de Datos

### Archivos SQL Principales

```
db/
├── schema.sql                                # 📋 Schema completo
├── import-diccionario-entries-parte-*.sql    # 📥 Importar Bubi-Español (4 partes)
├── import-espanol-bubi-parte-*.sql          # 📥 Importar Español-Bubi (2 partes)
├── backup-antes-eliminar.sql                 # 💾 Hacer backup
├── eliminar-*.sql                            # 🗑️ Scripts de eliminación
└── verify-*.sql                              # ✅ Scripts de verificación
```

### Guías de Base de Datos

- **Importación:** Ver [DOCUMENTACION-COMPLETA.md](./DOCUMENTACION-COMPLETA.md#4-guías-de-importación)
- **Eliminación segura:** Ver `db/GUIA-ELIMINACION-SEGURA.md`
- **Estructura:** Ver [ORGANIZACION-BASE-DATOS.md](./ORGANIZACION-BASE-DATOS.md)

---

## �️ Scripts Disponibles

### Procesamiento de Datos

```bash
# Diccionario Español-Bubi
node scripts/parse-espanol-bubi-final.js          # Extraer del TXT
node scripts/limpiar-definiciones-espanol.js      # Limpiar definiciones
node scripts/generate-sql-espanol-bubi-mejorado.js # Generar SQL
```

### Verificación

```bash
node scripts/verify-supabase-connection.js        # Verificar conexión
node scripts/verify-admin-functionality.js        # Verificar admin
node scripts/verify-improvements.js               # Verificar mejoras
```

---

## 📊 Estadísticas del Proyecto

### Diccionario
- **Diccionario Bubi-Español:** 5,446 entradas
- **Diccionario Español-Bubi:** 2,230 entradas
- **Total:** 7,676 entradas únicas
- **Última actualización:** 22 de Enero 2026

### Funcionalidades
- ✅ Búsqueda bidireccional (Bubi ↔ Español)
- ✅ Traductor Español → Bubi con IA
- ✅ Generación de ejemplos con IA
- ✅ Pronunciación IPA automática
- ✅ Sistema de aprendizaje interactivo
- ✅ Quiz personalizados
- ✅ Noticias y relatos comunitarios

### Proveedores de IA
- OpenAI GPT (opcional)
- Anthropic Claude (opcional)
- Groq (gratuito, recomendado)
- Together AI (gratuito)
- Ollama (local, gratuito)

---

## 🔗 Enlaces Útiles

### Documentación
- [Estado Actual](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md) ⭐
- [Documento Maestro](./DOCUMENTACION-COMPLETA.md)
- [Cambios Recientes](./CAMBIOS-FINALES-22-ENE-2026.md)
- [Estructura de BD](./ORGANIZACION-BASE-DATOS.md)
- [Guía de Eliminación](../db/GUIA-ELIMINACION-SEGURA.md)

### Base de Datos
- [Schema SQL](../db/schema.sql)
- [Importar Bubi-Español](../db/import-diccionario-entries-parte-1.sql)
- [Importar Español-Bubi](../db/import-espanol-bubi-parte-1.sql)

### Scripts
- [Procesamiento](../scripts/)
- [Verificación](../scripts/verify-supabase-connection.js)

---

## 📝 Notas Importantes

### ⚠️ Antes de Modificar Datos
1. **Siempre hacer backup:** `db/backup-antes-eliminar.sql`
2. **Leer la guía:** `db/GUIA-ELIMINACION-SEGURA.md`
3. **Usar transacciones:** BEGIN...COMMIT/ROLLBACK
4. **Verificar resultado:** Antes de hacer COMMIT

### ✅ Mejores Prácticas
- Leer [ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md) para conocer el estado actual
- Consultar [DOCUMENTACION-COMPLETA.md](./DOCUMENTACION-COMPLETA.md) para arquitectura completa
- Seguir las guías de importación al pie de la letra
- Hacer backup antes de cualquier operación destructiva
- Verificar los datos después de importar

### 🤖 Configuración de IA
- **Mínimo:** Ninguna API key (usa ejemplos básicos)
- **Recomendado:** Groq API key (gratuito, límites generosos)
- **Óptimo:** OpenAI o Anthropic (mejor calidad)
- **Local:** Ollama (100% gratuito, requiere instalación)

Ver configuración completa en [ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md#-configuración-requerida)

---

## 🆘 Soporte

Si tienes dudas o problemas:

1. **Consulta la documentación:**
   - [ACTUALIZACION-DICCIONARIO-22-ENE-2026.md](./ACTUALIZACION-DICCIONARIO-22-ENE-2026.md) - Estado actual
   - [DOCUMENTACION-COMPLETA.md](./DOCUMENTACION-COMPLETA.md) - Arquitectura completa
   - [ORGANIZACION-BASE-DATOS.md](./ORGANIZACION-BASE-DATOS.md) - Base de datos

2. **Revisa las guías:**
   - `db/GUIA-ELIMINACION-SEGURA.md`
   - `db/GUIA-IMPORTACION-ESPANOL-BUBI.md`

3. **Verifica los scripts:**
   - `scripts/verify-*.js`

---

## 📞 Contacto

- 📖 Leer documentación
- 🐛 Reportar issues en GitHub
- 💬 Contactar al equipo de desarrollo

---

**Última actualización:** 22 de Enero 2026  
**Versión:** 8.0  
**Estado:** ✅ Completado y Funcional

**Funcionalidades principales:**
- ✅ Diccionario completo (7,676 palabras)
- ✅ Búsqueda bidireccional
- ✅ Traductor Español → Bubi con IA
- ✅ Generación de ejemplos con IA
- ✅ Sistema de aprendizaje
- ✅ Pronunciación IPA
- ✅ Noticias y relatos
- ✅ Panel de administración
