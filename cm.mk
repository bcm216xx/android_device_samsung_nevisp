# Release name
PRODUCT_RELEASE_NAME := GalaxyFame

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/nevisp/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nevisp
PRODUCT_NAME := cm_nevisp
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S6810

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=nevisp BUILD_FINGERPRINT=samsung/nevispxx/nevisp:4.1.2/JZO54K/S6810PXXAMJ1:user/release-keys PRIVATE_BUILD_DESC="nevisp-user 4.1.2 JZO54K S6810PXXAMJ1 release-keys"
