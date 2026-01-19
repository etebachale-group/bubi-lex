# 🚀 Guía Rápida - Sistema de Relatos

## ⚡ Inicio Rápido

### 1️⃣ Ejecutar SQL (REQUERIDO)
```bash
# Abrir Supabase SQL Editor
# Copiar y ejecutar: db/add-stories-system.sql
```

### 2️⃣ Verificar Instalación
```sql
-- Verificar tabla stories
SELECT COUNT(*) FROM stories;

-- Verificar campos en news
SELECT is_approved, is_rejected FROM news LIMIT 1;
```

### 3️⃣ Probar Sistema

#### Como Usuario (Sin Login)
1. Ir a: `http://localhost:3000/stories`
2. Clic en "Compartir tu Relato"
3. Llenar formulario y enviar
4. ✅ Mensaje: "Será revisado por un administrador"

#### Como Admin
1. Ir a: `http://localhost:3000/admin`
2. Ver badge "X pendientes" en sección Relatos
3. Clic en "Relatos"
4. Aprobar o rechazar relatos

#### Como Lector
1. Ir a: `http://localhost:3000/stories`
2. Ver relatos aprobados
3. Dar "me gusta" ❤️
4. Leer relatos completos

---

## 📍 URLs Importantes

| Página | URL | Acceso |
|--------|-----|--------|
| Relatos Públicos | `/stories` | Todos |
| Enviar Relato | `/stories` (botón) | Todos |
| Moderar Relatos | `/admin/stories` | Solo Admin |
| Panel Admin | `/admin` | Solo Admin |
| Home (con destacados) | `/` | Todos |

---

## 🎯 Flujos Principales

### Enviar Relato
```
Usuario → /stories → "Compartir tu Relato" → Formulario → Enviar
→ Estado: PENDIENTE → Espera aprobación admin
```

### Aprobar Relato
```
Admin → /admin → "Relatos" → Ver pendientes → Leer relato
→ Clic "Aprobar" → Estado: APROBADO → Visible públicamente
```

### Rechazar Relato
```
Admin → /admin/stories → Ver pendientes → Leer relato
→ Clic "Rechazar" → Escribir razón → Confirmar
→ Estado: RECHAZADO → No visible públicamente
```

---

## 🔧 Archivos Clave

### Backend APIs
```
src/app/api/stories/route.ts              # GET, POST relatos
src/app/api/stories/[id]/route.ts         # GET, POST (like)
src/app/api/admin/stories/route.ts        # GET todos los relatos
src/app/api/admin/stories/[id]/approve/   # POST aprobar
src/app/api/admin/stories/[id]/reject/    # POST rechazar
```

### Frontend
```
src/app/stories/page.tsx                  # Página pública
src/app/stories/stories-view.tsx          # Componente principal
src/app/admin/stories/page.tsx            # Panel moderación
src/app/admin/stories/stories-moderation.tsx  # Componente admin
```

### Base de Datos
```
db/add-stories-system.sql                 # Script SQL completo
```

---

## 📊 Estados de Relatos

| Estado | is_approved | is_rejected | Visible |
|--------|-------------|-------------|---------|
| Pendiente | false | false | ❌ No |
| Aprobado | true | false | ✅ Sí |
| Rechazado | false | true | ❌ No |

---

## 🎨 Diseño

### Colores
- **Relatos Públicos**: Naranja → Rojo
- **Panel Admin**: Azul → Cyan
- **Pendientes**: Amarillo
- **Aprobados**: Verde
- **Rechazados**: Rojo

### Iconos
- 📖 BookText - Relatos
- ❤️ Heart - Me gusta
- 👁️ Eye - Vistas
- ✅ Check - Aprobar
- ❌ X - Rechazar

---

## 🔒 Permisos

| Acción | Usuario | Admin |
|--------|---------|-------|
| Ver relatos aprobados | ✅ | ✅ |
| Enviar relato | ✅ | ✅ |
| Ver pendientes | ❌ | ✅ |
| Aprobar/Rechazar | ❌ | ✅ |
| Ver rechazados | ❌ | ✅ |

---

## 🐛 Troubleshooting

### "Error al enviar relato"
- ✅ Verificar que el script SQL se ejecutó
- ✅ Verificar conexión a Supabase
- ✅ Revisar console del navegador

### "No autorizado" en /admin/stories
- ✅ Verificar que estás logueado como admin
- ✅ Revisar `session.isAdmin` en consola

### Relatos no aparecen
- ✅ Verificar que están aprobados: `is_approved = true`
- ✅ Verificar que no están rechazados: `is_rejected = false`
- ✅ Refrescar página

---

## 📈 Estadísticas

### En Panel Admin
```typescript
// Pendientes
stories.filter(s => !s.is_approved && !s.is_rejected)

// Aprobados
stories.filter(s => s.is_approved)

// Rechazados
stories.filter(s => s.is_rejected)
```

### En Home
```typescript
// Destacados (más vistos)
stories.orderBy('views', 'desc').limit(3)
```

---

## 🎯 Checklist de Implementación

- [x] Script SQL ejecutado
- [x] APIs backend funcionando
- [x] Panel admin accesible
- [x] Formulario público funcional
- [x] Sistema de likes operativo
- [x] Contador de vistas activo
- [x] Integración en home
- [x] Enlace en sidebar
- [x] Logs de auditoría
- [x] RLS configurado

---

## 💡 Tips

### Para Admins
- Revisa relatos pendientes regularmente
- Proporciona razones claras al rechazar
- Los logs de auditoría registran todas tus acciones

### Para Usuarios
- Escribe relatos auténticos sobre cultura Bubi
- Sé respetuoso y constructivo
- Tu relato será revisado antes de publicarse

### Para Desarrolladores
- Todas las APIs validan IDs
- RLS protege datos sensibles
- Logs en `src/lib/logger.ts`

---

## 🚀 Próximos Pasos Opcionales

1. **Notificaciones por Email**
   - Notificar al autor cuando se aprueba/rechaza

2. **Categorías**
   - Agregar tags o categorías a relatos

3. **Búsqueda**
   - Buscar relatos por título o contenido

4. **Comentarios**
   - Sistema de comentarios en relatos

5. **Perfil de Autor**
   - Ver todos los relatos de un autor

---

**¿Necesitas ayuda?** Revisa `SISTEMA-COMPLETO-RELATOS-MODERACION.md` para documentación completa.
