#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mars device
$(call inherit-product, device/xiaomi/mars/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mars
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2102K1AC
PRODUCT_NAME := lineage_mars

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_SYSTEM_NAME := mars_global
PRODUCT_SYSTEM_DEVICE := mars

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mars_global-user 13 RKQ1.211001.001 V14.0.5.0.TKAMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/mars_global/mars:13/RKQ1.211001.001/V14.0.5.0.TKAMIXM:user/release-keys
