# Inherit device configuration
$(call inherit-product, device/samsung/p3113/full_p3113.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit some common BAKED stuff.
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

# PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/p3100

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p3113
PRODUCT_NAME := baked_p3113
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P3113
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressowifixx TARGET_DEVICE=espressowifi BUILD_FINGERPRINT=samsung/espressowifixx/espressowifi:4.0.3/IML74K/P3113XWALD2:user/release-keys PRIVATE_BUILD_DESC="espressowifixx-user 4.0.3 IML74K P3113XWALD2 release-keys"

# Release name
PRODUCT_RELEASE_NAME := p3113

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1024_600.zip:system/media/bootanimation.zip
