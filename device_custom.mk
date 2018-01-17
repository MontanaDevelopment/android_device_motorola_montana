#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# This file would be called before any other make files.
#  

LOCAL_PATH := device/motorola/montana

# Avoid audio_effects conf file being ignored by build process as it uses the framework version always (ref: $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
PRODUCT_COPY_FILES := \
        $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf

