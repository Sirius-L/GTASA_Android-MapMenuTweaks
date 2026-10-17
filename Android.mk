LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# 包含 AML SDK 和 SAUtils SDK 的头文件目录
LOCAL_C_INCLUDES += $(LOCAL_PATH)/aml-sdk
LOCAL_C_INCLUDES += $(LOCAL_PATH)/sautils-sdk
LOCAL_C_INCLUDES += $(LOCAL_PATH)/.

LOCAL_CPP_EXTENSION := .cpp
LOCAL_MODULE    := MapMenuTweaks

# 【关键修改】加入 AML SDK 中的 logger.cpp 和 config.cpp
LOCAL_SRC_FILES := main.cpp aml-sdk/mod/logger.cpp aml-sdk/mod/config.cpp

LOCAL_CFLAGS += -O2 -mfloat-abi=softfp -DNDEBUG -std=c++17
LOCAL_LDLIBS += -llog

include $(BUILD_SHARED_LIBRARY)
