#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_HAS_UDFPS := true
TARGET_HAS_POWERSHARE := true

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Overlays
PRODUCT_PACKAGES += \
    ApertureMars \
    FrameworksResMars \
    SettingsProviderResMars \
    SettingsResMars \
    SystemUIResMars \
    WifiResMars

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mars/mars-vendor.mk)
