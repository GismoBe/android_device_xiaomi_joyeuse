#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/joyeuse/device.mk)

# Inherit some common Cherish stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Official
CHERISH_BUILD_TYPE:= OFFICIAL

# Gapps
CHERISH_WITHGAPPS := true
TARGET_GAPPS_ARCH := arm64

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=GismoBe

#Sign with private key
PRODUCT_DEFAULT_DEV_CERTIFICATE := device/xiaomi/joyeuse/keys/releasekey

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := joyeuse
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_joyeuse
PRODUCT_MODEL := Redmi Note 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := joyeuse

# Disable debug info
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_PACKAGES_DEBUG := false
PRODUCT_PACKAGES_DEBUG_ASAN := false
