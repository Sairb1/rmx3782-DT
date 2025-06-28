#
# Realme RMX3782 TWRP device configuration
#

# Include custom recovery RC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.recovery.project.rc:root/init.recovery.project.rc

# A/B OTA postinstall (if needed for future full ROM builds)
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot HAL and update engine (not needed for recovery, but okay to leave if you plan full ROMs later)
PRODUCT_PACKAGES += \
    bootctrl.mt6835 \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service


