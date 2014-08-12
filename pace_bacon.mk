# Boot animation (XXX: find7s?)
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Specify phone tech before including full_phone
$(call inherit-product, vendor/pace/config/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/pace/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/pace/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/bacon.mk)


PRODUCT_DEVICE := bacon
PRODUCT_NAME := full_bacon
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:4.4.2/KVT49L/XNPH25R:user/release-keys PRIVATE_BUILD_DESC="bacon-user 4.4.2 KVT49L XNPH25R release-keys"
