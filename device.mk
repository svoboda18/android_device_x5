# RIL
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
PRODUCT_COPY_FILES += \
	device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/doogee/x5/sepolicy
DEVICE_PACKAGE_OVERLAYS += device/doogee/x5/overlay

#$(call inherit-product, vendor/hardware_overlay/overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Overrides
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	ro.build.version.sdk=$(PLATFORM_SDK_VERSION) \
	ro.build.version.codename=$(PLATFORM_VERSION_CODENAME) \
	ro.build.version.all_codenames=$(PLATFORM_VERSION_ALL_CODENAMES) \
	ro.build.version.release=$(PLATFORM_VERSION) \
	ro.build.version.security_patch=$(PLATFORM_SECURITY_PATCH) \
	ro.adb.secure=0 \
	ro.logd.auditd=true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.usb.config=adb \
	ro.cust.cdrom=/dev/null	

# VNDK Configs
PRODUCT_COPY_FILES += \
	device/doogee/x5/configs/vndk-detect:system/bin/vndk-detect \
	device/doogee/x5/configs/vndk.rc:system/etc/init/vndk.rc \
	device/doogee/x5/configs/ld.config.26.txt:system/etc/ld.config.26.txt \

# USB Audio
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
	device/doogee/x5/configs/rw-system.sh:system/bin/rw-system.sh \
	device/doogee/x5/spl/getspl-prebuilt:system/bin/getSPL

PRODUCT_COPY_FILES += \
	device/doogee/x5/configs/empty:system/phh/empty \
	device/doogee/x5/configs/mtk-x5.sh:system/bin/mtk-x5.sh

PRODUCT_PACKAGES += \
	treble-environ-rc

PRODUCT_PACKAGES += \
	bootctl \
	vintf

PRODUCT_COPY_FILES += \
	device/doogee/x5/twrp/twrp.rc:system/etc/init/twrp.rc \
	device/doogee/x5/twrp/twrp.sh:system/bin/twrp.sh \
	device/doogee/x5/twrp/busybox-armv7l:system/bin/busybox_phh

PRODUCT_PACKAGES += \
    simg2img_simple

ifneq (,$(wildcard external/exfat))
PRODUCT_PACKAGES += \
	mkfs.exfat \
	fsck.exfat
endif

PRODUCT_PACKAGES += \
	android.hardware.wifi.hostapd-V1.0-java

PRODUCT_COPY_FILES += \
	device/doogee/x5/configs/interfaces.xml:system/etc/permissions/interfaces.xml

SELINUX_IGNORE_NEVERALLOWS := true

# Universal NoCutoutOverlay
PRODUCT_PACKAGES += \
    NoCutoutOverlay

PRODUCT_PACKAGES += \
    lightsctl \
    uevent

PRODUCT_COPY_FILES += \
	device/doogee/x5/configs/adbd.rc:system/etc/init/adbd.rc
