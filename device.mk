#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sakura-common
$(call inherit-product, device/xiaomi/sakura-common/sakura.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Qualcom
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := msm8953

# Enable WiFi Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.nohdcp=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Reduce the size of the system image
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sakura/sakura-vendor.mk)
