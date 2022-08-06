# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/jackpotlte

# Inherit from common
include device/samsung/universal7885-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := jackpotlte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7885

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/include/bluetooth

# Kernel
BOARD_BOOT_HEADER_NAME := SRPQH21B008KU
TARGET_KERNEL_SOURCE := kernel/samsung/jackpotlte
TARGET_KERNEL_CONFIG := exynos7885-jackpotltekor_defconfig

# Partitions - Vendor
BOARD_VENDOR := samsung
TARGET_COPY_OUT_VENDOR := system/vendor

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.samsungexynos7885

