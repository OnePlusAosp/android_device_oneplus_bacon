# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_bacon
PRODUCT_DEVICE := bacon
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/bacon/device.mk)
$(call inherit-product-if-exists, vendor/oneplus/bacon/bacon-vendor.mk)
