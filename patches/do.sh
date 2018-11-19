#!/bin/bash
cd ../../../..
cd packages/apps/Settings
patch -p1 < ../../../device/doogee/x5/patches/miravision-settings.patch
patch -p1 < ../../../device/doogee/x5/patches/dev-info.patch
git clean -f -d
cd ../../..
patch -p1 < device/doogee/x5/patches/navbar-enable-settings.patch
cd system/core
patch -p1 < ../../device/doogee/x5/patches/linetutils.patch
patch -p1 < ../../device/doogee/x5/patches/system-core.patch
patch -p1 < ../../device/doogee/x5/patches/battery-voltage.patch
patch -p1 < ../../device/doogee/x5/patches/serial-number.patch
cd ..
patch -p1 < ../device/doogee/x5/patches/externel-netd.patch
cd ..
cd frameworks/av
patch -p1 < ../../device/doogee/x5/patches/framworks-av.patch
cd ../..
cd frameworks/opt/telephony
patch -p1 < ../../../device/doogee/x5/patches/operator-name.patch
cd ../../..
patch -p1 < device/doogee/x5/patches/kpd-keys.patch
cd external/wpa_supplicant_8
patch -p1 < ../../device/doogee/x5/patches/nvram-fix.patch
cd ../..
echo "Done!"
