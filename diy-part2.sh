#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
find package/ -type d -name luci-app-easymesh -exec rm -r {} \;
wget -P package/ https://hub.fastgit.org/coolsnowwolf/lede/tree/998bfc0485c44b0b7bfebf0d0bef79711c80a04b/package/lean/luci-app-easymesh
