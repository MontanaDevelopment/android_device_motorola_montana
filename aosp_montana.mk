#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from montana device
$(call inherit-product, device/motorola/montana/device.mk)

# Inherit some common PE stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOT_ANIMATION_RES := 1080

# Google Apps
TARGET_MINIMAL_APPS := TRUE
TARGET_GAPPS_ARCH := arm64
# IS_GO_MODE := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := montana
PRODUCT_NAME := aosp_montana
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto G5S

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="blueline-user 9 PQ3A.190505.002 5450365 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/blueline/blueline:9/PQ3A.190505.002/5450365:user/release-keys
VENDOR_BUILD_FINGERPRINT := google/blueline/blueline:9/PQ3A.190505.002/5450365:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5S"

# for specific
$(call inherit-product, vendor/motorola/montana/montana-vendor.mk)
