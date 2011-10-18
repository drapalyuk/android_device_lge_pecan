$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/pecan/overlay

$(call inherit-product-if-exists, vendor/lge/pecan/pecan-vendor.mk)

PRODUCT_PACKAGES += \
    librs_jni \
    libaudio \
    libcamera \
    lights.pecan \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    com.android.future.usb.accessory \
    LiveWallpapers \
    LiveWallpapersPicker \
    FM \

#    gralloc.pecan \
#    copybit.pecan

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    device/lge/pecan/files/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    device/lge/pecan/files/init.qcom.rc:root/init.qcom.rc \

#GPS
#FIXME: remove blob, we should build some how
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/gps.default.so:system/lib/hw/gps.default.so \

#BT init
#FIXME: BT init workaround
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/init.d/30initbt:system/etc/init.d/30initbt \

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/pecan/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/pecan/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# SD Card
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/pecan/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lge/pecan/files/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/pecan/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#PRODUCT_LOCALES += ldpi

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := lge_pecan
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := Optimus Me
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pecan
