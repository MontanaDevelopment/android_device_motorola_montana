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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Dalvik/HWUI configs
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Call the proprietary setup
$(call inherit-product, vendor/motorola/montana/montana-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8937 \
    audio.usb.default \
    audio.a2dp.default \
    audio.r_submix.default \
    libshim_adsp
    
PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8937/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_ext_spkr.conf:system/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_sku2.xml:system/etc/mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml
  
# Bluetooth
PRODUCT_PACKAGES += \
    bt-vendor
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/interop_database.conf:system/etc/bluetooth/interop_database.conf

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937 \
    Snap \
    libshim_camera
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695f60_chromatix.xml:system/etc/camera/mot_ov5695_l5695f60_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8937_mot_montana_camera.xml:system/etc/camera/msm8937_mot_montana_camera.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:system/etc/camera/s5k3p3_chromatix.xml

# CM
PRODUCT_PACKAGES += \
    CMActions

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8937 \
    copybit.msm8937 \
    hwcomposer.msm8937 \
    memtrack.msm8937
        
# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8937 \
    activity_recognition.msm8937
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libqcomfm_jni \
    libfm-hci \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgnsspps
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# IPA Manager
#PRODUCT_PACKAGES += \
#    ipacm \
#    IPACM_cfg.xml

# IMS
PRODUCT_PACKAGES += \
    libshim_ims

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libmm-omxcore

#PRODUCT_PACKAGES += \
#    libOmxAacDec \
#    libOmxAmrwbplusDec \
#    libOmxCore \
#    libOmxEvrcDec \
#    libOmxQcelp13Dec \
#    libOmxVdec \
#    libOmxVenc \
#    libstagefrighthw

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/etc/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/configs/media/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/etc/media_profiles_8956.xml:system/etc/media_profiles_8956.xml \
    $(LOCAL_PATH)/configs/media/etc/qdcm_calib_data_mipi_mot_vid_inx_1080p_521.xml:system/etc/qdcm_calib_data_mipi_mot_vid_inx_1080p_521.xml \
    $(LOCAL_PATH)/configs/media/etc/qdcm_calib_data_mipi_mot_vid_tianma_1080p_521.xml:system/etc/qdcm_calib_data_mipi_mot_vid_tianma_1080p_521.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937
    
# Nfc
PRODUCT_PACKAGES += \
    libnfc-nci 
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Power
PRODUCT_PACKAGES += \
    power.msm8937

# Qualcomm Common
PRODUCT_PACKAGES += \
    libtinyxml \
    liboverlay \
    libxml2 \
    libnetutils \
    libprotobuf-cpp-lite \
    libprotobuf-cpp-full \
    libcurl \
    libjson

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libshim_ril

# Sensors
PRODUCT_PACKAGES += \
    sensors.rp \
    sensors.ssc \
    sensors.montana
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal-engine-montana.conf:system/etc/thermal-engine-montana.conf

# Wifi
PRODUCT_PACKAGES += \
    wifi_symlinks \
    hostapd \
    wpa_supplicant \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service

PRODUCT_COPY_FILES += \
    kernel/motorola/msm8937/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny
              
# MISC - NOT SURE WHAT AND WHY
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vhw.xml:system/etc/vhw.xml \
    $(LOCAL_PATH)/configs/rtt-conf.xml:system/etc/rtt-conf.xml \
    $(LOCAL_PATH)/configs/voicemail-conf.xml:system/etc/voicemail-conf.xml

# Ramdisk
# BIN
PRODUCT_PACKAGES += \
    init.mmi.touch.sh \
    wlan_carrier_bin.sh
# ETC
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.audio.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.modem_links.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.uicc.sh \
    init.qcom.wifi.sh \
    init.qti.ims.sh \
    vold.fstab
# ROOT
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mmi.audio.sh \
    init.mmi.block_perm.sh \
    init.mmi.boot.sh \
    init.mmi.chipset.rc \
    init.mmi.common.rc \
    init.mmi.diag_mdlog.rc \
    init.mmi.dtv.rc \
    init.mmi.laser.sh \
    init.mmi.nonab.rc \
    init.mmi.overlay.rc \
    init.mmi.rc \
    init.mmi.sensor.rc \
    init.mmi.usb.rc \
    init.mmi.usb.sh \
    init.mmi.volte.rc \
    init.oem.hw.sh \
    init.oem.rc \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.target.rc \
    ueventd.qcom.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_VENDOR_KERNEL_HEADERS := hardware/qcom/msm8996/kernel-headers
