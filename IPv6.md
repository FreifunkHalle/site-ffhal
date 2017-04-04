# IPv6
## Beschreibung
- neues Protokoll für das Internet - state of the art

## IPv4 an WAN deaktivieren
- entweder im WebInterface im Konfiguarationsmodues oder ueber ssh
- ssh: uci set network.wan.proto='none' && uci commit; reboot; exit

Vor dem einstellen überprüfen Sie bitte ob Ihr Provider IPv6 unterstützt und Sie IPv6 im Router aktiviert haben. Im wesentlichen ist aber IPv6 performanter als IPv4!
