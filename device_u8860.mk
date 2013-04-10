$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)
$(call inherit-product, device/huawei/msm7x30-common/msm7x30-device.mk)
DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay

LOCAL_PATH := device/huawei/u8860

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
