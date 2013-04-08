# inherit from the proprietary version
-include vendor/huawei/u8860/BoardConfigVendor.mk
-include device/huawei/msm7x30-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := u8860
TARGET_OTA_ASSERT_DEVICE := u8860,U8860,hwu8860

