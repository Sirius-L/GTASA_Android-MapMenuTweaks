LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# 关键：确保包含 aml-sdk 根目录
LOCAL_C_INCLUDES += $(LOCAL_PATH)/aml-sdk
LOCAL_C_INCLUDES += $(LOCAL_PATH)/sautils-sdk
LOCAL_C_INCLUDES += $(LOCAL_PATH)/.

LOCAL_CPP_EXTENSION := .cpp
LOCAL_MODULE    := MapMenuTweaks
LOCAL_SRC_FILES := main.cpp

LOCAL_CFLAGS += -O2 -mfloat-abi=softfp -DNDEBUG -std=c++17
LOCAL_LDLIBS += -llog

include $(BUILD_SHARED_LIBRARY)
