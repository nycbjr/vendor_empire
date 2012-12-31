# Inherit device configuration for tf300t.
$(call inherit-product, device/asus/tf300t/full_tf300t.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common_tablet.mk)

# PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/tf-common

# Setup device specific product configuration.
PRODUCT_NAME := empire_tf300t
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf300t
PRODUCT_MODEL := Transformer Pad TF300T
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/WW_epad/EeePad:4.0.3/IML74K/WW_epad-9.4.3.29-20120511:user/release-keys PRIVATE_BUILD_DESC="WW_epad-user 4.0.3 IML74K WW_epad-9.4.3.29-20120511 release-keys"

# Release name and versioning
# PRODUCT_RELEASE_NAME := tf300t

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/empire/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

# Inherit additional apps to install
$(call inherit-product, vendor/empire/prebuilt/asus_common/device_vendor.mk)
