$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/triumph/triumph-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/triumph/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/motorola/triumph/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    Gallery3d \
    SpareParts \
    Term \
    gps.triumph \
    gralloc.msm7x30 \
    lights.msm7x30 \
    overlay.default \
    libOmxCore \
    libOmxVenc \
    libOmxVdec

# Init files
PRODUCT_COPY_FILES += \
    device/motorola/triumph/init.qcom.rc:root/init.qcom.rc \
    device/motorola/triumph/ueventd.qcom.rc:root/ueventd.qcom.rc

# vold
PRODUCT_COPY_FILES += \
    device/motorola/triumph/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# init scripts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/motorola/triumph/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/motorola/triumph/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/motorola/triumph/prebuilt/etc/init.qcom.sdio.sf6.sh:/system/etc/init.qcom.sdio.sf6.sh \
    device/motorola/triumph/prebuilt/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/motorola/triumph/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# Keychars
PRODUCT_COPY_FILES += \
    device/motorola/triumph/keychars/fih_headsethook.kcm.bin:system/usr/keychars/fih_headsethook.kcm.bin \
    device/motorola/triumph/keychars/fih_ringswitch.kcm.bin:system/usr/keychars/fih_ringswitch.kcm.bin \
    device/motorola/triumph/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/motorola/triumph/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/motorola/triumph/keychars/sf6_kybd.kcm.bin:system/usr/keychars/sf6_kybd.kcm.bin \
    device/motorola/triumph/keychars/sf8_kybd.kcm.bin:system/usr/keychars/sf8_kybd.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad_qwerty.kcm.bin:system/usr/keychars/surf_keypad_qwerty.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad_numeric.kcm.bin:system/usr/keychars/surf_keypad_numeric.kcm.bin

# Keylayouts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/keylayout/fih_headsethook.kl:system/usr/keylayout/fih_headsethook.kl \
    device/motorola/triumph/keylayout/fih_ringswitch.kl:system/usr/keylayout/fih_ringswitch.kl \
    device/motorola/triumph/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/motorola/triumph/keylayout/fbx_kybd.kl:system/usr/keylayout/fbx_kybd.kl \
    device/motorola/triumph/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/motorola/triumph/keylayout/sf6_kybd.kl:system/usr/keylayout/sf6_kybd.kl \
    device/motorola/triumph/keylayout/sf8_kybd.kl:system/usr/keylayout/sf8_kybd.kl \
    device/motorola/triumph/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/motorola/triumph/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/triumph/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/motorola/triumph/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Video firmware
PRODUCT_COPY_FILES += \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/motorola/triumph/prebuilt/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/motorola/triumph/prebuilt/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Wifi
PRODUCT_COPY_FILES += \
    device/motorola/triumph/modules/libra.ko:/system/lib/modules/libra.ko \
    device/motorola/triumph/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/motorola/triumph/modules/cpaccess.ko:/system/lib/modules/cpaccess.ko \
    device/motorola/triumph/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/motorola/triumph/modules/aes_generic.ko:/system/lib/modules/aes_generic.ko \
    device/motorola/triumph/prebuilt/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/motorola/triumph/prebuilt/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/motorola/triumph/prebuilt/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/motorola/triumph/prebuilt/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/motorola/triumph/prebuilt/etc/hostapd/hostapd.conf:/system/etc/hostapd/hostapd.conf \
    device/motorola/triumph/prebuilt/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/motorola/triumph/prebuilt/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# xml config
PRODUCT_COPY_FILES += \
    device/motorola/triumph/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=32m \
    persist.sys.use_dithering=1 \
    ro.sf.lcd_density=240 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-motorola \
    ro.com.google.clientidbase.yt=android-motorola \
    ro.com.google.clientidbase.am=android-motorola \
    ro.com.google.clientidbase.ms=android-motorola \
    ro.com.google.clientidbase.gmm=android-motorola

# Triumph uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := motorola_triumph
PRODUCT_DEVICE := triumph
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := WX435
PRODUCT_MANUFACTURER := Motorola
