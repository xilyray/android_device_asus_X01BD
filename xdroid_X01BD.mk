#
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2020-2021 The xdroidCAF Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common xdroidCAF stuff
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_BOOT_DARK := true
XDROID_UI_BLUR := true

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xdroid_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys"
