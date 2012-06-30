# Inherit AOSP device configuration for n880.
$(call inherit-product, device/zte/n880/device_n880.mk)

# Inherit some common lewamod stuff.
$(call inherit-product, vendor/lewa/products/common_lewa.mk)

# Include GSM stuff
$(call inherit-product, vendor/lewa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lewa_n880
PRODUCT_BRAND := zte
PRODUCT_DEVICE := n880
PRODUCT_MODEL := ZTE-C N880
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=n880 BUILD_ID=GWK74 BUILD_DISPLAY_ID=GWK74 
BUILD_FINGERPRINT=google/passion/passion:2.3.7/GWK74/121341:user/release-keys 
PRIVATE_BUILD_DESC="passion-user 2.3.7 GWK74 121341 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := N880
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/lewa/products/common_versions.mk

#
# Copy legend specific prebuilt files
#


