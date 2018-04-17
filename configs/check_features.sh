#!/sbin/sh

radio=`getprop ro.boot.radio`

if [ "$radio" != "EMEA" ] && [ "$radio" != "APAC" ]; then
    rm -r /system/app/NfcNci
    rm -r /system/app/NfcSetup
    rm /system/lib/libnfc-nci.so
    rm /system/lib/libnfc_nci_jni.so
    rm /system/etc/libnfc-nxp.conf
    rm /system/etc/libnfc-nxp_ds.conf
    rm /system/etc/libnfc-brcm.conf
    rm /system/framework/com.android.nfc_extras.jar
    rm /system/framework/com.gsma.services.nfc.jar
    rm /system/etc/permissions/android.hardware.nfc.xml
    rm /system/etc/permissions/android.hardware.nfc.hce.xml
    rm /system/etc/permissions/com.android.nfc_extras.xml
    rm /system/etc/permissions/com.nxp.mifare.xml
fi
