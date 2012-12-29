# Inherit AOSP device configuration for su950.
$(call inherit-product, device/lge/su950/su950.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_su950
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := su950
PRODUCT_MODEL := SU950
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=su950 BUILD_ID=GWK74 BUILD_FINGERPRINT=lge/su950/su950:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="su950-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Broadcom FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := OZ
PRODUCT_VERSION_DEVICE_SPECIFIC := OZ
-include vendor/cyanogen/products/common_versions.mk

#
# Copy su950 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
