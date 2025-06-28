PRODUCT_MAKEFILES := $(LOCAL_PATH)/omni_RMX3782.mk

PRODUCT_NAME := omni_RMX3782
PRODUCT_DEVICE := RMX3782
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3782
PRODUCT_MANUFACTURER := realme

# Inherit from the device tree
$(call inherit-product, device/realme/RMX3782/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# Inherit TWRP common config
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3782 \
    PRODUCT_NAME=omni_RMX3782
