#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common BlissROMs stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit from the MiuiCamera setup
$(call inherit-product-if-exists, device/xiaomi/peridot-miuicamera/device.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_NAME := bliss_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 14 UKQ1.240116.001 V816.0.9.0.UNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:14/UKQ1.240116.001/V816.0.9.0.UNPMIXM:user/release-keys \
    DeviceName=peridot \
    DeviceProduct=peridot_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# BlissROMs Flags
BLISS_BUILDTYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_STOCK_GAPPS := true
