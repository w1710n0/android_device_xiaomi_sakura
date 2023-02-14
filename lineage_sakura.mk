#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common riceDroisOSS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
RICE_CHIPSET := Snapdragon®625


# Bootanimation
SUSHI_BOOTANIMATION  := 1080
TARGET_ENABLE_BLUR := true


# Maintainer Stuff
RICE_MAINTAINER := w1710n0
RICE_OFFICIAL := false

# Inherit from sakura device
$(call inherit-product, device/xiaomi/sakura/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sakura
PRODUCT_NAME := lineage_sakura
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sakura-user 9 PKQ1.180917.001 V12.0.1.0.PDICNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/sakura/sakura:9/PKQ1.180917.001/V12.0.1.0.PDICNXM:user/release-keys"
