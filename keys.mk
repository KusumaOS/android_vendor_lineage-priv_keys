ifneq (eng,$(TARGET_BUILD_VARIANT))
$(shell ln -sf ~/.android-certs/ vendor/lineage-priv/keys/.android-certs)
ifneq (,$(wildcard vendor/lineage-priv/keys/.android-certs/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage-priv/keys/.android-certs/releasekey
PRODUCT_OTA_PUBLIC_KEYS := vendor/lineage-priv/keys/.android-certs/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
endif
