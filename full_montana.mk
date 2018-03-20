#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Projec
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Inherit device tree
$(call inherit-product, device/motorola/montana/device.mk)

# Inherit vendor blobs
$(call inherit-product, vendor/motorola/montana/montana-vendor.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := montana
PRODUCT_NAME := full_montana
PRODUCT_MODEL := Moto G5s
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BRAND := Motorola
PRODUCT_RELEASE_NAME := montana

#PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/montana/montana:7.1.1/NPS26.116-26/30:user/release-keys \
    PRIVATE_BUILD_DESC="montana-7.1.1/NPS26.116-26/30:user/release-keys"