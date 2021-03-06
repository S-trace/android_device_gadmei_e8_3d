ifeq ($(strip $(BOARD_USES_USB_PM)),true)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := usbpower
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := usbpower.cpp
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := usbtestpm
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := logwrapper.c usbtestpm.cpp
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := usbpower_mx_iddq
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := usbpower_mx_iddq.cpp
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := usbtestpm_mx
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := logwrapper.c usbtestpm_mx.cpp
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := usbtestpm_mx_iddq
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := logwrapper.c usbtestpm_mx_iddq.cpp
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_EXECUTABLE)
endif

