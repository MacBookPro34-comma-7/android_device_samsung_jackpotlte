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

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
 DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.exynos7885.rc \
    fastbootd

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# System properties
-include $(DEVICE_PATH)/product_prop.mk

# Boot animation / Resolution
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

