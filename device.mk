#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Fingerprint
PRODUCT_PACKAGES += \
    libudfpshandler

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    FrameworksResMars \
    SettingsProviderResMars \
    SettingsResMars \
    SystemUIResMars \
    WifiResMars

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mars/mars-vendor.mk)
