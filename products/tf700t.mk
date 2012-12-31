# Inherit device configuration for tf300t.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common_tablet.mk)

# PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/tf-common

# Setup device specific product configuration.
PRODUCT_NAME := empire_tf700t
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf700t
PRODUCT_MODEL := Transformer Pad TF700T
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.1.1/JRO03C/US_epad-10.4.4.18-20121012:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.1.1 JRO03C US_epad-10.4.4.18-20121012 release-keys"

# Release name and versioning
# PRODUCT_RELEASE_NAME := tf700t

# bootanimation
#PRODUCT_COPY_FILES += \
	vendor/empire/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

# Inherit additional apps to install
$(call inherit-product, vendor/empire/prebuilt/asus_common/device_vendor.mk)
