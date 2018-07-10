@echo off

REM check permissions: running as Administrator?
fsutil dirty query C: >nul 2>&1
if %errorLevel% NEQ 0 (
        echo.
        echo You did not start this script in an Administrator command box.
        echo Open an Administrator command prompt and restart this script.
        echo.
        GOTO END
)

REM check for ip-address
if "%1"=="" (
        echo.
        echo no argument given. I need the ip-address. Restart the script with "copy_install.bat ip-address".
        echo.
        GOTO END
)

REM Setup the connection
adb kill-server
adb connect %1
timeout 3 > NUL
adb root
adb connect %1
timeout 3 > NUL

REM Make the partitions read-writable
adb shell mount -o rw,remount /system

REM Do the actual reset
adb shell cp -f /system/xbin/su.org /system/xbin/su
adb shell chmod 0775 /system/xbin/su
adb shell chown 0:0 /system/xbin/su
adb shell cp -f /system/bin/install-recovery.sh.org /system/bin/install-recovery.sh
adb shell chmod 755 /system/bin/install-recovery.sh


echo Reboot your Head Unit NOW!


:END

