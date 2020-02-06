LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Lawnchair
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Lawnchair.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := \
	lawnchair.permissions \
	lawnchair.hiddenapi_whitelist
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lawnchair.permissions
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := permissions/privapp-permissions-lawnchair.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lawnchair.hiddenapi_whitelist
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig
LOCAL_SRC_FILES := sysconfig/lawnchair-hiddenapi-package-whitelist.xml
include $(BUILD_PREBUILT)
