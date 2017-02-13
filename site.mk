GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-core \
	gluon-config-mode-hostname \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-status-page \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-filter-multicast \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-radv-filterd \
	gluon-setup-mode \
	iputils-ping6 \
	iwinfo \
	iptables \
	firewall \
	haveged

DEFAULT_GLUON_RELEASE := 0.8.35~exp$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= experimental 
export GLUON_BRANCH

GLUON_TARGET ?= ar71xx-generic
#für D-Link DIR-860L / BROKEN=1 kompilieren
#GLUON_TARGET ?= ramips-mt7621 
export GLUON_TARGET
#GLUON_BUILDDIR = build/$(GLOUN_TARGET)/

GLUON_LANGS ?= de en
GLUON_REGION = eu
GLUON_ATH10K_MESH = 11s
BROKEN = 1 
