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
#sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

#5.14超频到 1100Mhz
cp -f files/102-mt7621-fix-cpu-clk-add-clkdev.patch target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch

#切换ramips内核到5.10
#sed -i "s/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g" target/linux/ramips/Makefile
#5.10超频到 1100Mhz
#cp -f files/322-mt7621-fix-cpu-clk-add-clkdev.patch target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch
