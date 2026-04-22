LOCAL_PATH := device/samsung/a13

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd


PRODUCT_PROPERTY_OVERRIDES +=\
	ro.fastbootd.available=true
	ro.boot.dynamic_partitions=true 
	

TW_INCLUDE_FASTBOOTD := true

PRODUCT_HOST_PACKAGES += \
    libandroidicu


TW_INCLUDE_PYTHON := true
TW_EXCLUDE_APEX := trueLOCAL_PATH := device/samsung/a13
