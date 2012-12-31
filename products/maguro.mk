# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/empire/configs/gsm.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/tuna
# PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := empire_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
