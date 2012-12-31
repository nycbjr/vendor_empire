# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit baked common_tablet bits
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

# Manta Overlay
# PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/manta

# Setup device specific product configuration
PRODUCT_NAME := baked_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

PRODUCT_COPY_FILES +=  \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
