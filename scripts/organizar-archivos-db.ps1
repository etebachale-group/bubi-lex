# Script para organizar archivos de la carpeta db
# Fecha: 2026-01-20

Write-Host "🧹 Organizando archivos de la carpeta db..." -ForegroundColor Cyan
Write-Host ""

# ============================================
# ARCHIVOS A USAR (Mantener en db/)
# ============================================

$archivosActivos = @(
    # Scripts de importación (USAR ESTOS)
    "ELIMINAR-CONSTRAINT-FORZADO.sql",
    "import-diccionario-entries-parte-1.sql",
    "import-diccionario-entries-parte-2.sql",
    "import-diccionario-entries-parte-3.sql",
    "import-diccionario-entries-parte-4.sql",
    
    # Schemas activos
    "schema.sql",
    "add-comments-system.sql",
    "add-grammar-system.sql",
    "add-stories-system.sql",
    "audit-schema.sql",
    "verify-stories-table.sql"
)

Write-Host "✅ Archivos activos (se mantienen en db/):" -ForegroundColor Green
$archivosActivos | ForEach-Object { Write-Host "   - $_" }
Write-Host ""

# ============================================
# MOVER DOCUMENTACIÓN A db/docs/
# ============================================

$documentacion = @(
    "GUIA-TABLAS-DICCIONARIO.md",
    "INSTRUCCIONES-FINALES.md",
    "INSTRUCCIONES-IMPORTAR-DICCIONARIO.md",
    "INSTRUCCIONES-IMPORTAR-EN-PARTES.md",
    "INSTRUCCIONES-RAPIDAS.md",
    "PREPARAR-PARA-NUEVO-DICCIONARIO.md",
    "RESUMEN-FINAL-IMPORTACION.md",
    "SOLUCION-ERROR-DUPLICADO.md",
    "SOLUCION-ERROR-MIGRACION.md",
    "SOLUCION-URGENTE-CONSTRAINT.md"
)

Write-Host "📖 Moviendo documentación a db/docs/..." -ForegroundColor Yellow
foreach ($doc in $documentacion) {
    $source = "db/$doc"
    $dest = "db/docs/$doc"
    if (Test-Path $source) {
        Move-Item -Path $source -Destination $dest -Force
        Write-Host "   ✅ $doc → db/docs/" -ForegroundColor Green
    }
}
Write-Host ""

# ============================================
# MOVER ARCHIVOS OBSOLETOS A db/archive/obsoletos/
# ============================================

$obsoletos = @(
    "import-diccionario-completo.sql",
    "import-diccionario-parte-1.sql",
    "import-diccionario-parte-2.sql",
    "import-diccionario-parte-3.sql",
    "import-diccionario-parte-4.sql",
    "import-diccionario-profesional.sql",
    "import-diccionario-profesional-entries.sql",
    "import-dictionary.sql",
    "truncate-dictionary.sql",
    "eliminar-todas-las-palabras.sql",
    "limpiar-backups-y-preparar.sql",
    "LIMPIAR-Y-MIGRAR-DICTIONARY-ENTRIES.sql",
    "limpiar-y-preparar-para-import.sql",
    "migrate-dictionary-entries-to-professional.sql",
    "migrate-to-professional-structure.sql",
    "setup-dictionary-complete.sql",
    "schema-dictionary-mejorado.sql",
    "upsert-diccionario-profesional.sql"
)

Write-Host "🗄️  Moviendo archivos obsoletos a db/archive/obsoletos/..." -ForegroundColor Yellow
foreach ($file in $obsoletos) {
    $source = "db/$file"
    $dest = "db/archive/obsoletos/$file"
    if (Test-Path $source) {
        Move-Item -Path $source -DestinatioEN-PARTES.md" -ForegroundColor White
Write-Host "   - SOLUCION-URGENTE-CONSTRAINT.md" -ForegroundColor White
Write-Host ""
  2. import-diccionario-entries-parte-1.sql" -ForegroundColor White
Write-Host "   3. import-diccionario-entries-parte-2.sql" -ForegroundColor White
Write-Host "   4. import-diccionario-entries-parte-3.sql" -ForegroundColor White
Write-Host "   5. import-diccionario-entries-parte-4.sql" -ForegroundColor White
Write-Host ""
Write-Host "📖 Documentación en db/docs/:" -ForegroundColor Cyan
Write-Host "   - RESUMEN-FINAL-IMPORTACION.md (⭐ LEER PRIMERO)" -ForegroundColor White
Write-Host "   - INSTRUCCIONES-IMPORTAR-t "   1. ELIMINAR-CONSTRAINT-FORZADO.sql" -ForegroundColor White
Write-Host " roundColor White
Write-Host "   db/" -ForegroundColor Yellow
Write-Host "   ├── 📄 Archivos activos (schemas, imports)" -ForegroundColor Green
Write-Host "   ├── 📁 docs/ (documentación)" -ForegroundColor Cyan
Write-Host "   └── 📁 archive/" -ForegroundColor Gray
Write-Host "       ├── 📁 obsoletos/ (scripts antiguos)" -ForegroundColor Gray
Write-Host "       └── 📁 backups-json/ (archivos JSON)" -ForegroundColor Gray
Write-Host ""
Write-Host "🎯 Archivos listos para usar en db/:" -ForegroundColor Green
Write-Hos===============================" -ForegroundColor Cyan
Write-Host ""
Write-Host "📁 Estructura final:" -Foreg
    $dest = "db/archive/backups-json/$json"
    if (Test-Path $source) {
        Move-Item -Path $source -Destination $dest -Force
        Write-Host "   ✅ $json → db/archive/backups-json/" -ForegroundColor Cyan
    }
}
Write-Host ""

# ============================================
# RESUMEN FINAL
# ============================================

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "✅ ORGANIZACIÓN COMPLETADA" -ForegroundColor Green
Write-Host "=============n $backupsJson) {
    $source = "db/$json"n $dest -Force
        Write-Host "   ✅ $file → db/archive/obsoletos/" -ForegroundColor Gray
    }
}
Write-Host ""

# ============================================
# MOVER BACKUPS JSON A db/archive/backups-json/
# ============================================

$backupsJson = @(
    "diccionario-completo.json",
    "diccionario-profesional.json",
    "dictionary-import.json",
    "seed-dictionary.json"
)

Write-Host "💾 Moviendo backups JSON a db/archive/backups-json/..." -ForegroundColor Yellow
foreach ($json i