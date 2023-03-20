#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sakura-common
$(call inherit-product, device/xiaomi/sakura-common/sakura.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/msm8996

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    NexusLauncherRelease \
    SettingsGoogle \
    SystemUI

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sakura/sakura-vendor.mk)
