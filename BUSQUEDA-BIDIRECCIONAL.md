# Búsqueda Bidireccional en Diccionario

## Cambios Implementados

### 1. Selector de Idioma de Búsqueda
- Agregado selector visual con dos botones: "Bubi → Español" y "Español → Bubi"
- Botón de intercambio rápido con icono de flechas que rota al hacer clic
- Estado visual claro del idioma activo

### 2. Búsqueda Inteligente
- **Modo Bubi**: Busca solo en la columna `bubi`
- **Modo Español**: Busca solo en la columna `spanish`
- Filtrado en tiempo real según el idioma seleccionado
- Placeholder dinámico que cambia según el idioma

### 3. Ordenamiento Alfabético
- Resultados ordenados alfabéticamente según el idioma de búsqueda
- Usa `localeCompare` con sensibilidad base para ordenamiento correcto en español
- Mantiene el orden incluso al filtrar

### 4. Sincronización con URL
- Parámetros `lang` y `q` en la URL
- Permite compartir búsquedas específicas
- Estado persistente al recargar la página

### 5. Mejoras de UX
- Indicador visual del idioma de búsqueda activo
- Contador de resultados actualizado
- Transición suave al cambiar de idioma
- Botón de limpiar búsqueda

## Archivos Modificados

### `src/app/dictionary/dictionary-view-modern.tsx`
- Agregado estado `searchLang` para controlar el idioma de búsqueda
- Implementado filtrado condicional según idioma
- Agregado ordenamiento alfabético
- Integración con router para actualizar URL
- Nuevo UI con selector de idioma

### `src/app/dictionary/page.tsx`
- Pasando `initialLang` y `initialSearch` al componente
- Soporte para parámetros de URL

## Uso

### URL Examples
```
/dictionary                          # Vista por defecto (Bubi → Español)
/dictionary?lang=es                  # Búsqueda Español → Bubi
/dictionary?q=casa&lang=es          # Buscar "casa" en español
/dictionary?q=bótó&lang=bubi        # Buscar "bótó" en bubi
```

### Funcionalidades
1. **Cambiar dirección de búsqueda**: Click en los botones o en el icono de flechas
2. **Buscar**: Escribir en el campo de búsqueda
3. **Limpiar**: Click en "Limpiar" o borrar el texto
4. **Compartir**: Copiar la URL con los parámetros de búsqueda

## Características Técnicas

- **Client Component**: Usa hooks de React para interactividad
- **URL State Management**: Sincronización bidireccional con URL
- **Ordenamiento**: Alfabético con soporte para caracteres especiales
- **Responsive**: Funciona en móvil y desktop
- **Accesibilidad**: Botones con títulos descriptivos

## Próximas Mejoras Posibles

1. Búsqueda full-text en servidor para mejor rendimiento con muchas palabras
2. Sugerencias de búsqueda (autocomplete)
3. Filtros adicionales (por categoría, notas, etc.)
4. Exportar resultados de búsqueda
5. Historial de búsquedas recientes
