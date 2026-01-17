# site-ffhal

Site-Konfiguration für Freifunk Halle basierend auf Gluon v2023.2.x

## Voraussetzungen

Für den Build-Prozess werden folgende Pakete benötigt:

```bash
sudo apt install git build-essential libncurses-dev zlib1g-dev gawk unzip wget python3
```

## eigene Images bauen
Diese drei Repositories in einen Bau-Ordner klonen, z.B. ~/freifunk/ (einen ssh-Key im github hinterlegen vorher):
```
git clone git@github.com:FreifunkHalle/site-ffhal.git
git clone git@github.com:FreifunkHalle/gluon-package.git
git clone git@github.com:FreifunkHalle/gluon-changes.git
```

### site.conf und Freifunk-Halle Anpassungen verlinken
```
~/freifunk/gluon-changes$ ln -s ~/freifunk/site-ffhal/ site
~/freifunk/gluon-changes/package$ ln -s ~/freifunk/gluon-package/ffhal-ssh-keys/
```

### Firmware bauen
```
make update
make GLUON_TARGET=ath79-generic -j 8 || echo ath79-generic build failed
make GLUON_TARGET=ath79-nand -j 8 || echo ath79-nand build failed
make GLUON_TARGET=ath79-mikrotik -j 8 || echo ath79-mikrotik build failed
# rpi1
make GLUON_TARGET=bcm27xx-bcm2708 -j 8 || echo bcm27xx-bcm2708 build failed
# rpi2
make GLUON_TARGET=bcm27xx-bcm2709 -j 8 || echo bcm27xx-bcm2709 build failed
make GLUON_TARGET=ipq40xx-generic -j 8 || echo ipq40xx-generic build failed
make GLUON_TARGET=ipq40xx-mikrotik -j 8 || echo ipq40xx-mikrotik build failed
make GLUON_TARGET=lantiq-xrx200 -j 8 || echo lantiq-xrx200 build failed
make GLUON_TARGET=lantiq-xway -j 8 || echo lantiq-xway build failed
make GLUON_TARGET=mediatek-filogic -j 8 || echo mediatek-filogic build failed
make GLUON_TARGET=mediatek-mt7622 -j 8 || echo mediatek-mt7622 build failed
make GLUON_TARGET=mpc85xx-p1010 -j 8 || echo mpc85xx-p1010 build failed
make GLUON_TARGET=mpc85xx-p1020 -j 8 || echo mpc85xx-p1020 build failed
make GLUON_TARGET=ramips-mt7620 -j 8 || echo ramips-mt7620 build failed
make GLUON_TARGET=ramips-mt7621 -j 8 || echo ramips-mt7621 build failed
make GLUON_TARGET=ramips-mt76x8 -j 8 || echo ramips-mt76x8 build failed
make GLUON_TARGET=x86-generic -j 8 || echo x86-generic build failed
make GLUON_TARGET=x86-64 -j 8 || echo x86-64 build failed
make GLUON_TARGET=sunxi-cortexa7 -j 8 || echo sunxi-cortexa7 build failed
make GLUON_TARGET=ipq806x-generic -j 8 || echo ipq806x-generic build failed
```

### Weitere Optionen beim Firmwarebauen (übernommener Text Freifunk Harz) (to do)

Wenn ein komplette Architektur gebaut werden soll, dann sieht der Befehl wie folgt aus.

```
make GLUON_TARGET=$TARGET GLUON_AUTO_UPDATER_BRANCH=$BRANCH GLUON_AUTOUPDATER_ENABLED=true
```

Die Variabeln müssen entsprechend ersetzt werden! Ein `make all` sollte nicht verwendet werden!

verfügbare `$TARGET` sind:
- ath79-generic <- TP-Link und Ubiquiti
- ath79-nand
- ath79-mikrotik
- bcm27xx-bcm2708 <- Raspberry Pi 1
- bcm27xx-bcm2709 <- Raspberry Pi 2
- ipq40xx-generic
- ipq40xx-mikrotik
- ipq806x-generic
- lantiq-xrx200
- lantiq-xway
- mediatek-filogic <- WiFi 6/6E Geräte
- mediatek-mt7622
- mpc85xx-p1010
- mpc85xx-p1020
- ramips-mt7620
- ramips-mt7621 <- D-Link DIR860L/E
- ramips-mt76x8
- sunxi-cortexa7 <- A20 aka Banana Pi
- x86-generic
- x86-64

verfügbare `$BRANCH` sind:
- beta
- experimental
- stable

verfügbare `$PROFILE` findest du unter `gluon\target\$TARGET\profiles.mk`

in CHANGELOG.md liegen die Info's zu den Änderungen!

## Image signieren (to do)

- ecdsautil muss installiert und eingerichtet werden, damit die Firmware signiert werden kann
- das Manifest muss erstellt und dann signiert werden

`make manifest GLUON_BRANCH=experimental`

- wenn build länger zurückliegt muss das Release Datum mit `GLUON_RELEASE` mit angegeben werden

`make manifest GLUON_BRANCH=experimental GLUON_RELEASE=0.9.3~20171024`


Buildpad: http://pad.harz.freifunk.net/p/gluon
