# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN orrivedes list
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
