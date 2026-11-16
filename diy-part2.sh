#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.253/g' package/base-files/files/bin/config_generate

git clone https://github.com/KFERMercer/luci-app-tcpdump.git package/luci-app-tcpdump
git clone https://github.com/DongyangHu/luci-app-poweroff.git package/luci-app-poweroff
#Modify the build date label in the SSH login welcome screen
sed -i "s/R[0-9]\+\.[0-9]\+\.[0-9]\+/& ($(TZ='Asia/Shanghai' date +"%Y.%m.%d"))/g" package/lean/default-settings/files/zzz-default-settings
