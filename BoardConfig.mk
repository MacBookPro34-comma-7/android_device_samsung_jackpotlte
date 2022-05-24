# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/jackpotlte

BUILD_BROKEN_DUP_RULES := true

# Include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include
include vendor/samsung/jackpotlte/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := jackpotlte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7885

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY   := false
TARGET_NO_KERNEL     := false

# Kernel
# BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
# TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
# TARGET_PREBUILT_DT := $(DEVICE_PATH)/prebuilt/dt.img
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_FLASH_BLOCK_SIZE := 4096 # blockdev --getbsz /dev/block/mmcblk0p9
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/jackpotlte
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_KERNEL_CONFIG := exynos7885-jackpotltekor_defconfig

# Device Tree
BOARD_USES_DT := true

# Partitions - Boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432

# Partitions - Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions - Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

# Partitions - System
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3833593856

# Partitions - Userdata (26919043072 - 20480)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26919022592

# Partitions - Vendor
TARGET_COPY_OUT_VENDOR := system/vendor

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
#TARGET_SLSI_VARIANT := bsp
TARGET_BOARD_PLATFORM_GPU := mali-g71
TARGET_SOC := exynos7885

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/vintf/manifest.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true
# DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/vintf/compatibility_matrix.xml

# Root extra folders
BOARD_ROOT_EXTRA_FOLDERS += efs
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/include/bluetooth

# Hack: prevent anti rollback
# PLATFORM_SECURITY_PATCH := 2099-12-31
# VENDOR_SECURITY_PATCH := 2099-12-31
# PLATFORM_VERSION := 16.1.0

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
# TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/ramdisk/fstab.samsungexynos7885
# RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# DT2W
TARGET_TAP_TO_WAKE_NODE := /sys/class/sec/tsp/dt2w_enable

# WI-Fi
BOARD_HAVE_SAMSUNG_WIFI := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

# HWComposer
BOARD_USES_VPP := true
#BOARD_USES_VPP_V2 := true // 8890 only
BOARD_HDMI_INCAPABLE := true

# WiFiDisplay
#BOARD_USES_VIRTUAL_DISPLAY := true - depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# SCALER
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_SCALER_M2M1SHOT := true

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# RIL
BOARD_MODEM_TYPE := ss333
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true
# TARGET_USES_VND_SECRIL := true

# Build fingerprint
BUILD_FINGERPRINT := "samsung/jackpotlte/jackpotlte:9/PPR1.180610.011/A530NKSU9CUL1:user/release-keys"
PRIVATE_BUILD_DESC := "jackpotlte-user 9 PPR1.180610.011 A530NKSU9CUL1 release-keys"

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib/libbauthserver.so|libbauthtzcommon_shim.so \
    /vendor/lib64/libbauthserver.so|libbauthtzcommon_shim.so \
    /system/lib/libcamera_client.so|libcamera_client_shim.so \
    /system/lib64/libcamera_client.so|libcamera_client_shim.so \
    /system/lib/libexynoscamera.so|libexynoscamera_shim.so \
    /system/lib64/libexynoscamera.so|libexynoscamera_shim.so

# SELinux Policies
# BOARD_SEPOLICY_DIRS := device/samsung/jackpotlte/sepolicy

BUILD_BROKEN_USES_NETWORK := true
TEMPORARY_DISABLE_PATH_RESTRICTIONS := true

