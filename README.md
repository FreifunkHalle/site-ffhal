# site-ffharz
site.conf für das Release 0.8.2 / v2016.1.5
Und am ende fallen dann alle images für das target ar71xx-generic raus. das sind die wichtigsten.
Für weitere targets füre einfach folgendes nach dem make aus:
## eigenes Image bauen
```
git clone https://github.com/freifunk-gluon/gluon
cd gluon
git branch -a
git checkout v2016.2.2
cd ..
git clone https://git.harz.freifunk.net/ff-harz/gluon-site 
cp -r gluon-site gluon/site
git clone https://git.harz.freifunk.net/ff-harz/ffharz-packages.git
cp -r ffharz-packages/*-* gluon/package
cd gluon
make update
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH prepare image/$PROFILE
```
Wenn ein komplette Architektur gebaut werden soll, dann sieht der Befehl wie folgt aus.

```
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH
```
Die Variabeln müssen entsprechend ersetzt werden! Ein `make all` sollte nicht verwendet werden!

verfügbare `$TARGET` sind:
- ar71xx-generic <- TP-Link und Ubqiuiti <- diverse
- ar71xx-nand
- mpc85xx-generic
- x86-generic
- x86-kvm_guest
- ramips-mt7621 <- D-Link DIR860L/E
- brcm2708-bcm2709 <- Raspberry Pi 2
- brcm2708-bcm2708 <- Raspberry Pi 1

verfügbare `$BRANCH` sind:
- beta
- experimental
- stable

verfügbare `$PROFILE` findest du unter `gluon\target\$TARGET\profiles.mk`

## Changelog
### 20170212
- Anleitung in README.md angepasst
- kurzfristig die Pakete von ffharz aus `site.mk` entfernt
- `gluon-radv-filterd` in die site.mk für Branch `radv-filterd` hinzugefügt
- `gluon-next-node` aus `site.mk` entfernt

### 20170211
- Pfad für autoupdater hinzugefügt (jetzt mit DNS und IPv6)
- gluon-radvd-filter pkg hinzugefügt -> siehe https://blog.freifunk-mainz.de/2017/01/08/ipv6-optimierungen-im-freifunk-mainz-wiesbaden-und-umgebung-mwu/
- IBSS0 wieder verfügbar gemacht in der site.conf
- Versionsspezifische Updates mit eingebaut -> siehe http://gluon.readthedocs.io/en/v2016.2.2/

### 20160910
- Emailadresse in i8ln angepasst
- Kanal 5GHz von 44 auf 36 korrigiert (Proleme mit dem verbinden auf 44)
- fallback autoupdater entfernt aus site.mk
- SGH Knoten für Umzug in site.conf konfiguriert
- für 2016.1.6 REGIO Abfrage in site.mk hinzugefügt

### 20160729
- alfred entfernt
- SSID für 5GHz angepasst
- SSID für 8011.2s angepasst für 5GHz und 2GHz
- ibss0 deaktiviert und entfernt
- rampis für DIR-860L hinzugefügt

### 20160614
- technik@ auf key@ geändert
- zweiten GW hinzugefügt
- LH GW entfernt
- 802.11s hinzugefügt aber disabled
- HT20 Mode für 5GHz auf HT40 geändert
- ntp Server auf internen angepasst
- AR150 von GL.Inet hinzugefügt
- gluon-status-page angepasst / Kontaktdaten entfernt

### 20160529
- autoupdater von ffho hinzugefügt
- arp Optimierung von ffho hinzugefügt
- site.conf -- GW ffharz hinzugefügt
- Update auf gluon v2016.1.5
- mit v2016.1.5 wird WR841N unterstützt

### 20160320
- Versionsnummer in site.mk auf 0.8.2.2 eingestellt
- Zeitserver in site.conf angepasst -> time1.service.ffharz

### 20160319
- PubKey korrigiert für ETQ
- Versionsnummer auf 0.8.2.1 stable gehoben
-- die .1 steht für ein weiteres Update

### 20160318
- site.conf auf batman-adv 2013.4 zurück geändert
- ETQ Server mit eingepflegt
- Versionsnummer auf 0.8.2 stable gehoben und Stunden:Minuten entfernt
- Port auf 10001 angepasst

### 20151216
- peer connections auf 2 gehoben
- gw1 rausgenommen
- ipv6 für gw2 und gw3 eingerichtet
- port 53 und 80 eingerichtet / port 10000 auf 10001 geändert
- mtu auf 1426 gehoben

### 20151116
- site.conf - angepasst / 5GHz / Chan44 / 02:44:ca:ff:ee:ee
https://wiki.freifunk.net/Freifunk_Berlin_Pberg:Kanal_BSSID

### 20151113

- Anpassung für den 3. Gateway
- wichtig ist, das der peer im Namen kein Punkt oder Bindstrich hat sind läuft es in einen error!
- Korrektur der site.mk / openvpn-polarssl entfernt
- Release-Variable angepasst
- Pfade für mirror1 geändert
- mirror2 - mirror5 vorerst aus der Konfiguration entfernt

### 20151028
Anpassungen von André Kasper übernommen.
http://www.zumpel.de/ffharz/

E-Mail vom Dienstag den 27.11.2015 00:30 Uhr

->
- Codebasis Gluon 2015.2.1 (stable)
- mehr Hardware
- stark modifizierte x86 images. Diese enthalten Treiber für CF Karte in
Futros PCI Ethernetkarten und USB/eth converter
- die Bochumer Statuspage (Eigenbräu aus EN bis die neue Statuspage
fertig ist)
- HT20 statt HT40+ im WLAN weil stärkeres Signal und weniger Airtime.

[Die Vorteile von HT40+ greifen nicht solange der Uplink nicht schneller
ist als das was über HT20 erreichbar ist. Da ist noch viel Luft. Zur
Zeit deshalb nur Nachteile.. deshalb weg damit und das bessere Signal
nutzen. ]
<-

### exp20150918
- hostname_prefix: ffharz
- site_name: Freifunk Harz e.V.
- mesh_bssid: 22:ca:ff:ee:ba:be - auf Kanal 2 korrigiert
- mac: Macadresse geändert
- fastd-vpn: zweiten Knoten hinzugefügt
- autoupdater aktiviert
- openvpn-polarssl Paket hinzugefügt 
