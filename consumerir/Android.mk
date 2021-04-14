LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.ir@1.0-service-custom
LOCAL_INIT_RC := android.hardware.ir@1.0-service.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    service.cpp \
    ConsumerIr.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhardware \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    android.hardware.ir@1.0

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
