#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/jackpotlte

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7885 \
    init.baseband.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.samsung.rc \
    init.samsungexynos7885.rc \
    init.samsungexynos7885.usb.rc \
    init.recovery.samsungexynos7885.rc \
    init.gps.rc \
    init.carrier.rc \
    init.power.rc \
    mobicore.rc \
    init.wifi.rc \
    wifi_slsi.rc \
    ueventd.samsungexynos7885.rc \
    loggy.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Graphics
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl:64 \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.renderscript@1.0-impl \
    memtrack.exynos5 \
    hwcomposer.exynos5 \
    libhwc2on1adapter

PRODUCT_PACKAGES += \
    libion \
    libfimg

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service \
    vndservicemanager

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Camera
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    camera.device@3.3-impl \
    camera.device@3.4-impl \
    libexynoscamera_shim \
    libcamera_client_shim \
    camera.exynos5

# Camera service
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/vendor.samsung.hardware.camera.provider@2.4-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.samsung.hardware.camera.provider@2.4-service.rc

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey \
    libfwdlockengine \
    libdrmclearkeyplugin

# DRM (Widevine) service
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.drm@1.1-service.widevine.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.drm@1.1-service.widevine.rc

# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device

# hardware/samsung/AdvancedDisplay (MDNIE)
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio.config@1.2 \
    libxml2 \
    libprotobuf-cpp-full

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Versioned netutils
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwpa_client \
    WifiOverlay \
    TetheringConfigOverlay \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

# Seccomp filters
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth.a2dp@1.0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.bluetooth@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.bluetooth@1.0-service.rc

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.samsung \
    com.android.nfc_extras \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.usb.default \
    audio.r_submix.default \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio.effect@2.0-service \
    android.hardware.bluetooth.audio@2.0-impl:32 \
    libtinycompress

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gnss/gps.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/gps.cfg \
    $(LOCAL_PATH)/configs/gnss/gps_debug.conf:system/etc/gps_debug.conf

# Keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Generic.kl:/$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Generic.kl

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/AVRCP.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/AVRCP.idc \
    $(LOCAL_PATH)/configs/idc/qwerty.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/configs/idc/qwerty2.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty2.idc

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.exynos \
    android.hardware.power@1.0-impl \
    power.universal7885

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung \
    android.hardware.light@2.0-impl \
    lights.universal7885

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung \
    libbauthtzcommon_shim

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.1-service.universal7885

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.samsung \
    android.hardware.sensors@1.0-service \
    android.frameworks.sensorservice@1.0 \
    libsensorndkbridge

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK prebuilts
# PRODUCT_COPY_FILES += \
#    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-lite-v29.so \
#    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so \
#    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-v29.so \
#    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full-v29.so

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service.typec

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder

# System.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# call Samsung LSI board support package
ifneq ($(WITH_EXYNOS_BSP),)
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi/exynos7885/exynos7885.mk)
endif

# Boot animation / Resolution
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

