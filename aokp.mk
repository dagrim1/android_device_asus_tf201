# Copyright (C) 2011 The Android Open Source Project
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

PRODUCT_PACKAGES := \
	Camera \
        MagicSmokeWallpapers \
	libcamera \
	libcameraservice \
	HoloSpiralWallpaper \
	LiveWallpapersPicker \
	VisualizationWallpapers 

# Inherit the base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Set those variables here to overwrite the inherited values.

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_tf201
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf201
PRODUCT_MODEL := Transformer Prime TF201
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=US_epad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.4.2.15-20120221:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.4.2.15-20120221 release-keys"

