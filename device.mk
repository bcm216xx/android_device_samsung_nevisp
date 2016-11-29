# Call up some makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/samsung/nevisp/nevisp-vendor.mk)
$(call inherit-product, device/samsung/rhea-common/rhea.mk)

# MDPI assets
PRODUCT_AAPT_CONFIG := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)

# Init file
PRODUCT_PACKAGES += \
  init.rhea_ss_nevisp.rc \
  fstab.rhea_ss_nevisp \
  init.recovery.rhea_ss_nevisp.rc \
  ueventd.rhea_ss_nevisp.rc

# display prop for nevisp
PRODUCT_PROPERTY_OVERRIDES += \
  ro.sf.lcd_density=160 \
  ro.lcd_brightness=170 \
  ro.lcd_min_brightness=20

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_nevisp
PRODUCT_DEVICE := nevisp
