@echo off
title PROSEN Delivery V9.1
cd /d "%~dp0"

echo ==========================================
echo        PROSEN DELIVERY V9.1
echo ==========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERREUR] Node.js n'est pas installe.
  echo.
  echo Installe Node.js depuis :
  echo https://nodejs.org/
  echo Puis relance START.bat
  echo.
  pause
  exit /b 1
)

if not exist node_modules (
  echo Installation initiale des composants...
  echo Cela peut prendre quelques minutes.
  echo.
  call npm install
  if errorlevel 1 (
    echo.
    echo [ERREUR] Installation impossible.
    pause
    exit /b 1
  )
)

echo.
echo Demarrage de PROSEN Delivery...
start "" http://localhost:3000
echo.
echo Le site est ouvert dans votre navigateur.
echo Gardez cette fenetre ouverte pendant l'utilisation.
echo.
npm start
pause
