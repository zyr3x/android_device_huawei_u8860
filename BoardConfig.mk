# inherit from the proprietary version
-include vendor/huawei/u8860/BoardConfigVendor.mk
-include device/huawei/msm7x30-common/BoardConfigCommon.mk

TARGET_MSM7X30_COMMON := true

TARGET_BOOTLOADER_BOARD_NAME := u8860
TARGET_OTA_ASSERT_DEVICE := u8860,U8860,hwu8860

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/u8860/releasetools/ota_from_target_files
