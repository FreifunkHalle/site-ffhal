# IPv6 only connection to GW
## Beschreibung
Hier ein kurzes Beispiel, wie man den Knoten dazu bringt sich nur per IPv6 mit dem GW zu verbinden.
Wichtig ist, das man auch einen Internetanschluss hat, der mit IPv6 läuft.

```
# deaktiviert DHCP für IPv4 auf WAN
# nur verwenden, wenn IPv6 verfuegbar
uci set network.wan.proto='none' && uci commit; reboot; exit
```
