@echo off
title PROSEN Delivery - Arret
echo Arret de PROSEN Delivery...
taskkill /F /FI "WINDOWTITLE eq PROSEN Delivery V9.1*" >nul 2>nul
echo Serveur arrete.
pause
