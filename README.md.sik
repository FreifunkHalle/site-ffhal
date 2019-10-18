# site-ffhal
site.conf für das Release 0.9.4 / v2017.1.x
Und am ende fallen dann alle images für das target ar71xx-generic raus. das sind die wichtigsten.
Für weitere targets füre einfach folgendes nach dem make aus:
## eigenes Image bauen
```
git clone https://github.com/freifunk-gluon/gluon
cd gluon
git branch -a
git checkout v2017.1.x
cd ..
git clone https://github.com/ffharz/site-ffharz.git
cp -r site-ffharz gluon/site
git clone https://github.com/ffharz/gluon-package.git
cp -r gluon-package/*-* gluon/package
cd gluon
make update
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH prepare image/$PROFILE
```
Wenn ein komplette Architektur gebaut werden soll, dann sieht der Befehl wie folgt aus.

```
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH
```
Bei ar71xx-gernic muss noch die REGION mit gegeben werden.

```
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH GLUON_REGION=eu
```

Die Variabeln müssen entsprechend ersetzt werden! Ein `make all` sollte nicht verwendet werden!

verfügbare `$TARGET` sind:
- ar71xx-generic <- TP-Link und Ubqiuiti <- diverse
- ar71xx-tiny <- WR841 usw. mit 4MB Flash
- ar71xx-nand
- brcm2708-bcm2708 <- Raspberry Pi 1
- brcm2708-bcm2709 <- Raspberry Pi 2
- brcm2708-bcm2710 <- Raspberry Pi 3
- mpc85xx-generic
- ramips-mt7621 <- D-Link DIR860L/E
- x86-generic
- x86-geode
- x86-64
- ar71xx-mikrotik
- ipq806x
- mvebu
- ramips-mt7628
- ramips-rt305x
- x86-kvm_guest
- sunix <- A20 aka Banana Pi

verfügbare `$BRANCH` sind:
- beta
- experimental
- stable

verfügbare `$PROFILE` findest du unter `gluon\target\$TARGET\profiles.mk`

in CHANGELOG.md liegen die Info's zu den Änderungen!

## Image signieren

- ecdsautil muss installiert und eingerichtet werden, damit die Firmware signiert werden kann
- das Manifest muss erstellt und dann signiert werden

`make manifest GLUON_BRANCH=experimental`

- wenn build länger zurückliegt muss das Release Datum mit `GLUON_RELEASE` mit angegeben werden

`make manifest GLUON_BRANCH=experimental GLUON_RELEASE=0.9.3~20171024`


Buildpad: http://pad.harz.freifunk.net/p/gluon
