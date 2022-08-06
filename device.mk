#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/jackpotlte

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7885 \
    ueventd.samsungexynos7885.rc \
    init.samsungexynos7885.rc \
    init.samsungexynos7885.usb.rc

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/ueventd.samsungexynos7885.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.samsungexynos7885.rc \
    $(DEVICE_PATH)/rootdir/etc/init.recovery.samsungexynos7885.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.samsungexynos7885.rc

# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Graphics
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Overlay
PRODUCT_ENFORCE_RRO_TARGETS += *

# Properties
include $(DEVICE_PATH)/system_prop.mk

# Inherit from common
$(call inherit-product, device/samsung/universal7885-common/device-common.mk)

$(call inherit-product-if-exists, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

