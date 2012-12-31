# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit empire common bits
$(call inherit-product, vendor/empire/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/empire/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := empire_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
