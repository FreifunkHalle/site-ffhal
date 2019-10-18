# site-ffhal
site.conf-Datei für Freifunk Halle Firmware 1.0.1, Gluon-Release 2018.2.x, OpenWRT v2018.06-SNAPSHOT r7835+24-89808e211c

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
~/freifunk/gluon-changes$ make update
~/freifunk/gluon.changes$ make GLUON_TARGET=ar71xx-generic GLUON_BRANCH=stable GLUON_REGION=eu
```

### Weitere Optionen beim Firmwarebauen (übernommener Text Freifunk Harz) (to do)

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

## Image signieren (to do)

- ecdsautil muss installiert und eingerichtet werden, damit die Firmware signiert werden kann
- das Manifest muss erstellt und dann signiert werden

`make manifest GLUON_BRANCH=experimental`

- wenn build länger zurückliegt muss das Release Datum mit `GLUON_RELEASE` mit angegeben werden

`make manifest GLUON_BRANCH=experimental GLUON_RELEASE=0.9.3~20171024`


Buildpad: http://pad.harz.freifunk.net/p/gluon
