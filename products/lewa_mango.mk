# Inherit device configuration for mango.
$(call inherit-product, device/semc/mango/device_mango.mk)

# Inherit some common lewamod stuff.
$(call inherit-product, vendor/lewa/products/common_lewa.mk)

# Include GSM stuff
$(call inherit-product, vendor/lewa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lewa_mango
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := mango
PRODUCT_MODEL := SK17i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SK17i BUILD_ID=4.0.2.A.0.42 BUILD_FINGERPRINT=SEMC/SK17i_1249-8062/SK17i:2.3.4/4.0.2.A.0.42/j_b_3w:user/release-keys PRIVATE_BUILD_DESC="SK17i-user 2.3.4 4.0.2.A.0.42 j_b_3w test-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=lewa_mango_defconfig

# Extra mango overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lewa/overlay/mango

# Add the Torch app
PRODUCT_PACKAGES += Torch


# BCM FM radio
#$(call inherit-product, vendor/lewa/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := XperiaMiniPro-SK17i
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/lewa/products/common_versions.mk

#
# Copy passion specific prebuilt files
#


