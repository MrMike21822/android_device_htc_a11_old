$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/a11/a11-vendor.mk)

LOCAL_PATH := device/htc/a11

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/a11/overlay

# AAPT Config
PRODUCT_AAPT_CONFIG := small normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Qcom init scripts for /etc
PRODUCT_PACKAGES += \
   init.qcom.bt.bluedroid.sh \
   init.qcom.bt.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8226 \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8226

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# FM radio
PRODUCT_PACKAGES += \
     qcom.fmradio \
     libqcomfm_jni \
     FM2 \
     FMRecord

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    hwcomposer.msm8226 \
    gralloc.msm8226 \
    memtrack.msm8226 \
    libgenlock \
    liboverlay

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    $(LOCAL_PATH)/idc/hsml_touchscreen.idc:system/usr/idc/hsml_touchscreen.idc \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/AK8789_HALL_SENSOR.kl:system/usr/keylayout/AK8789_HALL_SENSOR.kl \
    $(LOCAL_PATH)/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl \
    $(LOCAL_PATH)/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8226

# Lights
PRODUCT_PACKAGES += \
    lights.msm8226

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8226


# Recovery charging images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_0.png:recovery/root/res/offmode_charging_images/r_0.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_1.png:recovery/root/res/offmode_charging_images/r_1.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_2.png:recovery/root/res/offmode_charging_images/r_2.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_3.png:recovery/root/res/offmode_charging_images/r_3.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_4.png:recovery/root/res/offmode_charging_images/r_4.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_5.png:recovery/root/res/offmode_charging_images/r_5.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_6.png:recovery/root/res/offmode_charging_images/r_6.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_7.png:recovery/root/res/offmode_charging_images/r_7.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_8.png:recovery/root/res/offmode_charging_images/r_8.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_9.png:recovery/root/res/offmode_charging_images/r_9.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/r_percent.png:recovery/root/res/offmode_charging_images/r_percent.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_0.png:recovery/root/res/offmode_charging_images/w_0.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_1.png:recovery/root/res/offmode_charging_images/w_1.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_2.png:recovery/root/res/offmode_charging_images/w_2.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_3.png:recovery/root/res/offmode_charging_images/w_3.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_4.png:recovery/root/res/offmode_charging_images/w_4.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_5.png:recovery/root/res/offmode_charging_images/w_5.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_6.png:recovery/root/res/offmode_charging_images/w_6.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_7.png:recovery/root/res/offmode_charging_images/w_7.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_8.png:recovery/root/res/offmode_charging_images/w_8.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_9.png:recovery/root/res/offmode_charging_images/w_9.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/w_percent.png:recovery/root/res/offmode_charging_images/w_percent.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_0.png:recovery/root/res/offmode_charging_images/y_0.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_1.png:recovery/root/res/offmode_charging_images/y_1.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_2.png:recovery/root/res/offmode_charging_images/y_2.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_3.png:recovery/root/res/offmode_charging_images/y_3.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_4.png:recovery/root/res/offmode_charging_images/y_4.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_5.png:recovery/root/res/offmode_charging_images/y_5.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_6.png:recovery/root/res/offmode_charging_images/y_6.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_7.png:recovery/root/res/offmode_charging_images/y_7.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_8.png:recovery/root/res/offmode_charging_images/y_8.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_9.png:recovery/root/res/offmode_charging_images/y_9.png \
    $(LOCAL_PATH)/recovery/offmode_charging_images/y_percent.png:recovery/root/res/offmode_charging_images/y_percent.png

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi firmware
PRODUCT_PACKAGES += \
    wcnss_service

# WiFi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    hostapd \
    hostapd_default.conf \
    dhcpcd.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

$(call inherit-product, build/target/product/full.mk)
