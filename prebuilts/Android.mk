LOCAL_PATH := $(call my-dir)

# ColtPapers
include $(CLEAR_VARS)
LOCAL_MODULE := ColtPapers
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# Lawnchair
include $(CLEAR_VARS)
LOCAL_MODULE := Lawnchair
LOCAL_SRC_FILES := priv-app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Home Launcher2 Launcher3 Launcher3QuickStep
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_DEX_PREOPT := false
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)

# OPScreenRecorder
include $(CLEAR_VARS)
LOCAL_MODULE := OPScreenRecorder
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
OCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)

# QPGallery
include $(CLEAR_VARS)
LOCAL_MODULE := QPGallery
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := priv-app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)

# SatetyHubPrebuilt
include $(CLEAR_VARS)
LOCAL_MODULE := SafetyHubPrebuilt
LOCAL_OVERRIDES_PACKAGES := EmergencyInfo
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := priv-app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true
LOCAL_REQUIRED_MODULES := EmergencyInfoGoogleNoUi
include $(BUILD_PREBUILT)

# WeatherIcons
include $(CLEAR_VARS)
LOCAL_MODULE := WeatherIcons
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)
