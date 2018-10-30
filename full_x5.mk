PRODUCT_DEVICE := x5
PRODUCT_NAME := lineage_x5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := DOOGEE

$(call inherit-product, device/doogee/x5/device_x5.mk)
$(call inherit-product-if-exists, vendor/doogee/x5/device-vendor.mk)

PRODUCT_NAME := lineage_x5
