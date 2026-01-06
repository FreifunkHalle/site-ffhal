# site-ffhal

Site-Konfiguration für Freifunk Halle basierend auf Gluon v2025.1.x-halle

## Voraussetzungen

Für den Build-Prozess werden folgende Pakete benötigt:

```bash
sudo apt install git build-essential libncurses-dev zlib1g-dev gawk gettext libssl-dev xsltproc rsync qemu-utils unzip wget python3
```

## eigene Images bauen

Die drei benötigten Repositories klonen:

```bash
mkdir -p ~/freifunk
cd ~/freifunk
git clone https://github.com/FreifunkHalle/site-ffhal
git clone https://github.com/FreifunkHalle/gluon-package
git clone https://github.com/FreifunkHalle/gluon-changes
```

### site.conf und Freifunk-Halle Anpassungen verlinken

```bash
cd ~/freifunk/gluon-changes
ln -s ~/freifunk/site-ffhal/ site
cd ~/freifunk/gluon-changes/package
ln -s ~/freifunk/gluon-package/ffhal-ssh-keys/
```

### Firmware bauen

```bash
cd ~/freifunk/gluon-changes
make update
make GLUON_TARGET=ath79-generic -j 8 || echo ath79-generic build failed
make GLUON_TARGET=ath79-mikrotik -j 8 || echo ath79-mikrotik build failed
make GLUON_TARGET=ath79-nand -j 8 || echo ath79-nand build failed
# rpi1
make GLUON_TARGET=bcm27xx-bcm2708 -j 8 || echo bcm27xx-bcm2708 build failed
# rpi2
make GLUON_TARGET=bcm27xx-bcm2709 -j 8 || echo bcm27xx-bcm2709 build failed
# rpi3
make GLUON_TARGET=bcm27xx-bcm2710 -j 8 || echo bcm27xx-bcm2710 build failed
# rpi4
make GLUON_TARGET=bcm27xx-bcm2711 -j 8 || echo bcm27xx-bcm2711 build failed
make GLUON_TARGET=ipq40xx-generic -j 8 || echo ipq40xx-generic build failed
make GLUON_TARGET=ipq40xx-mikrotik -j 8 || echo ipq40xx-mikrotik build failed
make GLUON_TARGET=ipq806x-generic -j 8 || echo ipq806x-generic build failed
make GLUON_TARGET=kirkwood-generic -j 8 || echo kirkwood-generic build failed
make GLUON_TARGET=lantiq-xrx200 -j 8 || echo lantiq-xrx200 build failed
make GLUON_TARGET=lantiq-xrx200_legacy -j 8 || echo lantiq-xrx200_legacy build failed
make GLUON_TARGET=lantiq-xway -j 8 || echo lantiq-xway build failed
make GLUON_TARGET=mediatek-filogic -j 8 || echo mediatek-filogic build failed
make GLUON_TARGET=mediatek-mt7622 -j 8 || echo mediatek-mt7622 build failed
make GLUON_TARGET=mpc85xx-p1010 -j 8 || echo mpc85xx-p1010 build failed
make GLUON_TARGET=mpc85xx-p1020 -j 8 || echo mpc85xx-p1020 build failed
make GLUON_TARGET=mvebu-cortexa53-j 8 || echo mvebu-cortexa53 build failed
make GLUON_TARGET=mvebu-cortexa9 -j 8 || echo mvebu-cortexa9 build failed
make GLUON_TARGET=qualcommax-ipq807x -j 8 || echo qualcommax-ipq807x build failed
make GLUON_TARGET=ramips-mt7620 -j 8 || echo ramips-mt7620 build failed
make GLUON_TARGET=ramips-mt7621 -j 8 || echo ramips-mt7621 build failed
make GLUON_TARGET=ramips-mt76x8 -j 8 || echo ramips-mt76x8 build failed
make GLUON_TARGET=rockchip-armv8 -j 8 || echo rockchip-armv8 build failed
make GLUON_TARGET=sunxi-cortexa7 -j 8 || echo sunxi-cortexa7 build failed
make GLUON_TARGET=x86-generic -j 8 || echo x86-generic build failed
make GLUON_TARGET=x86-64 -j 8 || echo x86-64 build failed
```

### Weitere Optionen beim Firmwarebauen (to do)

Mit Autoupdater:

```bash
make GLUON_TARGET=$TARGET GLUON_AUTOUPDATER_BRANCH=$BRANCH GLUON_AUTOUPDATER_ENABLED=1
```

verfügbare `$BRANCH` sind:
- beta
- experimental
- stable

verfügbare `$PROFILE` findest du unter `gluon/target/$TARGET/profiles.mk`

In [CHANGELOG.md](CHANGELOG.md) liegen die Infos zu den Änderungen.

## Image signieren (to do)

- ecdsautils muss installiert und eingerichtet werden, damit die Firmware signiert werden kann
- das Manifest muss erstellt und dann signiert werden

```bash
make manifest GLUON_BRANCH=experimental
```

- wenn build länger zurückliegt muss das Release Datum mit `GLUON_RELEASE` mit angegeben werden

```bash
make manifest GLUON_BRANCH=experimental GLUON_RELEASE=2023.2.4.1~20260117
```

## Weitere Informationen

- [Gluon Dokumentation](https://gluon.readthedocs.io/) – Umfassende Dokumentation zum Gluon Framework
- [Gluon Target List](https://gluon.readthedocs.io/en/latest/user/supported_devices.html) – Liste aller unterstützten Geräte
- [Freifunk Halle Website](https://halle.freifunk.net/)
