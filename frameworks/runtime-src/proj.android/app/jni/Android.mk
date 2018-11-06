LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_SRC_FILES := \
../../../Classes/AppDelegate.cpp \
hellolua/main.cpp \
../../../Classes/PluginReviewLua.cpp \
../../../Classes/PluginReviewLuaHelper.cpp \
../../../Classes/SDKBoxLuaHelper.cpp \
../../../Classes/PluginSdkboxPlayLua.cpp \
../../../Classes/PluginSdkboxPlayLuaHelper.cpp \
../../../Classes/PluginSdkboxAdsLua.cpp \
../../../Classes/PluginSdkboxAdsLuaHelper.cpp \
../../../Classes/PluginIAPLua.cpp \
../../../Classes/PluginIAPLuaHelper.cpp \
../../../Classes/PluginGoogleAnalyticsLua.cpp \
../../../Classes/PluginAdColonyLua.cpp \
../../../Classes/PluginAdcolonyLuaHelper.cpp \
../../../Classes/PluginAdMobLua.cpp \
../../../Classes/PluginAdMobLuaHelper.cpp \
../../../Classes/PluginChartboostLua.cpp \
../../../Classes/PluginChartboostLuaHelper.cpp \
../../../Classes/PluginAppnextLua.cpp \
../../../Classes/PluginAppnextLuaHelper.cpp \
../../../Classes/PluginFacebookLua.cpp \
../../../Classes/PluginFacebookLuaHelper.cpp \
../../../Classes/PluginShareLua.cpp \
../../../Classes/PluginShareLuaHelper.cpp

LOCAL_CPPFLAGS := -DSDKBOX_ENABLED
LOCAL_LDLIBS := -landroid -llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes
LOCAL_SHARED_LIBRARIES := libadcolonyso libjsso

LOCAL_WHOLE_STATIC_LIBRARIES := sdkbox \
PluginReview \
PluginSdkboxPlay \
PluginSdkboxAds \
PluginIAP \
PluginGoogleAnalytics \
PluginAdColony \
PluginAdMob \
PluginChartboost \
PluginAppnext \
PluginFacebook \
PluginShare

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)
$(call import-add-path,$(LOCAL_PATH))

$(call import-add-path, $(LOCAL_PATH)/../../../../cocos2d-x)
$(call import-module, cocos/scripting/lua-bindings/proj.android)
$(call import-module, ./sdkbox)
$(call import-module, ./pluginreview)
$(call import-module, ./pluginsdkboxplay)
$(call import-module, ./pluginsdkboxads)
$(call import-module, ./pluginiap)
$(call import-module, ./plugingoogleanalytics)
$(call import-module, ./pluginadcolony)
$(call import-module, ./pluginadmob)
$(call import-module, ./pluginchartboost)
$(call import-module, ./pluginappnext)
$(call import-module, ./pluginfacebook)
$(call import-module, ./pluginshare)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
