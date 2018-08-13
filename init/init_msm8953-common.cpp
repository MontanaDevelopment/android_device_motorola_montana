/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/properties.h>
#include "property_service.h"
#include "vendor_init.h"

using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void property_override_dual(char const system_prop[], char const vendor_prop[],
    char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void num_sims() {
    std::string dualsim;

    dualsim = android::base::GetProperty("ro.boot.dualsim", "");
    property_set("ro.hw.dualsim", dualsim.c_str());

    if (dualsim == "true") {
        property_set("persist.radio.multisim.config", "dsds");
    } else {
        property_set("persist.radio.multisim.config", "");
    }
}

void vendor_load_properties()
{
    std::string platform = android::base::GetProperty("ro.board.platform", "");

    if (platform != ANDROID_TARGET)
        return;

    // sku
    std::string sku = android::base::GetProperty("ro.boot.hardware.sku", "");
    property_override_dual("ro.product.model", "ro.vendor.product.model", sku.c_str());

    // rmt_storage
    std::string device = android::base::GetProperty("ro.boot.device", "");
    std::string radio = android::base::GetProperty("ro.boot.radio", "");
    property_set("ro.hw.device", device.c_str());
    property_set("ro.hw.radio", radio.c_str());
    property_set("ro.hw.fps", "true");
    property_set("ro.hw.imager", "12MP");

    num_sims();

    // devices
	static const unsigned cedric = (sku == "XT1670") || (sku == "XT1671") || (sku == "XT1672") || (sku == "XT1673") || (sku == "XT1674") || (sku == "XT1675") || (sku == "XT1676") || (sku == "XT1677");
	static const unsigned potter = (sku == "XT1680") || (sku == "XT1681") || (sku == "XT1682") || (sku == "XT1683") || (sku == "XT1684") || (sku == "XT1685") || (sku == "XT1686") || (sku == "XT1687");
	static const unsigned montana = (sku == "XT1790") || (sku == "XT1791") || (sku == "XT1792") || (sku == "XT1793") || (sku == "XT1794") || (sku == "XT1795") || (sku == "XT1796") || (sku == "XT1797");
	static const unsigned sanders = (sku == "XT1800") || (sku == "XT1801") || (sku == "XT1802") || (sku == "XT1803") || (sku == "XT1804") || (sku == "XT1805") || (sku == "XT1806") || (sku == "XT1807");
    if (cedric) {
        // fingerprint
	    property_override("ro.build.description", "cedric-7.0/NPPS25.137-72-4/4:user/release-keys");
        property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "motorola/cedric/cedric:7.0/NPPS25.137-72-4/4:user/release-keys");
    }
    if (potter) {
        // fingerprint
        property_override("ro.build.description", "potter-7.0/NPNS25.137-33-11/11:user/release-keys");
        property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "motorola/potter/potter:7.0/NPNS25.137-33-11/11:user/release-keys");
    }
    if (montana) {
        // fingerprint
        property_override("ro.build.description", "montana-7.1.1/NPPS26.102-49-11/11:user/release-keys");
        property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "motorola/montana/montana:7.1.1/NPPS26.102-49-11/11:user/release-keys");
    }
    if (sanders) {
        // fingerprint
        property_override("ro.build.description", "sanders-7.1.1/NPS26.116-26/30:user/release-keys");
        property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "motorola/sanders/sanders:7.1.1/NPS26.116-26/30:user/release-keys");
    }

    if (sku == "XT1687") {
        property_set("ro.hw.ecompass", "true");
        property_set("ro.hw.nfc", "false");
    }
    else {
        property_set("ro.hw.ecompass", "false");
        property_set("ro.hw.nfc", "true");
    }

    if (sku == "XT1683") {
        property_set("ro.hw.dtv", "true");
    }
}
