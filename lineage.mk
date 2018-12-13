# Release name
PRODUCT_RELEASE_NAME := X5

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit next-device configuration
$(call inherit-product, device/doogee/x5/lineage_x5.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5
PRODUCT_NAME := lineage_x5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := DOOGEE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=DOOGEE/full_hct6580_weg_c_m/hct6580_weg_c_m:6.0/MRA58K/1504516469:user/test-keys \
    PRIVATE_BUILD_DESC="full_hct6580_weg_c_m-user 6.0 MRA58K 1504516469 test-keys"

# SuperUser
WITH_SU := false
WITH_ROOT := false
