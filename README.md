#### Spustitelný skript

1) soubor <code>chmod +x skript</code>

2) adresář rekurzivně <code>chmod -R +x adresar</code>

# debian nastaveni a skripty

#### Debian sources.list

http://debgen.simplylinux.ch/

#### Ubuntu sources.list

https://repogen.simplylinux.ch/

#### Instalace debianu s KDE

https://antreimer.wordpress.com/2012/07/02/debian-with-minimal-kde-simple/

#### Debian Jessie bez systemd

http://without-systemd.org/wiki/index.php/How_to_remove_systemd_from_a_Debian_jessie/sid_installation
http://without-systemd.org/wiki/index.php/Main_Page


#### Ubuntu instalace 
https://help.ubuntu.com/community/Installation/LowMemorySystems

#### Linux odlehčení
https://wiki.ubuntuusers.de/Desktop-Symbole/

#### Tiskárna HP LaserJet p1505 na linuxu
http://hplipopensource.com/hplip-web/models/laserjet/hp_laserjet_p1505n.html

#### Ebook

Konverze z *.jpg, *.bmp do pdf přes program imagemagick:
<code>sudo apt-get install imagemagick || convert *.bmp kniha.pdf convert *.jpg kniha.pdf</code>

Callibre install on linux CLI:
<code>sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py || sudo python -c „import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()“ Konverze *.epub do *.pdf a *.pdf do *.epub ebook-convert *.epub *.pdf ebook-convert *.pdf *.epub –enable-heuristics</code>

#### Avermedia AVerTV A835 HD PRO na linuxu
http://askubuntu.com/questions/272407/how-to-make-an-avermedia-avertv-volar-green-hd-work

<code>sudo cd /lib/firmware/;sudo wget http://xgazza.altervista.org/Linux/DVB/dvb-usb-af9035-02.fw && sudo modprobe dvb_usb_af9035 && sudo apt-get install me-tv && me-tv</code>





