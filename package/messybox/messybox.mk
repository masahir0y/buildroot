################################################################################
#
# MessyBox
#
################################################################################

MESSYBOX_VERSION = v0.1
MESSYBOX_SITE = $(call github,masahir0y,messybox,$(MESSYBOX_VERSION))
MESSYBOX_LICENSE = GPLv2

define MESSYBOX_BUILD_CMDS
	$(MAKE) -C $(@D) CROSS_COMPILE=$(TARGET_CROSS)
endef

define MESSYBOX_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) PREFIX=/usr install
endef

$(eval $(generic-package))
