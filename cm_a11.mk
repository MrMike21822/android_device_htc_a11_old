# CM Common
$(call inherit-product, vendor/cm/config/common.mk)

# CM Telephony
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := a11

# Inherit device configuration
$(call inherit-product, device/htc/a11/device_a11.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a11
PRODUCT_NAME := cm_a11
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire 510
PRODUCT_MANUFACTURER := htc
