# site-ffharz
Erstellt durch d09xe.
freifunk harz site-config für IRC user ffharz_staubenheim

um in home zu bauen folgende befehle ausführen in der rheinfolge:

cd ~
git clone https://github.com/freifunk-gluon/gluon
cd gluon
git checkout v2015.1
git clone https://github.com/do9xe/site-ffharz site
make update
make


Und am ende fallen dann alle images für das target ar71xx-generic raus. das sind die wichtigsten.
Für weitere targets füre einfach folgendes nach dem make aus:

make GLUON_TARGET=target-name

verfügbare Targets sind:
ar71xx-generic
ar71xx-nand
mpc85xx-generic
x86-generic
x86-kvm_guest

viel spaß :)
