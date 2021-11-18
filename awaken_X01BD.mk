#
# Copyright (C) 2021 The Project-Awaken
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Awaken stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)
AWAKEN_BUILD_TYPE := OFFICIAL
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INLCUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT=true

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Build fingerprint
BUILD_FINGERPRINT := "google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys"

# Bypass build time check on uses_libs until vendor fixes all their apps
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := awaken_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BDA
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys"
