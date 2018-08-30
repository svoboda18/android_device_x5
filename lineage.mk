# Release name
PRODUCT_RELEASE_NAME := X5

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/x5/lineage_x5.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5
PRODUCT_NAME := lineage_x5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := DOOGEE

#SuperUser
WITH_SU := true
