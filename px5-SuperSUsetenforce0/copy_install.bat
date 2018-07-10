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
win-adb\adb kill-server
win-adb\adb connect %1
timeout 3 > NUL
win-adb\adb root
win-adb\adb connect %1
timeout 3 > NUL

REM Make the partitions read-writable
win-adb\adb shell mount -o rw,remount /system
win-adb\adb shell setenforce 0
win-adb\adb shell cp /system/xbin/su /system/xbin/su_original
win-adb\adb push su /system/xbin/su
win-adb\adb shell chmod 06755 /system/xbin/su
win-adb\adb shell /system/xbin/su --install
win-adb\adb shell /system/xbin/su --daemon&
win-adb\adb push rooting.rc /system/etc/init/rooting.rc
win-adb\adb shell mkdir /system/app/SuperSU
win-adb\adb shell chmod 0755 /system/app/SuperSU
win-adb\adb push -p Superuser.apk /system/app/SuperSU/
win-adb\adb shell chmod 0644 /system/app/SuperSU/Superuser.apk

win-adb\adb shell sync

echo Reboot your Head Unit NOW!

:END
