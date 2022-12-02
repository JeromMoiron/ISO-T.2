@echo off

REM santiago marino fernandez, marfersan
echo Selecciona la opcion deseada.

:menu
echo --------------------
echo        MENU
echo --------------------
echo.
echo para XP y Server 2003
echo 1)ACTIVAR Firewall
echo 2)DESACTIVAR Firewall
echo para W7 y Server 2008
echo 3)ACTIVAR Firewall
echo 4)DESACTIVAR Firewall
echo 5)Salir

set /p opcion=Elija una opcion de las anteriores [1-5]: 

if %opcion%==1 goto activar
if %opcion%==2 goto desactivar
if %opcion%==3 goto activar1
if %opcion%==4 goto desactivar1
if %opcion%==5 goto salir

:activar
netsh firewall set opmode enable
echo Firewall Activado
goto menu

:desactivar
netsh firewall set opmode disable
echo Firewall Desactivado
goto menu

:activar1
netsh advfirewall set allprofiles state on
echo Firewall Activado
goto menu

:desactivar1
netsh advfirewall set allprofiles state off
echo Firewall Desactivado
goto menu

:salir
exit
