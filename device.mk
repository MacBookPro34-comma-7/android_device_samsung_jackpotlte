#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/jackpotlte

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7885 \
    fstab.zram \
    ueventd.vendor.rc \
    ueventd.samsungexynos7885.rc \
    init.baseband.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.samsung.rc \
    init.samsungexynos7885.rc \
    init.samsungexynos7885.usb.rc \
    init.gps.rc \
    init.carrier.rc \
    init.power.rc \
    init.wifi.rc \
    wifi_slsi.rc \
    mobicore.rc \
    loggy.sh

# Recovery
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/atrace.rc:$(TARGET_COPY_OUT_RECOVERY)/root/atrace.rc \
    $(DEVICE_PATH)/rootdir/etc/ueventd.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.rc \
    $(DEVICE_PATH)/rootdir/etc/ueventd.samsungexynos7885.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.samsungexynos7885.rc \
    $(DEVICE_PATH)/rootdir/etc/init.recovery.samsungexynos7885.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.samsungexynos7885.rc

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

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder


# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio.effect@5.0-service \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.bluetooth.audio@2.0 \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.soundtrigger@2.1 \
    android.hardware.soundtrigger@2.1-impl \
    android.hardware.soundtrigger@2.1-service \
    libalsautils \
    libeffects \
    libspeexresampler \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.bluetooth.default \
    libtinycompress

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# ANT+
PRODUCT_PACKAGES += \
    com.dsi.ant.antradio_library \
    AntHalService \
    libantradio

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Graphics
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl

# OMX
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0 \
    android.hardware.media.omx@1.0-utils \
    android.hardware.media.omx@1.0-service

# Camera
PRODUCT_PACKAGES += \
    camera.exynos7885 \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.common@1.0 \
    android.hardware.camera.device@1.0 \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.device@3.4 \
    android.hardware.camera.provider@2.4 \
    Snap

# Camera configurations
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/camera/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-impl \
    android.hardware.configstore@1.0-service \
    android.hardware.configstore@1.1-impl \
    android.hardware.configstore@1.1-service \
    vndservicemanager

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey \
    libfwdlockengine \
    libdrmclearkeyplugin

# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

# GloveMode
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.universal7885

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/gpio_keys.kl:/$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio_keys.kl

# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.1-service.universal7885 \
    AdvancedDisplay

# LPM
PRODUCT_PACKAGES += \
    libsuspend

# keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio.config@1.0 \
    android.hardware.radio.config@1.1 \
    android.hardware.radio.config@1.2 \
    android.hardware.radio@1.0 \
    android.hardware.radio@1.1 \
    android.hardware.radio@1.2 \
    android.hardware.radio@1.3 \
    android.hardware.radio@1.4 \
    android.hardware.radio@1.5 \
    android.hardware.radio.deprecated@1.0 \
    libxml2 \
    libprotobuf-cpp-full

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS += *

# Wi-Fi
PRODUCT_PACKAGES += \
    wifiloader \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_hidl \
    libwpa_client \
    wpa_supplicant \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl \
    WifiOverlay \
    TetheringOverlay

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf

# Seccomp filters
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(DEVICE_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Touchscreen
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/idc/AVRCP.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/AVRCP.idc \
    $(DEVICE_PATH)/configs/idc/qwerty.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty.idc \
    $(DEVICE_PATH)/configs/idc/qwerty2.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty2.idc

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.exynos

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.universal7885

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung

# LPM
PRODUCT_PACKAGES += \
    libsuspend

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Memory
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    SecureElement \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    libclang_rt.ubsan_standalone-arm-android \
    libclang_rt.ubsan_standalone-aarch64-android

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0 \
    android.hardware.secure_element@1.1 \
    android.hardware.secure_element@1.2

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    libsensorndkbridge \
    android.hardware.sensors@1.0 \
    android.hardware.sensors@1.0-impl.samsung \
    android.hardware.sensors@1.0-service

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0 \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.samsung-haptic

# VNDK prebuilts
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-lite-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libcutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcutils-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-sp/libcutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcutils-v29.so

# Shims
PRODUCT_PACKAGES += \
    libexynoscamera_shim \
    libcamera_client_shim \
    libbauthtzcommon_shim \
    libvideobeauty_interface_shim

# stagefright
PRODUCT_PACKAGES += \
    libgui_vendor

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_res_images

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service.typec

# OTA Update
PRODUCT_PACKAGES += \
    Updater

# Properties
include $(DEVICE_PATH)/system_prop.mk

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

