#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit full device configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jackpotlte device
$(call inherit-product, device/samsung/jackpotlte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jackpotlte
PRODUCT_NAME := lineage_jackpotlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A530N
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
