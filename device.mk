#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina)

# Fingerprint
PRODUCT_PACKAGES += \
    libudfpshandler \
    vendor.goodix.hardware.biometrics.fingerprint@2.1.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.xiaomi

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi.mars

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# WiFi
PRODUCT_PACKAGES += \
    TargetWifiOverlay

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mars/mars-vendor.mk)
