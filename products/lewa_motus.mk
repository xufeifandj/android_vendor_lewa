# Inherit AOSP device configuration for motus.
$(call inherit-product, device/motorola/motus/motus.mk)

# Inherit some common lewamod stuff.
$(call inherit-product, vendor/lewa/products/common_lewa.mk)

$(call inherit-product, vendor/lewa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lewa_motus
PRODUCT_BRAND := motus
PRODUCT_DEVICE := motus
PRODUCT_MODEL := MB300
PRODUCT_MANUFACTURER := Motorola

# Release name and versioning
PRODUCT_RELEASE_NAME := BACKFLIP
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/lewa/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=motus_att_us TARGET_DEVICE=motus BUILD_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341




PRODUCT_PACKAGE_OVERLAYS += vendor/lewa/overlay/motus
