LOCAL_PATH := $(call my-dir)

################################################################################
# gz-common
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-common
LOCAL_DESCRIPTION := An audio-visual library supports processing audio and video files, a graphics library can load a variety 3D mesh file formats into a generic in-memory representation, and the core library of Ignition Common contains functionality that spans Base64 encoding/decoding to thread pools

LOCAL_LIBRARIES := \
	gz-cmake \
	gz-math \
	gz-utils \
	tinyxml2 \
	gdal \
	freeimage

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False \
	-DFREEIMAGE_RUNS=1 \
	-DFREEIMAGE_RUNS__TRYRUN_OUTPUT=""

LOCAL_CMAKE_CONFIGURE_ENV +=\
	PKG_CONFIG_PATH=$(TARGET_OUT_STAGING)/usr/lib/pkgconfig:$(TARGET_OUT_STAGING)/usr/share/pkgconfig


LOCAL_CXXFLAGS := -std=c++17

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/common7

LOCAL_EXPORT_LDLIBS := -lgz-common

include $(BUILD_CMAKE)

