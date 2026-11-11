@echo off
setlocal

set "PORT=8765"
set "SITE_ROOT=%~dp0dist"
set "BUNDLED_PYTHON=C:\Users\ADMIN\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"

if exist "%BUNDLED_PYTHON%" (
  set "PYTHON=%BUNDLED_PYTHON%"
) else (
  set "PYTHON=py"
)

echo Dang khoi dong mau bao gia...
start "" /min "%PYTHON%" -m http.server %PORT% --directory "%SITE_ROOT%"
timeout /t 2 /nobreak >nul
start "" "http://localhost:%PORT%/"

