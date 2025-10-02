Param(
  [switch]$Clean = $false,
  [int]$Port = 3000,
  [string]$SeedFile = ''
)

function Write-Section($text) { Write-Host "`n=== $text ===" -ForegroundColor Cyan }
function Remove-PathSafe($path) {
  if (Test-Path $path) {
    try { Remove-Item -Recurse -Force $path -ErrorAction Stop } catch {
      Write-Host "No se pudo borrar $path directamente. Intentando rimraf..." -ForegroundColor Yellow
      try { npx rimraf "$path" } catch { Write-Host "rimraf también falló para $path" -ForegroundColor Red }
    }
  }
}

Set-Location -Path "$PSScriptRoot\.."  # ir a raíz del proyecto

if ($Clean) {
  Write-Section "Cerrando procesos Node"
  Get-Process node -ErrorAction SilentlyContinue | Stop-Process -Force

  Write-Section "Tomando control de la carpeta (por si hay locks)"
  try { & takeown /F "$PWD" /R /D Y | Out-Null } catch {}
  try { & icacls "$PWD" /grant "$env:USERNAME":F /T | Out-Null } catch {}

  Write-Section "Limpiando .next y node_modules"
  Remove-PathSafe ".next"
  Remove-PathSafe "node_modules"
}

Write-Section "Instalando dependencias"
npm install --no-fund --no-audit
if ($LASTEXITCODE -ne 0) { throw "npm install falló ($LASTEXITCODE)" }

Write-Section "Aplicando schema de base de datos"
npm run db:apply-schema
if ($LASTEXITCODE -ne 0) { throw "Aplicación de schema falló ($LASTEXITCODE)" }

Write-Section "Asegurando índice FULLTEXT (bubi,spanish)"
npm run db:ensure-fulltext
if ($LASTEXITCODE -ne 0) { Write-Host "Aviso: no se pudo asegurar FULLTEXT (revisa DB)." -ForegroundColor Yellow }

Write-Section "Arrancando dev server"
# Comprobación simple de Next instalado
node -e "try{require('next/package.json');process.exit(0)}catch(e){process.exit(2)}"
if ($LASTEXITCODE -eq 2) { throw "Next.js no está instalado. Ejecuta 'npm install' o vuelve a lanzar este script con -Clean" }
$dev = Start-Process -FilePath "npm" -ArgumentList "run","dev" -PassThru -WindowStyle Hidden

Write-Section "Esperando a que el servidor responda en http://localhost:$Port ..."
$ready = $false
for ($i=0; $i -lt 60; $i++) {
  Start-Sleep -Seconds 1
  try {
    Invoke-WebRequest -UseBasicParsing "http://localhost:$Port/api/news" | Out-Null
    $ready = $true; break
  } catch {}
}
if (-not $ready) { Write-Host "Servidor no respondió a tiempo, continuando igualmente..." -ForegroundColor Yellow }

if ($SeedFile -ne '') {
  Write-Section "Sembrando diccionario desde $SeedFile"
  node "./scripts/seed-dictionary.js" "$SeedFile"
}

Write-Section "Smoke tests"
try {
  $news = Invoke-RestMethod "http://localhost:$Port/api/news"
  if ($null -ne $news) { Write-Host ("Noticias: {0}" -f ($news | Measure-Object | Select-Object -ExpandProperty Count)) }
} catch { Write-Host "GET /api/news falló" -ForegroundColor Yellow }

try {
  if ($news -and $news.Count -gt 0) {
    $id = $news[0].id
    $like = Invoke-RestMethod -Method Post "http://localhost:$Port/api/news/$id/like"
    Write-Host ("Like a noticia {0}: {1}" -f $id, ($like | ConvertTo-Json -Compress))
  }
} catch { Write-Host "POST /api/news/{id}/like falló" -ForegroundColor Yellow }

try {
  $dict = Invoke-RestMethod "http://localhost:$Port/api/dictionary?limit=3"
  Write-Host ("Diccionario total: {0}" -f $dict.total)
} catch { Write-Host "GET /api/dictionary falló" -ForegroundColor Yellow }

try {
  $q = "mo"
  $t0 = Get-Date
  $res = Invoke-RestMethod "http://localhost:$Port/api/dictionary?q=$q&limit=12&lang=bubi"
  $t1 = Get-Date
  $ms = [int]($t1 - $t0).TotalMilliseconds
  $count = $res.total
  Write-Host ("Busqueda '$q' -> total={0}, ms={1}" -f $count, $ms)
} catch { Write-Host "GET /api/dictionary?q= falló" -ForegroundColor Yellow }

try {
  $tmp = Join-Path $env:TEMP "bubilex-test-upload.jpg"
  # crea 1KB de datos
  [byte[]] $bytes = 1..1024
  Set-Content -Path $tmp -Value $bytes -AsByteStream
  $form = @{ file = Get-Content $tmp -AsByteStream; kind = "image" }
  $up = Invoke-RestMethod -Method Post -Uri "http://localhost:$Port/api/upload" -Form $form
  Write-Host ("Upload: {0}" -f ($up | ConvertTo-Json -Compress))
  Remove-Item $tmp -Force
} catch { Write-Host "POST /api/upload falló" -ForegroundColor Yellow }

Write-Section "Listo"
Write-Host "El servidor dev queda ejecutándose (PID: $($dev.Id))."
