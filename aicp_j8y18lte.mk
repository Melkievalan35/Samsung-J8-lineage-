# Copyright (C) 2017-2020 The LineageOS Project
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

LOCAL_PATH := device/samsung/j8y18lte

# Inherit from those products, Most specific first.
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit common aicp phone.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="goldfish07(Ayush Bisht)"

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aicp_j8y18lte
PRODUCT_DEVICE := j8y18lte
PRODUCT_MODEL := SM-J810G
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung