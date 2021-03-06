# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version

-include vendor/huawei/u9508/BoardConfigVendor.mk


# Huawei U9508 platform
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_PAGESIZE := 2048 
BOARD_KERNEL_BASE := 0x8000

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u9508/recovery/recovery_ui.c
#BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u9508/recovery/minui/graphics.c

# filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PREBUILT_KERNEL := device/huawei/u9508/kernel

#Graphics
BOARD_EGL_CFG := device/huawei/u9508/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Probably is better without it
# HWComposer
#BOARD_USES_HWCOMPOSER := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"

#Bluetooth
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
#BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
#USE_CAMERA_STUB := false
# BOARD_USE_REVERSE_FFC := true

# Gps

# Audio
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_AUDIO_V2 := true
#BOARD_PREBUILT_LIBAUDIO := true
#TARGET_PROVIDES_LIBAUDIO := true
#BUILD_WITHOUT_PV := false

# HDMI
#TARGET_HAVE_HDMI_OUT := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := tavarua


# Vold
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

# miscellaneus
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := k3v2oem1
#TARGET_BOOTLOADER_BOARD_NAME := viva
#TARGET_OTA_ASSERT_DEVICE := viva,u9508

