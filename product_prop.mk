# Copyright (C) 2020 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
# Device specific property overrides

# fastbootd
PRODUCT_PRODUCT_PROPERTIES += \
    ro.fastbootd.available=true

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.latch_unsignaled=1
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.hw=1
PRODUCT_PRODUCT_PROPERTIES += \
    windowsmgr.max_events_per_sec=150
PRODUCT_PRODUCT_PROPERTIES += \
    ro.min_pointer_dur=8
PRODUCT_PRODUCT_PROPERTIES += \
    ro.max.fling_velocity=12000
PRODUCT_PRODUCT_PROPERTIES += \
    ro.min.fling_velocity=8000
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.scrollingcache=3

# Reduced dialing time
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.call_ring.delay=0

# Improve Image Quality
PRODUCT_PRODUCT_PROPERTIES += \
    ro.media.enc.jpeg.quality=100

