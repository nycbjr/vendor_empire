# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := empire_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys"

PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/empire/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
