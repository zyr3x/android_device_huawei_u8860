$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay
PRODUCT_LOCALES += hdpi

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7630_surf \
    copybit.msm7630_surf \
    hwcomposer.msm7630_surf \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libI420colorconvert

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7630_surf \
    audio_policy.msm7630_surf \
    audio.a2dp.default \
    libaudioutils

# Lights
PRODUCT_PACKAGES += \
    lights.msm7630_surf

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.u8860

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Extra
PRODUCT_PACKAGES += \
    DisplayFix

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# init
PRODUCT_COPY_FILES += \
    device/huawei/u8860/root/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8860/root/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8860/root/init.qcom.sh:root/init.qcom.sh \
    device/huawei/u8860/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/huawei/u8860/root/ueventd.huawei.rc:root/ueventd.huawei.rc

# ETC
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8860/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8860/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8860/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8860/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8860/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8860/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8860/prebuilt/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/huawei/u8860/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8860/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8860/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/u8860/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml
    
# BLUETOOTH
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8860/prebuilt/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8860/prebuilt/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
    device/huawei/u8860/prebuilt/etc/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/u8860/prebuilt/etc/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    device/huawei/u8860/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    
# WIFI
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8860/prebuilt/wifi/nvram.txt:system/wifi/nvram.txt \
    device/huawei/u8860/prebuilt/wifi/dhd.ko:system/wifi/dhd.ko

# Modules
PRODUCT_COPY_FILES += \
	device/huawei/u8860/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	device/huawei/u8860/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
	device/huawei/u8860/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
	device/huawei/u8860/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	device/huawei/u8860/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	device/huawei/u8860/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/huawei/u8860/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
	device/huawei/u8860/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
	device/huawei/u8860/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
	device/huawei/u8860/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
	device/huawei/u8860/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
	device/huawei/u8860/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
	device/huawei/u8860/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
	device/huawei/u8860/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
	device/huawei/u8860/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
	device/huawei/u8860/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
	device/huawei/u8860/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
	device/huawei/u8860/modules/qce.ko:system/lib/modules/qce.ko \
	device/huawei/u8860/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/huawei/u8860/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/huawei/u8860/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
	device/huawei/u8860/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
	device/huawei/u8860/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko
	
# firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/huawei/u8860/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/huawei/u8860/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/huawei/u8860/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/huawei/u8860/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/huawei/u8860/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/huawei/u8860/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8860/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8860/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/huawei/u8860/prebuilt/etc/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex

# KEY
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/usr/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/huawei/u8860/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8860/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/huawei/u8860/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/huawei/u8860/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8860/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8860/prebuilt/usr/idc/atmel-rmi-touchscreen.idc:system/usr/idc/atmel-rmi-touchscreen.idc \
    device/huawei/u8860/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc

 # fix front camera
 PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/bin/mediaserver:system/bin/mediaserver
    
$(call inherit-product, build/target/product/full.mk)
#$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
