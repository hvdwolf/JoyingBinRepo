#!/bin/bash


# ipaddress given?
if [ "$1" = "" ]
then
        echo "Provide IP Address to connect to for adb"
        echo "for example:  ./copy_install.sh 192.168.178.52"
        exit
fi
set -x


# Setup the connection
adb kill-server
adb connect $1
sleep 2
adb root
adb connect $1
sleep 2


adb shell mount -o rw,remount /system
adb shell setenforce 0
adb shell cp /system/xbin/su /system/xbin/su_original
adb push su /system/xbin/su
adb shell chmod 06755 /system/xbin/su
adb shell /system/xbin/su --install
adb shell /system/xbin/su --daemon&
adb push rooting.rc /system/etc/init/rooting.rc
adb shell mkdir /system/app/SuperSU
adb shell chmod 0755 /system/app/SuperSU
adb push -p Superuser.apk /system/app/SuperSU/
adb shell chmod 0644 /system/app/SuperSU/Superuser.apk


adb shell sync
#adb shell mount -o ro,remount /system

echo Reboot your Head Unit NOW!
