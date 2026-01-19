# Instrucciones: Pronunciación IA y Limpieza de Base de Datos

## 1. Sistema de Enlaces en Noticias ✅

El sistema de enlaces en noticias **ya funciona correctamente**:

- Cada noticia tiene un `id` único como ancla: `<article id={String(item.id)}>`
- Al compartir, se genera un enlace con hash: `${window.location.origin}/news#${item.id}`
- El navegador automáticamente hace scroll a la noticia cuando se accede con el hash
- Funciona tanto con `navigator.share()` como copiando al portapapeles

**No requiere cambios adicionales.**

---

## 2. Pronunciación IPA con IA 🆕

### Funcionalidad Implementada

Se ha agregado un sistema de generación de pronunciación IPA para palabras Bubi:

#### Características:
- **Botón "Generar pronunciación con IA"** aparece cuando una palabra no tiene IPA
- Al hacer clic, genera automáticamente la pronunciación usando reglas fonéticas del Bubi
- Se guarda en la base de datos para uso futuro
- Muestra un indicador de carga mientras genera
- Una vez generada, se muestra debajo de la palabra en formato: `/ipa/`

#### Reglas Fonéticas Implementadas:
El sistema usa reglas básicas de lenguas bantúes:
- Vocales puras: a, e, i, o, u
- Consonantes estándar con símbolos IPA apropiados
- Dígrafos especiales: ch → tʃ, ng → ŋ, ny → ɲ, sh → ʃ

#### Archivos Modificados:
- `src/app/dictionary/dictionary-view-modern.tsx` - Componente con botón de generación
- `src/app/api/ai/pronunciation/generate/route.ts` - Endpoint para generar IPA

### Cómo Usar:
1. Navega al diccionario
2. Busca una palabra sin pronunciación
3. Haz clic en "Generar pronunciación con IA"
4. La pronunciación se genera y guarda automáticamente
5. Recarga la página para ver el IPA actualizado

---

## 3. Limpieza de Comillas Simples en Base de Datos 🧹

### Script SQL Creado

Se ha creado el archivo `db/clean-quotes.sql` con comandos para limpiar palabras que empiezan con comillas simples.

### Pasos para Ejecutar:

1. **Abrir Supabase Dashboard**
   - Ve a tu proyecto en Supabase
   - Navega a "SQL Editor"

2. **Copiar y Ejecutar el Script**
   - Abre el archivo `db/clean-quotes.sql`
   - Copia todo el contenido
   - Pégalo en el SQL Editor de Supabase

3. **Ejecutar Paso a Paso** (Recomendado)
   
   **Paso 1: Ver palabras afectadas**
   ```sql
   SELECT id, bubi, spanish, created_at
   FROM dictionary_entries
   WHERE bubi LIKE '''%' OR spanish LIKE '''%'
   ORDER BY id;
   ```
   
   **Paso 2: Limpiar comillas al inicio de palabras Bubi**
   ```sql
   UPDATE dictionary_entries
   SET bubi = TRIM(LEADING '''' FROM bubi)
   WHERE bubi LIKE '''%';
   ```
   
   **Paso 3: Limpiar comillas al inicio de palabras en español**
   ```sql
   UPDATE dictionary_entries
   SET spanish = TRIM(LEADING '''' FROM spanish)
   WHERE spanish LIKE '''%';
   ```
   
   **Paso 4: Limpiar comillas en cualquier posición**
   ```sql
   UPDATE dictionary_entries
   SET bubi = TRIM(BOTH '''' FROM bubi)
   WHERE bubi LIKE '%''%';

   UPDATE dictionary_entries
   SET spanish = TRIM(BOTH '''' FROM spanish)
   WHERE spanish LIKE '%''%';
   ```
   
   **Paso 5: Verificar limpieza**
   ```sql
   SELECT COUNT(*) as palabras_con_comillas
   FROM dictionary_entries
   WHERE bubi LIKE '''%' OR spanish LIKE '''%';
   ```
   
   Debería devolver `0` si la limpieza fue exitosa.

4. **Verificar Resultados**
   ```sql
   SELECT id, bubi, spanish
   FROM dictionary_entries
   ORDER BY id
   LIMIT 20;
   ```

### ⚠️ Importante:
- **Hacer backup** antes de ejecutar comandos UPDATE
- Ejecutar primero el SELECT para ver qué se va a modificar
- Los cambios son permanentes, no se pueden deshacer fácilmente

---

## Resumen de Cambios

✅ **Sistema de enlaces en noticias** - Ya funciona correctamente
🆕 **Pronunciación IPA con IA** - Implementado y listo para usar
🧹 **Script de limpieza SQL** - Creado y documentado

### Próximos Pasos:
1. Ejecutar el script SQL en Supabase para limpiar comillas
2. Probar la generación de pronunciaciones en el diccionario
3. Verificar que todo funciona correctamente en producción
