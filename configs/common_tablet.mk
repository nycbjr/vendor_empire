# Inherit common stuff
$(call inherit-product, vendor/empire/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/common_tablets
