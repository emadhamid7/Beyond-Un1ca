LOG_STEP_IN "- Adding BSOH feature"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_GALAXYDIAGNOSTICS" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_SBP_INFO_SETTINGS" "TRUE"

SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController.smali" \
    "return" "getAvailabilityStatus()I" "0"
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/SecBatteryFirstUseDatePreferenceController.smali" \
    "return" "getAvailabilityStatus()I" "0"
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/SecBatteryInfoFragment.smali" \
    "replaceall" "SM-A236B" "$(GET_PROP "system" "ro.product.system.model")"
LOG_STEP_OUT