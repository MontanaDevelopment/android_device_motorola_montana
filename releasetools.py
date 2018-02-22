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

import re

def FullOTA_InstallEnd(info):
  info.script.AppendExtra('if (getprop("ro.boot.radio") != "EMEA") then')
  info.script.Print("Non-EMEA variant detected !!!")
  info.script.Print("Disabling NFC configuration...")
  info.script.Print("Credits to Kalyansundhar, GoldeneyeS2")
  info.script.Mount("/system")
  info.script.AppendExtra('delete_recursive("/system/app/NfcSetup");')
  info.script.AppendExtra('delete_recursive("/system/app/NfcNci");')
  info.script.AppendExtra('delete("/system/lib/libnfc-nci.so");')
  info.script.AppendExtra('delete("/system/lib/libnfc_nci_jni.so");')
  info.script.AppendExtra('delete("/system/etc/libnfc-nxp.conf");')
  info.script.AppendExtra('delete("/system/etc/libnfc-nxp_ds.conf");')
  info.script.AppendExtra('delete("/system/etc/libnfc-brcm.conf");')
  info.script.AppendExtra('delete("/system/framework/com.android.nfc_extras.jar");')
  info.script.AppendExtra('delete("/system/framework/com.gsma.services.nfc.jar");')
  info.script.AppendExtra('delete("/system/etc/permissions/android.hardware.nfc.xml");')
  info.script.AppendExtra('delete("/system/etc/permissions/android.hardware.nfc.hce.xml");')
  info.script.AppendExtra('delete("/system/etc/permissions/com.android.nfc_extras.xml");')
  info.script.AppendExtra('delete("/system/etc/permissions/com.nxp.mifare.xml");')
  info.script.Unmount("/system")
  info.script.Print("Disabled.")
  info.script.AppendExtra('endif;')
