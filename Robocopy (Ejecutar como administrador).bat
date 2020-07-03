@echo off
title ROBOCOPY (Ejecutar como administrador)
color 0a
echo.
echo +-------------------------------------------------------------------------------+
echo +                         ROBUST FILE COPY :: ROBOCOPY                     v2.1 +
echo +-------------------------------------------------------------------------------+
echo + Creado por: Yeison Orozco                                   Github: yeison-oc +
echo +-------------------------------------------------------------------------------+
echo.
echo INFORMACION:
echo.
echo   El programa no borra el contenido de ningun sitio, hace la copia incluso de
echo   carpetas vacias.
echo.
echo NOTA:
echo.
echo   Solo copie el contenido de una carpeta a otra carpeta, pueden haber
echo   subcarpetas.
echo.
echo INSTRUCCIONES:
echo.
echo   1. Copie la ruta de los archivos contenidos en carpeta y peguela en origen.
echo   2. Copie la ruta de destino y peguela en destino.
echo.
echo.
set /p origen=Ruta de origen:
echo.
echo.
set /p destino=Ruta de destino:
cls
echo.
robocopy /E /MT:32 /R:100 /W:5 "%origen%" "%destino%"
pause
