# Release name
PRODUCT_RELEASE_NAME := X5

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
-include vendor/lineage/build/core/config.mk
-include vendor/lineage/build/core/apicheck.mk
include build/make/target/product/treble_common.mk
$(call inherit-product, device/doogee/x5/device.mk)
$(call inherit-product, vendor/doogee/x5/x5-vndk.mk)

PRODUCT_DEVICE := x5
PRODUCT_NAME := lineage_x5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := DOOGEE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=DOOGEE/full_hct6580_weg_c_m/hct6580_weg_c_m:6.0/MRA58K/1504516469:user/test-keys \
    PRIVATE_BUILD_DESC="full_hct6580_weg_c_m-user 6.0 MRA58K 1504516469 test-keys"

PRODUCT_COPY_FILES += \
	device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

