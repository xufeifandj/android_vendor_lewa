# Inherit device configuration for olympus.
$(call inherit-product, device/motorola/olympus/olympus.mk)

# Inherit some common lewamod stuff.
$(call inherit-product, vendor/lewa/products/common_lewa.mk)

# Include GSM stuff
$(call inherit-product, vendor/lewa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lewa_olympus
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := olympus
PRODUCT_MODEL := MB860
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=MOTO PRODUCT_NAME=olyatt BUILD_ID=4.5.91 BUILD_PRODUCT=olyatt BUILD_FINGERPRINT=MOTO/olyatt/olympus:2.3.4/4.5.91/110625:user/release-keys PRIVATE_BUILD_DESC="olympus-user 2.3.4 4.5.91 110625 release-keys"

# Extra Olympus overlay
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/lewa/overlay/olympus \
#	vendor/lewa/overlay/qhd

PRODUCT_RELEASE_NAME := Olympus
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/lewa/products/common_versions.mk

#
# Copy hdpi specific prebuilt files
#


