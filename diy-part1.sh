#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Add a feed source
git clone https://github.com/KFERMercer/luci-app-tcpdump.git package/luci-app-tcpdump
git clone https://github.com/DongyangHu/luci-app-poweroff.git package/luci-app-poweroff
