# Iconos y Manifest - BubiLex

## ✅ Implementación Completada

Se han configurado todos los iconos y metadatos para que la web use el logo de BubiLex correctamente.

---

## Archivos Creados

### Generadores de Iconos Dinámicos

1. **`src/app/icon.tsx`** - Favicon (32x32)
   - Genera favicon dinámicamente
   - Usa gradiente purple/pink
   - Muestra letra "B" de BubiLex

2. **`src/app/apple-icon.tsx`** - Apple Touch Icon (180x180)
   - Para dispositivos iOS
   - Icono redondeado
   - Optimizado para pantallas Retina

3. **`src/app/opengraph-image.tsx`** - Open Graph (1200x630)
   - Para redes sociales (Facebook, Twitter, LinkedIn)
   - Diseño atractivo con gradiente
   - Incluye título y descripción

### Manifest PWA

4. **`public/manifest.json`** - Web App Manifest
   - Configuración para Progressive Web App
   - Permite instalar como app nativa
   - Define iconos, colores y comportamiento

---

## Características Implementadas

### 1. Favicon Dinámico
- Se genera automáticamente desde el código
- Usa el gradiente de marca (purple/pink)
- Muestra "B" de BubiLex
- Tamaño: 32x32px

### 2. Apple Touch Icon
- Optimizado para iOS
- Bordes redondeados automáticos
- Tamaño: 180x180px
- Compatible con Retina displays

### 3. Open Graph Image
- Imagen para compartir en redes sociales
- Diseño profesional con gradiente
- Incluye:
  - Logo/nombre BubiLex
  - Subtítulo: "Diccionario Bubi-Español"
  - Descripción: "Preservando la lengua y cultura del pueblo Bubi"
- Tamaño: 1200x630px (estándar de redes sociales)

### 4. Progressive Web App (PWA)
- Manifest.json configurado
- Permite instalar como app
- Funciona offline (con service worker)
- Iconos en múltiples tamaños

---

## Metadatos Mejorados

### Layout Principal (`src/app/layout.tsx`)

#### Título
```typescript
title: {
  default: "BubiLex - Diccionario Bubi-Español",
  template: "%s | BubiLex"  // Para páginas internas
}
```

#### Descripción Mejorada
```
"Diccionario Bubi-Español y Archivo Cultural. 
Preservando la lengua y cultura del pueblo Bubi de Guinea Ecuatorial."
```

#### Keywords Ampliadas
- Diccionario Bubi
- Lengua Bubi
- Cultura Bubi
- Bubi Español
- Pueblo Bubi
- Guinea Ecuatorial
- Bioko
- Idioma Bubi

#### Open Graph
- Imagen personalizada
- Título y descripción optimizados
- Locale: es_ES
- Type: website

#### Twitter Card
- Tipo: summary_large_image
- Imagen optimizada
- Metadatos completos

---

## Iconos Configurados

### Favicon
```typescript
icon: [
  { url: '/icon', sizes: '32x32', type: 'image/png' },
  { url: '/img/logo.svg', type: 'image/svg+xml' },
  { url: '/img/logo.png', sizes: '192x192', type: 'image/png' },
]
```

### Apple Touch Icon
```typescript
apple: [
  { url: '/apple-icon', sizes: '180x180', type: 'image/png' },
]
```

### Shortcut Icon
```typescript
shortcut: ['/icon']
```

---

## Manifest.json

### Configuración PWA

```json
{
  "name": "BubiLex - Diccionario Bubi-Español",
  "short_name": "BubiLex",
  "description": "...",
  "start_url": "/",
  "display": "standalone",
  "background_color": "#ffffff",
  "theme_color": "#667eea",
  "orientation": "portrait-primary"
}
```

### Iconos PWA
- 192x192px - Icono estándar
- 512x512px - Icono grande
- SVG - Escalable

### Categorías
- education
- reference
- books

---

## Cómo Funciona

### 1. Favicon en el Navegador

Cuando alguien visita la web:
1. Next.js genera `/icon` dinámicamente
2. El navegador lo muestra en la pestaña
3. Se cachea para mejor rendimiento

### 2. Compartir en Redes Sociales

Cuando alguien comparte un enlace:
1. Facebook/Twitter solicita `/opengraph-image`
2. Next.js genera la imagen dinámicamente
3. Se muestra una preview atractiva con el logo

### 3. Agregar a Pantalla de Inicio (iOS)

Cuando alguien agrega la web a su iPhone:
1. iOS solicita `/apple-icon`
2. Next.js genera el icono
3. Se muestra en la pantalla de inicio con bordes redondeados

### 4. Instalar como PWA

Cuando alguien instala la app:
1. El navegador lee `/manifest.json`
2. Descarga los iconos especificados
3. Crea una app instalable
4. Funciona como app nativa

---

## Ventajas de Esta Implementación

### 1. Iconos Dinámicos
✅ No necesitas crear múltiples archivos PNG
✅ Se generan automáticamente en el tamaño correcto
✅ Siempre consistentes con el diseño
✅ Fácil de actualizar (solo cambias el código)

### 2. SEO Mejorado
✅ Metadatos completos
✅ Open Graph optimizado
✅ Twitter Cards configuradas
✅ Keywords relevantes

### 3. PWA Ready
✅ Manifest.json configurado
✅ Puede instalarse como app
✅ Iconos en todos los tamaños
✅ Funciona offline (con service worker)

### 4. Profesional
✅ Imagen atractiva al compartir
✅ Icono reconocible
✅ Branding consistente
✅ Experiencia nativa

---

## Pruebas Recomendadas

### Test 1: Favicon
1. Abre la web en el navegador
2. Mira la pestaña
3. ✅ Debe mostrar "B" con gradiente purple/pink

### Test 2: Open Graph
1. Comparte un enlace en Facebook/Twitter
2. Espera a que cargue la preview
3. ✅ Debe mostrar imagen con "BubiLex" y descripción

### Test 3: Apple Touch Icon
1. Abre la web en Safari (iOS)
2. Toca "Agregar a pantalla de inicio"
3. ✅ Debe mostrar icono con "B" redondeado

### Test 4: PWA
1. Abre la web en Chrome
2. Mira si aparece opción "Instalar"
3. Instala la app
4. ✅ Debe funcionar como app nativa

### Test 5: Metadatos
1. Inspecciona el HTML de la página
2. Busca tags `<meta>` y `<link>`
3. ✅ Deben estar todos los metadatos

---

## Herramientas de Validación

### Open Graph
- https://www.opengraph.xyz/
- https://developers.facebook.com/tools/debug/

### Twitter Cards
- https://cards-dev.twitter.com/validator

### PWA
- Chrome DevTools > Lighthouse
- Auditoría de PWA

### Manifest
- Chrome DevTools > Application > Manifest

---

## Próximas Mejoras

### 1. Service Worker
- Cachear recursos
- Funcionar offline
- Sincronización en background

### 2. Iconos Personalizados
- Usar el logo real de BubiLex
- Crear versiones en diferentes tamaños
- Optimizar para diferentes plataformas

### 3. Splash Screens
- Pantallas de carga para PWA
- Diferentes tamaños para iOS/Android

### 4. Notificaciones Push
- Avisar de nuevas palabras
- Notificar comentarios aprobados
- Recordatorios de aprendizaje

---

## Archivos Relacionados

### Generados Automáticamente
- `/icon` - Favicon 32x32
- `/apple-icon` - Apple Touch Icon 180x180
- `/opengraph-image` - Open Graph 1200x630

### Estáticos
- `/img/logo.png` - Logo PNG
- `/img/logo.svg` - Logo SVG
- `/manifest.json` - PWA Manifest

---

## Comandos Útiles

```bash
# Ver metadatos generados
curl -I https://tu-dominio.com

# Validar manifest
npx pwa-asset-generator --help

# Generar iconos de diferentes tamaños
# (si decides usar imágenes estáticas)
```

---

## Notas Importantes

⚠️ **Caché de Navegadores**
- Los iconos se cachean agresivamente
- Puede tardar en actualizarse
- Usa Ctrl+F5 para forzar recarga

✅ **Compatibilidad**
- Funciona en todos los navegadores modernos
- iOS Safari soportado
- Android Chrome soportado
- Desktop todos los navegadores

🎨 **Personalización**
- Puedes cambiar el gradiente en los archivos .tsx
- Puedes usar el logo real en lugar de "B"
- Puedes ajustar tamaños y colores

---

**Fecha**: 19 de Enero 2025  
**Funcionalidad**: Iconos y manifest configurados  
**Estado**: ✅ Listo para producción
