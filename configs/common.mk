$(call inherit-product-if-exists, vendor/empire/prebuilt/prebuilts.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/empire/overlay/dictionaries

# Basic common apps for empire
PRODUCT_PACKAGES += \
    ApexLauncher \
    AppWidgetPicker \
    EMPIREWalls \
    CMFileManager \
    Development \
    Microbes \
    OTAUpdateCenter \
    ROMControl \
    Superuser \
    su \
    Trebuchet

# DSPManager and libs necessary for it
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Use prebuilt su
# PRODUCT_COPY_FILES += \
#    vendor/empire/prebuilt/common/xbin/su:system/xbin/su

# PRODUCT_PACKAGES += \
#    SuperSU

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live wallpapers for all
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    powertop \
    nano

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

# init.d and Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/empire/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/empire/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/empire/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/empire/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/empire/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/empire/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/empire/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/empire/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/empire/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/empire/prebuilt/common/etc/init.d/90tweaks:system/etc/init.d/90tweaks \
    vendor/empire/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/empire/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/empire/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/empire/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/empire/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/empire/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/empire/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/empire/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/empire/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/empire/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh

# Cron
PRODUCT_COPY_FILES += \
    vendor/empire/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/empire/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/empire/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/empire/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/empire/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/empire/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/empire/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# T-Mobile theme engine
include vendor/empire/configs/themes_common.mk

# Inherit common build.prop overrides
-include vendor/empire/configs/common_versions.mk
