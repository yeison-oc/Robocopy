@echo off
title ROBOCOPY (Ejecutar como administrador)
color 0a
mode 81, 30
echo.
echo                           ROBUST FILE COPY :: ROBOCOPY                     v2.2  
echo.
echo +-------------------------------------------------------------------------------+
echo   Creado por: Yeison Orozco                                   Github: yeison-oc  
echo +-------------------------------------------------------------------------------+
echo.
echo  [ DECRIPCION ]
echo.
echo   Robust File Copy, es un comando de replicacion de directorios, disponible
echo   desde la Linea de Comandos. Este programa realiza copia de archivos excepto
echo   los que estan ocultos o que hacen parte del sistema.
echo.
echo  [ INSTRUCCIONES ]
echo.
echo   1. Copie la ruta de los archivos y peguela en origen.
echo   2. Copie la ruta de destino y peguela en destino.
echo.
echo  [ EJEMPLOS ]
echo.
echo   * Puede ingresar la letra de una particion incluyendo los dos puntos, C: D: E:
echo   * Puede ingresar la ruta absoluta de la ubicacion, C:\Users
echo. 
set /p origen="Ruta de origen> "
echo.
set /p destino="Ruta de destino> "
echo.
set _opciones=/S /MT:32 /R:100 /W:5 /XA:SH
:: /S : Copia subcarpetas que tengan contenido adentro
:: /MT : Hilos permitidos para la copia
cls
echo.
robocopy "%origen%" "%destino%" %opciones%
pause
