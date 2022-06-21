#
# Copyright (C) 2021-2022 CherishOS.
# A beautiful ROM based on AOSP and Pixel with good quality of features.
#
# Device Name : Xiaomi Mi 11 | Device Codename : venus | Device Model : M2011K2G
# The Xiaomi Mi 11 was announced in December 2020 and released globally on February 2021
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/samsung/dream2lte/device.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Boot Animation Resolution.
TARGET_BOOT_ANIMATION_RES := 1440

# Supported Device Flags. (Features)
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := false
TARGET_USES_BLUR := true

# Google Mobile Services Support. (GAPPS)
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_dream2lte
PRODUCT_DEVICE := dream2lte
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy S8+
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# CherishOS Stuffs
CHERISH_BUILD_TYPE=OFFICIAL

# Fingerprint stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dream2ltexx \
    PRIVATE_BUILD_DESC="dream2ltexx-user 8.0.0 R16NW G955FXXU1CRC7 release-keys"

BUILD_FINGERPRINT := samsung/dream2ltexx/dream2lte:8.0.0/R16NW/G955FXXU1CRC7:user/release-keys
