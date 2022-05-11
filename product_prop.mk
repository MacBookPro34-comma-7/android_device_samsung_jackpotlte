# Copyright (C) 2020 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
# Device specific property overrides

PRODUCT_PRODUCT_PROPERTIES += \
    ro.hardware=samsungexynos7885 \
    ro.chipname=exynos7885 \
    ro.arch=exynos7885 \
    ro.boot.bootdevice=13500000.dwmmc0 \
    ro.sf.lcd_density=480

# fastbootd
PRODUCT_PRODUCT_PROPERTIES += \
    ro.fastbootd.available=true

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    debug.sf.hw=1 \
    windowsmgr.max_events_per_sec=150 \
    ro.min_pointer_dur=8 \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    persist.sys.scrollingcache=3

# Reduced dialing time
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.call_ring.delay=0

# Improve Image Quality
PRODUCT_PRODUCT_PROPERTIES += \
    ro.media.enc.jpeg.quality=100

