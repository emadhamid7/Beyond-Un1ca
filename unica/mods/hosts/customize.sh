# Consolidating and extending hosts files from several well-curated sources.
# Extensions for blocking porn, ads on social media, and other categories.
# source: https://raw.githubusercontent.com/StevenBlack/hosts

LOG "- Downloading unified hosts file"
DOWNLOAD_FILE "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" \
    "$WORK_DIR/system/system/etc/hosts"
