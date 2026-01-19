# Corrección: Edición de Palabras del Diccionario

## ❌ Problema Identificado

Los administradores no podían editar palabras ya agregadas al diccionario.

### Causa del Problema

La API estaba verificando solo el permiso `canEditDictionary` pero no incluía a los administradores:

```typescript
// ❌ ANTES - Solo usuarios con canEditDictionary
if (!session?.canEditDictionary) {
  return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
}
```

**Problema:**
- Los admins tienen `isAdmin: true`
- Pero no necesariamente tienen `canEditDictionary: true`
- La verificación rechazaba a los admins
- No se podían editar palabras existentes

### Endpoints Afectados

1. `PUT /api/dictionary/[id]` - Actualizar palabra → ❌ Fallaba para admins
2. `POST /api/dictionary` - Crear palabra → ❌ Fallaba para admins
3. `POST /api/dictionary/bulk` - Importar palabras → ❌ Fallaba para admins

---

## ✅ Solución Implementada

### Nueva Verificación de Permisos

```typescript
// ✅ DESPUÉS - Admins O usuarios con canEditDictionary
if (!session?.canEditDictionary && !session?.isAdmin) {
  return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
}
```

**Mejoras:**
- ✅ Admins pueden editar (tienen `isAdmin: true`)
- ✅ Colaboradores pueden editar (tienen `canEditDictionary: true`)
- ✅ Usuarios sin permisos son rechazados
- ✅ Lógica clara y explícita

---

## Archivos Modificados

### 1. `src/app/api/dictionary/[id]/route.ts` (PUT - Actualizar)
- Actualizado verificación de permisos
- Ahora acepta admins O colaboradores

### 2. `src/app/api/dictionary/route.ts` (POST - Crear)
- Actualizado verificación de permisos
- Ahora acepta admins O colaboradores

### 3. `src/app/api/dictionary/bulk/route.ts` (POST - Importar)
- Actualizado verificación de permisos
- Ahora acepta admins O colaboradores

---

## Permisos del Sistema

### Roles y Permisos

| Rol | isAdmin | canEditDictionary | Puede Editar Diccionario |
|-----|---------|-------------------|--------------------------|
| Admin | ✅ true | ❓ puede ser false | ✅ SÍ (ahora) |
| Colaborador | ❌ false | ✅ true | ✅ SÍ |
| Usuario | ❌ false | ❌ false | ❌ NO |

### Operaciones por Rol

| Operación | Admin | Colaborador | Usuario |
|-----------|-------|-------------|---------|
| Ver diccionario | ✅ | ✅ | ✅ |
| Crear palabra | ✅ | ✅ | ❌ |
| Editar palabra | ✅ | ✅ | ❌ |
| Eliminar palabra | ✅ | ❌ | ❌ |
| Importar palabras | ✅ | ✅ | ❌ |
| Ver duplicados | ✅ | ❌ | ❌ |

---

## Cómo Funciona Ahora

### Caso 1: Admin edita palabra
```typescript
// Usuario: Admin
session = {
  isAdmin: true,
  canEditDictionary: false  // No tiene este permiso específico
}

// Verificación:
if (!false && !true) {  // !canEditDictionary && !isAdmin
  // NO entra aquí
}

// ✅ Permitido - Admin puede editar
```

### Caso 2: Colaborador edita palabra
```typescript
// Usuario: Colaborador
session = {
  isAdmin: false,
  canEditDictionary: true
}

// Verificación:
if (!true && !false) {  // !canEditDictionary && !isAdmin
  // NO entra aquí
}

// ✅ Permitido - Colaborador puede editar
```

### Caso 3: Usuario normal intenta editar
```typescript
// Usuario: Normal
session = {
  isAdmin: false,
  canEditDictionary: false
}

// Verificación:
if (!false && !false) {  // !canEditDictionary && !isAdmin
  return 401;  // ✅ Entra aquí
}

// ❌ Rechazado - Usuario normal no puede editar
```

---

## Pruebas Recomendadas

### Test 1: Admin edita palabra existente
1. Inicia sesión como admin
2. Ve a `/admin/dictionary`
3. Haz clic en "Editar" en cualquier palabra
4. Cambia la traducción
5. Guarda
6. ✅ Debe guardar correctamente

### Test 2: Admin crea nueva palabra
1. Inicia sesión como admin
2. Ve a `/admin/dictionary`
3. Haz clic en "Añadir"
4. Llena los campos
5. Guarda
6. ✅ Debe crear correctamente

### Test 3: Colaborador edita palabra
1. Inicia sesión como colaborador
2. Ve a `/collaborator/dictionary/my-words`
3. Edita una de tus palabras
4. Guarda
5. ✅ Debe guardar correctamente

### Test 4: Usuario sin permisos intenta editar
1. Intenta acceder a `/admin/dictionary` sin login
2. ✅ Debe redirigir a login
3. Intenta hacer PUT a `/api/dictionary/123` sin auth
4. ✅ Debe devolver 401

---

## Lógica de Autorización

### Operador Lógico

```typescript
// Rechazar si:
// - NO tiene canEditDictionary Y NO es admin
if (!session?.canEditDictionary && !session?.isAdmin) {
  return 401;
}

// Permitir si:
// - Tiene canEditDictionary O es admin
// (cualquiera de los dos es suficiente)
```

### Tabla de Verdad

| canEditDictionary | isAdmin | !canEditDictionary | !isAdmin | Resultado | Permitido |
|-------------------|---------|-------------------|----------|-----------|-----------|
| true | true | false | false | false | ✅ SÍ |
| true | false | false | true | false | ✅ SÍ |
| false | true | true | false | false | ✅ SÍ |
| false | false | true | true | true | ❌ NO |

---

## Beneficios de la Corrección

1. ✅ **Admins pueden editar**: Funcionalidad completa para administradores
2. ✅ **Colaboradores mantienen acceso**: No se afecta su funcionalidad
3. ✅ **Seguridad mantenida**: Usuarios sin permisos siguen bloqueados
4. ✅ **Lógica clara**: Fácil de entender y mantener
5. ✅ **Consistente**: Misma lógica en todos los endpoints

---

## Endpoints Corregidos

### Crear Palabra
```
POST /api/dictionary
Permisos: Admin O Colaborador
```

### Actualizar Palabra
```
PUT /api/dictionary/[id]
Permisos: Admin O Colaborador
```

### Eliminar Palabra
```
DELETE /api/dictionary/[id]
Permisos: Solo Admin
```

### Importar Palabras
```
POST /api/dictionary/bulk
Permisos: Admin O Colaborador
```

---

## Notas de Seguridad

- ✅ La eliminación sigue siendo solo para admins
- ✅ Los usuarios sin login no pueden acceder
- ✅ Los colaboradores solo ven sus propias palabras en su panel
- ✅ Los admins ven todas las palabras
- ✅ La auditoría registra quién hace cada cambio

---

**Fecha**: 19 de Enero 2025  
**Problema**: Admins no podían editar palabras del diccionario  
**Solución**: Verificación de permisos incluye admins O colaboradores
