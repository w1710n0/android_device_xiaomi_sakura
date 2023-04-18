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

# Qualcomm
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := msm8953

# Reduce the size of the system image
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep \
    Settings \
    SystemUI

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_SYSTEM_SERVER_DEBUG_INFO := false
WITH_DEXPREOPT_DEBUG_INFO := false

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sakura/sakura-vendor.mk)
