include $(TOPDIR)/rules.mk

PKG_NAME:=saned-initd
PKG_VERSION:=1.0
PKG_RELEASE:=1
PKG_LICENSE:=GPL-3.0-or-later

include $(INCLUDE_DIR)/package.mk

define Package/saned-initd
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=init.d script for SANED 
	DEPENDS:=+sane-daemon
	PKGARCH:=all
endef

define Package/saned-initd/description
init.d script to start the SANED service
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/saned-initd/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/saned.init $(1)/etc/init.d/saned
endef

$(eval $(call BuildPackage,saned-initd))
