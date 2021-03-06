# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

LOCAL_PATH := device/samsung/janice

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is HDPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Packages
PRODUCT_PACKAGES += \
    GalaxyS2Settings

# RIL
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/manuf_id.cfg:/system/etc/AT/manuf_id.cfg \
   $(LOCAL_PATH)/configs/model_id.cfg:/system/etc/AT/model_id.cfg \
   $(LOCAL_PATH)/configs/system_id.cfg:/system/etc/AT/system_id.cfg

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/usr/keylayout/janice-kp.kl:system/usr/keylayout/janice-kp.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl

# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/janice/janice-vendor.mk)
