# Release name
PRODUCT_RELEASE_NAME := X5

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_x5.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5
PRODUCT_NAME := aosp_x5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := DOOGEE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=DOOGEE/full_hct6580_weg_c_m/hct6580_weg_c_m:6.0/MRA58K/1504516469:user/test-keys \
    PRIVATE_BUILD_DESC="full_hct6580_weg_c_m-user 6.0 MRA58K 1504516469 test-keys"

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 720

# SuperUser
WITH_SU := false
WITH_ROOT := false
