#!/bin/bash
cd ../../../..
cd packages/apps/Settings
patch -p1 < ../../../device/doogee/x5/patches/0001-add-MiraVision-in-Settings.patch
patch -p1 -b < ../../../device/doogee/x5/patches/android_settings_developer_info.patch
git clean -f -d
cd ../../../external/icu
patch -p1 < ../../device/doogee/x5/patches/android_external_icu.patch
cd ../../system/core
patch -p1 < ../../device/doogee/x5/patches/0012-Fix-Liblog-printif.patch
patch -p1 < ../../device/doogee/x5/patches/0013-Prevent-spamming-audio.patch
patch -p1 < ../../device/doogee/x5/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/doogee/x5/patches/0004-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
patch -p1 < ../../device/doogee/x5/patches/0012-PATCH-xen0n-some-MTK-services-e.g.-ril-daemon-mtk-re.patch
cd ../..
cd bionic

patch -p1 < ../device/doogee/x5/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd system/sepolicy

patch -p1 < ../../device/doogee/x5/patches/0001-system_sepolicy.patch
cd ../..
cd frameworks/av

patch -p1 < ../../device/doogee/x5/patches/0001-frameworks_av.patch
cd ../..
cd frameworks/native

patch -p1 < ../../device/doogee/x5/patches/frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/doogee/x5/patches/0011-Fix-Minior-Bugs.patch
patch -p1 < ../../device/doogee/x5/patches/frameworks_base.patch
patch -p1 < ../../device/doogee/x5/patches/0007-fix-out-of-memory-gl-crashes.patch
cd ../..
cd system/netd

patch -p1 < ../../device/doogee/x5/patches/0010-wifi-tethering-fix.patch
cd ../..
cd external/wpa_supplicant_8

patch -p1 < ../../device/doogee/x5/patches/0001-Ignore-fake-nvram-wifi.patch
patch -p1 < ../../device/doogee/x5/patches/0005-fix-wlan-hidden-wifi-scan.patch
cd ../..
cd system/sepolicy
sudo rm -rf mediaserver.te
cp ../../device/doogee/x5/patches/mediaserver.te mediaserver.te
echo "Patch Success!"
