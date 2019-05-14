#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/OpenWrt
  NAME:=OpenWrt Profile
  PACKAGES:= \
	-kmod-e1000e -kmod-e1000 -kmod-r8169 \
	kmod-igb \
	luci \
	-ppp -ppp-mod-pppoe
endef

define Profile/OpenWrt/Description
	OpenWrt package set same with OpenWrt released.
endef
$(eval $(call Profile,OpenWrt))
