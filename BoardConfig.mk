include build/make/target/board/generic_arm_a/BoardConfig.mk

TARGET_SYSTEM_PROP := device/doogee/x5/system.prop $(TARGET_SYSTEM_PROP)
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/doogee/x5/bluetooth
TARGET_EXFAT_DRIVER := exfat
DEVICE_FRAMEWORK_MANIFEST_FILE := device/doogee/x5/configs/framework_manifest.xml


#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
