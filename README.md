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
### exp20150918
- hostname_prefix: ffharz
- site_name: Freifunk Harz e.V.
- mesh_bssid: 22:ca:ff:ee:ba:be - auf Kanal 2 korrigiert
- mac: Macadresse geändert
- fastd-vpn: zweiten Knoten hinzugefügt
- autoupdater aktiviert
- openvpn-polarssl Paket hinzugefügt 
