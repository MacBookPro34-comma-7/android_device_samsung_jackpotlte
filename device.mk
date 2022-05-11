#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/jackpotlte

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

