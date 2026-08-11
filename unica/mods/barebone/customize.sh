if [ ! "$(GET_PROP "system" "ro.unica.codename")" ]; then
    # set barebone as rom codename
    ROM_CODENAME="$(basename "$MODPATH")"
    SET_PROP "system" "ro.unica.codename" "${ROM_CODENAME^}"
    unset ROM_CODENAME
fi

LOG_STEP_IN "- Disabling AI"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI" "TRUE"
LOG_STEP_OUT
