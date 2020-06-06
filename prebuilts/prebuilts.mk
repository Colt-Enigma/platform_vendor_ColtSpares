LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Colt packages
PRODUCT_PACKAGES += \
    Lawnchair \
    Longshot \
    OPScreenRecorder \
    PixelThemesStub2019 \
    SafetyHubPrebuilt \
    SoundPickerPrebuilt \
    WeatherIcons

# Lawnchair
PRODUCT_COPY_FILES += \
    vendor/ColtSpares/prebuilts/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/ColtSpares/prebuilts/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml
