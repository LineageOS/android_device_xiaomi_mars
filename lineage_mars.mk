#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mars device
$(call inherit-product, device/xiaomi/mars/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mars
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2102K1AC
PRODUCT_NAME := lineage_mars

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mars_global-user 14 UKQ1.231207.002 V816.0.11.0.UKAMIXM release-keys" \
    BuildFingerprint=Xiaomi/mars_global/mars:14/UKQ1.231207.002/V816.0.11.0.UKAMIXM:user/release-keys \
    DeviceProduct=mars \
    SystemName=mars_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
