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

# 修改 SSH 登录欢迎界面的编译日期标签
sed -i "s/%D %V, %C/%D %V, %C (Built on $(TZ='Asia/Shanghai' date +"%Y.%m.%d"))/g" package/base-files/files/etc/banner

# 修改网页后台“固件版本”末尾的修订号显示
sed -i "s/%R/%R ($(TZ='Asia/Shanghai' date +"%Y.%m.%d"))/g" package/base-files/files/etc/openwrt_release
