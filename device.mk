#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Fingerprint
TARGET_HAS_UDFPS := true

# Overlays
PRODUCT_PACKAGES += \
    ApertureMars \
    FrameworksResMars \
    LineageSDKMars \
    SettingsProviderResMars \
    SettingsResMars \
    SystemUIResMars \
    WifiResMars

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/overlay/config-odm.xml:$(TARGET_COPY_OUT_ODM)/overlay/config/config.xml

# PowerShare
TARGET_HAS_POWERSHARE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mars/mars-vendor.mk)
