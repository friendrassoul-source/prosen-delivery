@echo off
title Installation PROSEN Delivery V9.1
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
 echo Node.js n'est pas installe.
 echo Ouvre https://nodejs.org/ pour l'installer.
 start "" https://nodejs.org/
 pause
 exit /b 1
)
echo Installation des composants...
call npm install
if errorlevel 1 (
 echo Installation echouee.
 pause
 exit /b 1
)
echo.
echo Installation terminee.
echo Tu peux maintenant double-cliquer sur START.bat
pause
