# Inherit the endeavoru device
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Inherit common product files.
$(call inherit-product, vendor/empire/configs/common.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/empire/configs/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/empire/overlay/endeavoru

PRODUCT_PACKAGES += \
	Camera

# Release name
PRODUCT_RELEASE_NAME := endeavoru

# Device naming
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := empire_endeavoru
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/IMM76D/70826.2:userdebug/test-keys" PRIVATE_BUILD_DESC="2.17.401.2 CL70826 test-keys"

# Copy over prebuilt boot animation
PRODUCT_COPY_FILES +=  \
    vendor/empire/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
	vendor/empire/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \
