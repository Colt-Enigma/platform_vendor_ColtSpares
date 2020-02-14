# Copyright (C) 2020 The ColtOS Project
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

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Include FOD Animations If Defined
ifeq ($(EXTRA_FOD_ANIMATIONS),true)
DEVICE_PACKAGE_OVERLAYS += vendor/ColtSpares/overlay/fod
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/ColtSpares/overlay/fod
endif

# Include Colt Fonts
include vendor/ColtSpares/fonts/fonts.mk

# Include Colt Prebuilts
include vendor/ColtSpares/prebuilts/prebuilts.mk

# Include Colt Themes
include vendor/ColtSpares/themes/themes.mk

# ColtOS Overlays
# Adding extras to our needs related to ThemePicker
DEVICE_PACKAGE_OVERLAYS += \
    vendor/ColtSpares/Overlays

# Let's ensure this gets merged on the final product files instead of RRO overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/ColtSpares/Overlays

# Misc
include vendor/ColtSpares/misc.mk
