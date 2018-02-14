#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wt89536 device
$(call inherit-product, device/cmdc/wt89536/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_wt89536
PRODUCT_DEVICE := wt89536
PRODUCT_BRAND := CMCC
PRODUCT_MODEL := M836
PRODUCT_MANUFACTURER := CMDC

PRODUCT_GMS_CLIENTID_BASE := android-cmcc

TARGET_VENDOR := CMCC

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="cmcc/wt89536/wt89536:7.1.2/NJH47F/20180208:user/release-keys" \
    PRIVATE_BUILD_DESC="wt89536-user 7.1.2 NJH47F 20180208 release-keys"
