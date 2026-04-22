DEVICE_PATH := device/samsung/a13

# Release name
PRODUCT_RELEASE_NAME := a13

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a13/device.mk)

- PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)
+ PRODUCT_COPY_FILES += $(call cc_prebuilt_binary, sgdisk)
+ PRODUCT_COPY_FILES += $(call cc_prebuilt_binary, cgdisk)
+ PRODUCT_COPY_FILES += $(call cc_prebuilt_binary, gdisk)
+ PRODUCT_COPY_FILES += $(call cc_prebuilt_binary, fixparts)
+ PRODUCT_COPY_FILES += $(call cc_prebuilt_binary, lz4)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a13
PRODUCT_NAME := twrp_a13
PRODUCT_MODEL := SM-A135x
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Zorin 
