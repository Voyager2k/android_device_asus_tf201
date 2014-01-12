#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := false

# Cardhu HAL libraries
BOARD_HAL_STATIC_LIBRARIES := \
    libdumpstate.cardhu

# inherit from the proprietary version
-include vendor/asus/tf201/BoardConfigVendor.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Legacy CFLAGS
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DICS_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := cardhu

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Boot/Recovery image settings
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE :=

# EGL settings
BOARD_EGL_CFG := device/asus/tf201/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/asus/tf201/bluetooth/vnd_tf201.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/asus/tf201/bluetooth

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/asus/tf201
TARGET_KERNEL_CONFIG := tegra3_android_defconfig

# Prebuilt Kernel Fallback
TARGET_PREBUILT_KERNEL := device/asus/tf201/kernel

# Custom Tools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf201/releasetools/tf201_ota_from_target_files

# Recovery Options
BOARD_CUSTOM_BOOTIMG_MK := device/asus/tf201/recovery/recovery.mk
TARGET_RELEASETOOLS_EXTENSIONS := device/asus/tf201/releasetools
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_FSTAB := device/asus/tf201/ramdisk/fstab.cardhu
RECOVERY_FSTAB_VERSION := 2
BOARD_RECOVERY_SWIPE := true

# SELINUX Defines
BOARD_SEPOLICY_DIRS := \
    device/asus/tf201/sepolicy

BOARD_SEPOLICY_UNION := \
    file_contexts \
    genfs_contexts \
    app.te \
    btmacreader.te \
    device.te \
    drmserver.te \
    init_shell.te \
    file.te \
    rild.te \
    sensors_config.te \
    shell.te \
    surfaceflinger.te \
    system.te \
    zygote.te

BOARD_HARDWARE_CLASS := device/asus/tf201/cmhw/
