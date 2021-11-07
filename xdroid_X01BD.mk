#
# Copyright (C) 2021 The xdroid Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common xdroid stuff
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_BOOT_DARK := true
XDROID_UI_BLUR := true

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Build type
XDROID_BUILD_TYPE := STBL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xdroid_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=X01BD \
    PRODUCT_NAME=ASUS_X01BD \
    PRIVATE_BUILD_DESC="sdm660_64-user 11 RKQ1.211001.001 7641976 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/ASUS_X01BD/X01BD:11/RKQ1.211001.001/7641976:user/release-keys"
