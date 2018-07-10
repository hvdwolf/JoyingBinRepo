# com_syu_ms

This folder contains mods for the 000000000_com.syu.ms.apk.
The "000000000_com.syu.ms.apk" has the package name com_syu_ms and is the main server apk on the PX5 Joying units (and was known as "SofiaServer" on the Intel Sofia models).

It doesn't contain many mods and only for Android version 8. I consider Android 6 history on the PX5 units.

## ORG
This folder contains the 100% original apks from the ROM release (not by release date, but by ROM build date as is reflected in the build.prop). These can be used if something goes wrong and you need the 100% original.

## JD
This folder contains the original apk from the ROM release, only extended with the navi_app.txt to also recognize Western navi apps, as the Joyings only recognize Asian navi apps (with the exception of iGo and Google Maps).<br>
JD = Joying Default (I had to give it some name and it is MY default)

## NK
This folder contains a NoKill version with the extended navi_app.txt. It means that running apps in memory will not be killed when your unit is going into (deep) sleep mode.<br>
Note also that when your unit does a "cold boot" after sleep, it is not the fault of this mod, but of "some" unkilled app that holds a wakelock thereby preventing the unit from going to sleep. This is not allowed as it would drain your battery in 2-3 days, which is why the MCU will switch off the unit completely after 20 minutes if it detects an app holding such a wakelock.
