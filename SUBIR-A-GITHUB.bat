@echo off
setlocal
cd /d "%~dp0"

echo ===============================================
echo   DONDE ZOE - PUBLICAR WEB BOUTIQUE
echo ===============================================
echo.

git init
git branch -M main
git add .
git commit -m "Actualizar Donde Zoe con imagenes visibles"
git remote remove origin 2>nul
git remote add origin https://github.com/jhefersondev-v1/donde-zoe.git
echo.
echo Se reemplazara la version actual del repositorio.
git push -u origin main --force

if errorlevel 1 (
  echo.
  echo ERROR: GitHub no recibio los cambios.
  exit /b 1
)

echo.
echo LISTO. Abre:
echo https://jhefersondev-v1.github.io/donde-zoe/
echo Espera 1-3 minutos y usa Ctrl+F5.
pause
