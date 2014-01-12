# Inherit device configuration for tf201.
$(call inherit-product, device/asus/tf201/full_tf201.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/carbon/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := carbon_tf201
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := tf201
PRODUCT_MODEL := Transformer Prime
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.1.1/JRO03C/US_epad-10.4.2.18-20121122:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.1.1 JRO03C US_epad-10.4.2.18-20121122 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := tf201
