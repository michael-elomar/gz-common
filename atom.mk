
LOCAL_PATH := $(call my-dir)

################################################################################
# ignition-common
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ign-common
LOCAL_DESCRIPTION := An audio-visual library supports processing audio and video files, a graphics library can load a variety 3D mesh file formats into a generic in-memory representation, and the core library of Ignition Common contains functionality that spans Base64 encoding/decoding to thread pools

LOCAL_LIBRARIES := \
	ign-cmake \
	ign-math

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False \
	-DFREEIMAGE_RUNS=1 \
	-DFREEIMAGE_RUNS__TRYRUN_OUTPUT=""

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/ignition/common3

LOCAL_EXPORT_LDLIBS := -lignition-common3

include $(BUILD_CMAKE)

