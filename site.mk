GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-authorized-keys \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-core \
	gluon-config-mode-hostname \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-filter-multicast \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-mesh-vpn-fastd \
	gluon-next-node \
	gluon-radvd \
	gluon-setup-mode \
	ffharz-gluon-status-page \
	iputils-ping6 \
	iwinfo \
	iptables \
	firewall \
	haveged \
	ffho-node-tuning\
	ffho-autoupdater-wifi-fallback\
	ffho-autoupdater-wifi-fallback-legacy



DEFAULT_GLUON_RELEASE := 0.8.2.2~exp$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= experimental 
export GLUON_BRANCH

GLUON_TARGET ?= ar71xx-generic
export GLUON_TARGET

GLUON_LANGS ?= de en
