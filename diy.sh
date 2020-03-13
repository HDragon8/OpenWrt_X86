#!/bin/bash
#=================================================
# 参考以下项目
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
# 复制自p3terx
# https://github.com/destan19/GDOCK/blob/master/diy.sh
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.30.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/OpenWrt/noodles/g' package/base-files/files/bin/config_generate

# Modify default WiFi SSID
sed -i 's/OpenWrt/noodles/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify the version number
sed -i 's/OpenWrt/noodles build $(date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

# 修改时区
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

