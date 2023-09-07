#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

# Install required packages
pacman -Sy fcitx5-im fcitx5-chinese-addons adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk

# Append configuration to /etc/environment
echo "GTK_IM_MODULE=fcitx" >> /etc/environment
echo "QT_IM_MODULE=fcitx" >> /etc/environment
echo "XMODIFIERS=@im=fcitx" >> /etc/environment

# Set the config dir
FCITX_CONFIG_DIR="$HOME/.config/fcitx5"

# Modify Cloud Pinyin settings
CLOUD_PINYIN_CONFIG="$FCITX_CONFIG_DIR/conf/cloudpinyin.conf"
sed -i 's/MinimumPinyinLength=4/MinimumPinyinLength=2/' "$CLOUD_PINYIN_CONFIG"
sed -i 's/Backend=GoogleCN/Backend=Baidu/' "$CLOUD_PINYIN_CONFIG"

echo "Installation and configuration completed. Please restart your session or reboot for changes to take effect."
