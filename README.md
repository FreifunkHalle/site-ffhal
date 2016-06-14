# site-ffharz
site.conf für das Release 0.7 / v2015.1.1
Und am ende fallen dann alle images für das target ar71xx-generic raus. das sind die wichtigsten.
Für weitere targets füre einfach folgendes nach dem make aus:

make GLUON_TARGET=target-name

verfügbare Targets sind:
ar71xx-generic
ar71xx-nand
mpc85xx-generic
x86-generic
x86-kvm_guest

## Changelog
### 20160614
- technik@ auf key@ geändert
- zweiten GW hinzugefügt
- LH GW entfernt
- 802.11s hinzugefügt aber disabled
- HT20 Mode für 5GHz auf HT40 geändert
- ntp Server auf internen angepasst
- AR150 von GL.Inet hinzugefügt

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
