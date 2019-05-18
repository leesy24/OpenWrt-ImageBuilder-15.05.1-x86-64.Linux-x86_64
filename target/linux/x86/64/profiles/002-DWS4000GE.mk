#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/DWS4000GE
	NAME:=DWS4000GE Profile
	VERSION:=v4.32
	PACKAGES:= \
		avahi-daemon-service-http avahi-daemon-service-ssh avahi-nodbus-daemon \
		bc \
		coreutils-stty \
		-dosfsck -dosfslabel \
		ethtool \
		fdisk \
		-firewall \
		ip \
		-ip6tables -iptables \
		iw iwinfo \
		kmod-ath kmod-ath5k kmod-ath9k kmod-ath9k-common \
		-kmod-button-hotplug \
		kmod-cfg80211 \
		-kmod-e1000e -kmod-e1000 \
		-kmod-fs-msdos kmod-fs-vfat \
		kmod-hwmon-lm90 \
		kmod-igb \
		-kmod-ipt-conntrack -kmod-ipt-core \
		-kmod-ledtrig-heartbeat -kmod-ledtrig-gpio -kmod-ledtrig-netdev \
		kmod-mac80211 \
		-kmod-nf-nathelper \
		kmod-nls-cp1250 kmod-nls-cp1251 kmod-nls-cp437 kmod-nls-cp775 \
		kmod-nls-cp850 kmod-nls-cp852 kmod-nls-cp862 kmod-nls-cp864 \
		kmod-nls-cp866 kmod-nls-cp932 kmod-nls-iso8859-1 kmod-nls-iso8859-13 \
		kmod-nls-iso8859-15 kmod-nls-iso8859-2 kmod-nls-iso8859-6 \
		kmod-nls-iso8859-8 kmod-nls-koi8r kmod-nls-utf8 \
		-kmod-r8169 \
		kmod-stp \
		kmod-usb-core kmod-usb-hid \
		kmod-usb-ohci-pci \
		kmod-usb-serial-ark3116 kmod-usb-serial-belkin kmod-usb-serial-ch341 \
		kmod-usb-serial-cp210x kmod-usb-serial-cypress-m8 kmod-usb-serial-ftdi \
		kmod-usb-serial-garmin kmod-usb-serial-keyspan kmod-usb-serial-mct \
		kmod-usb-serial-mos7720 kmod-usb-serial-option kmod-usb-serial-oti6858 \
		kmod-usb-serial-pl2303 kmod-usb-serial-qualcomm \
		kmod-usb-serial-sierrawireless kmod-usb-serial-simple \
		kmod-usb-serial-ti-usb -kmod-usb-serial-wwan \
		kmod-usb-storage-extras \
		kmod-usb-uhci \
		kmod-usb2 \
		lftp \
		libiwinfo-lua \
		libncurses \
		luci-base luci-mod-admin-full luci-theme-bootstrap \
		-mkdosfs \
		-odhcp6c -odhcpd \
		pciutils \
		-ppp -ppp-mod-pppoe \
		swconfig \
		uhttpd uhttpd-mod-ubus \
		usbreset usbutils \
		-wpad-mini wpad
	FILES_COPY:=files/DWS4000GE/copy/.
	FILES_REMOVE:=files/DWS4000GE/remove.lst
	SERIAL_BAUDRATE:=38400
endef

define Profile/DWS4000GE/Description
	DWS4000GE GigaBit-Ethernet LAN to WiFi client bridge package set based on Geode board.
endef
$(eval $(call Profile,DWS4000GE))
