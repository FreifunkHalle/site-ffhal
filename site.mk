GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	haveged \
	iptables \
	iwinfo \
	ffharz-reboot \
	ffho-node-tuning

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
