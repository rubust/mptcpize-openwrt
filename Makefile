#
# Copyright (C) Frankie
#
# This is free software, licensed under the GPL 2 license.
#
# mptcpize for mptcp
#


include $(TOPDIR)/rules.mk

PKG_NAME:=mptcpize
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=git@github.com:rubust/mptcpize.git
PKG_SOURCE_DATE:=2023-06-27
PKG_SOURCE_VERSION:=8ef259f

include $(INCLUDE_DIR)/package.mk

define Package/mptcpize
  SECTION:=net
  CATEGORY:=Network
  TITLE:=mptcpize from mptcpd
  URL:=https://www.mptcp.dev/
endef

define Package/mptcpize/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/usr/lib/mptcpize
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mptcpize $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/libmptcpwrap.so $(1)/usr/lib/mptcpize
endef

$(eval $(call BuildPackage,mptcpize))

