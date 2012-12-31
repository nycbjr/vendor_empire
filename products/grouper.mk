# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common_tablet.mk)

# Setup device specific product configuration.
PRODUCT_NAME := empire_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/bootanimation/bootanimation_800_1280.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    Supernote
