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
### 20151113
Anpassung für den 3. Gateway
- wichtig ist, das der peer im Namen kein Punkt oder Bindstrich hat sind läuft es in einen error!
- korrektur der site.mk / openvpn-polarssl entfernt

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
