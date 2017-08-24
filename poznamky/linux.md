### GNU/Linux -obecně

#### Zde umisťuji návody a odkazy na instalace a úpravy nastavení distribucí GNU/Linux

#### Eziny a magazíny o open-source a linuxu

[Abclinuxu -Magazín Linuxu](http://www.abclinuxu.cz/)  
[Root -Magazín Linuxu](http://www.root.cz/)  
[Magazín o open-source softwaru a jeho využití v podnikání a vzdělávání](http://osspraxe.cz/)  
[Článek proč používám Linux](http://www.abclinuxu.cz/blog/RoboShim/2010/10/proc-pouzivam-linux-aneb-co-mi-chybi-ve-windows)

#### Server o oblíbenosti distribucí Linux a unix like

[Distrowatch.com](http://distrowatch.com/)  
[Zbohatli s pomocí Linuxu](http://linuxzblizka.blog.zive.cz/2010/06/zbohatli-s-pomoci-linuxu/)

#### Obecné návody distribucí Linux a unix like

[Linux návody, vč.archlinux](http://otakar.ic.cz/otakar.php?clid=pcpraxe&clt=arch)  
[Linux -obecný návod](http://books.google.cz/books?id=SFQEPS66TG0C&pg=PA4&dq=linux&lr=lang_cs&as_drrb_is=q&as_minm_is=0&as_miny_is=&as_maxm_is=0&as_maxy_is=&as_brr=0#v=onepage&q&f=false)  
[Linux -postavení sítě, google book](http://books.google.cz/books?id=1x-6XBk8bKoC&printsec=frontcover&dq=linux&lr=#v=onepage&q&f=false)  
[Harddisk program hdparm, respektive sdparm -nastavení](http://www.linuxexpres.cz/praxe/nastaveni-disku-hdparm)

### GNU/Linux -grafická prostředí

[Window manažeři](http://xwinman.org/)  
[Grafické prostředí Openbox -nastavení](http://www.fastlinux.eu/index.php?page=linux026)  
[Grafické prostředí Openbox -klávesové zkratky](http://openbox.org/wiki/Help:DefaultConfiguration)  
[Grafické prostředí Openbox -nastavení prostředí a systému Debian](http://masak.webz.cz/)  
[Grafické prostředí Openbox -konfigurace](http://www.root.cz/clanky/konfigurujeme-openbox-podruhe/)

### GNU/Linux -software

[Seznam sotware na Abclinuxu](http://www.abclinuxu.cz/software)

Zde lze zjisit alternativy použití programů k ostatním OS

### GNU/Linux -hardware

#### Hardware obecně

Zda je Hardware linuxem podporován lze zjistit na těchto stránkách – pokud není Váš HW ve výpisu, nemusí to však znamenat, že přesto nemusí fungovat (pro Linux se píší často ovladače -dle použitého čipu

(podporu nejlépe vyzkoušet z Live CD)

[Ubuntu -Live i386](http://releases.ubuntu.cz/lucid/ubuntu-10.04.2-desktop-i386.iso)

[seznam zprovoznění HW na Abclinuxu](http://www.abclinuxu.cz/hardware)  
[Obecná ppodpora HW na Linuxu](http://www.linux-drivers.org/)  
[Certifikovaný HW na Linuxu -distribuce Ubuntu](http://www.ubuntu.com/certification/)  
[Jednotlivý HW na Linuxu -distribuce Ubuntu](http://www.ubuntu.com/certification/catalog)

#### DVB hybridní karta Avermedia A16D v linuxu

[Odkaz na návod na Abclinuxu](http://www.abclinuxu.cz/hardware/pridavne-karty/televizni-karty/phillips-chipset/avertv-hybridplusfm-pci)

$wget http://www.bednar.maweb.eu/download/xc3028-v27.fw

#cp /home/d/xc3028-v27.fw /lib/firmware

Nebo viz odkaz dále

[HVR-12×0-14×0-17x0_1_25_25271_WHQL.zip a vygenerovat dle návodu na abclinuxu.cz](http://www.bednar.maweb.eu/download/HVR-12x0-14x0-17x0_1_25_25271_WHQL.zip)

### GNU/Linux -jednotlivé distribuce

<a name="debian"></a>

#### Debian

[![](/lib/exe/fetch.php?w=50&tok=95bfa7&media=wiki:debian-logo.png)](/lib/exe/detail.php?id=linux&media=wiki:debian-logo.png "wiki:debian-logo.png")

##### Stažení ISO obrazu

Stažení iso obrazu -většinou stačí netinstall iso pro architektury amd64, i386\. Velikost 135-175 MB.

[Přímé stažení Stable netinstall iso i386 -32Bit](http://cdimage.debian.org/cdimage/daily-builds/squeeze_d-i/i386/iso-cd/debian-6.0.2.1-i386-netinst.iso)  
[Přímé stažení Testing netinstall iso i386 -32Bit](http://cdimage.debian.org/cdimage/daily-builds/daily/arch-latest/i386/iso-cd/debian-testing-i386-netinst.iso)  
[Stránky Debian Denní builds iso obrazů…pokud nejde stáhnout iso obraz](http://cdimage.debian.org/cdimage/daily-builds/)  
[Stránky Debian Installer](http://www.debian.org/devel/debian-installer/)

##### Update a upgrade

při intstalaci zvolit všechny linux oddíly ext4…..tasksel nevybírat nic k instalaci…doinstalovat později

Po instalaci spustit systém zadat login:root a heslo:roota …zadývané při instalaci

Přejít do seekce download a vybrat soubory k systému a aplikacím ke stažení

[Přejít do sekce download pro stažení](/download)

update a upgrade

apt-get update apt-get save-upgrade

apt-get search firmware….firmware pro velké množství HW…

##### Editace zdrojů software

nano /etc/apt/sources.list

#apt-get update

#apt-get save-upgrade

#apt-get dist-upgrade

apt pinning – míchání verzí debianu

Informace O debianu v češtině

[O Debianu oficiální zdroj informací](http://www.debian.cz)  
[O Debianu česky + zprávy a novinky](http://www.debian-linux.cz)

Instalační příručky a fora

[Instalační příručky pro všechny architektury – větev stable](http://www.debian.org/releases/stable/installmanual)  
[České forum Debianu](http://forum.debian-linux.cz/)  
[Oficiální forum Debianu](http://forums.debian.net/)  
[Debian frontpage](http://wiki.debian.org/FrontPage)  
[Oficiální forum Debianu -administrátorské1](http://www.debian-administration.org/)  
[Oficiální forum Debianu -administrátorské2](http://www.debianadmin.com/)  
[Debian -administrace](http://cs.wikibooks.org/wiki/Debian_administrace_systému)  
[Debian -nastavení sítě](http://www.kn.vutbr.cz/to.en/docs/conf/os/debian/)

##### Instalace minimální velikosti velikost systému po startu 38 mb, při instalaci v taskselu nezaškrtnout žádné instalace

Minimální instalace na pc – Prostředí Icewm

#aptitude install mc cron sysv-rc-conf sakura slim linkc htop lxtask aspell-cs lxappearance xterm lxterminal icewm icewm-themes libvdpau-dev module-assistant nvidia-kernel-common nvidia-kernel${VERSION}-$(uname -r) xserver-xorg-video-nv numlockx gpm module-assistant xfe pcmanfm audacious qmmp me-tv vlc iceweasel-l10n-cs openoffice.org-l10n-cs galternatives

##### Úpravy a nastavení správce přihlášení slim, není však třeba (ve slim pro výběr správce oken stisknout F1)

#nano /etc/slim.conf

#service slim start

V originále lze nastavit výběr správce oken (session) – někdy problém s Dbus (viz Archlinux), dále user, a autologin (bez nutnosti stále zadávat heslo

sessions icewm-session

default_user d

auto_login yes

current_theme debian-spacefun

##### Cron -neustálé automatické mazání cache ram, po 1 minutě (*/1) -lze zvolit jakékoliv čas rozpětí i jen dny

Používané programy Cron #service cron stop#crontab -e (na konec řádku */1 * * * * /home/d/.cron.sh)=každou minutu maže cache ram

nano /home/d/.cron.sh

vložit toto na pročištění RAM cache

#!/bin/bash  
sync  
echo 3 > /proc/sys/vm/drop_caches

#chmod +x /home/d/.cron.sh (spustitelný soubor)

#service cron start

nebo elegantněji bez cronu stačí jen do /etc/sysctl.conf vložit vm.drop_caches=3

##### Základní ladění jádra – výkon, síť – změny lze provést za běhu systému #sysctl -p

Na starší stroje úprava /etc/sysctl.conf, využívají více RAM, tolik neswapuje

vm.swappiness=20

vm.vfs_cache_pressure=50

vm.dirty_ratio=10

vm.dirty_background_ratio=5

<a name="archlinux"></a>

#### Archlinux

[![](/lib/exe/fetch.php?w=50&tok=16d9e9&media=archlinux-logo.png)](/lib/exe/detail.php?id=linux&media=archlinux-logo.png "archlinux-logo.png")

Velice jednoduchá KISS distribuce Live CD-s nejaktuálnějším stabilním software, další verzí -testing (PS jen pro zkušené už.)

update a upgrade

#pacman -Syu …nebo po přidání yaourt … #yaourt -Syu

[Archlinux – popis instalace česky](http://owebu.bloger.cz/Operacni-systemy/Archlinux)  
[Archlinux – popis instalace a úprav česky](https://wiki.archlinux.org/index.php/Beginners'_Guide_(Česky))  
[Archlinux – průvodce instalace](http://my.opera.com/EVRAMP/blog/2008/04/25/pruvodce-arch-linux)  
[Archlinux – oficiální stránky](http://www.archlinux.org/)  
[Archlinux -wiky, dost i v češtině](https://wiki.archlinux.org/index.php/Main_Page)  
[Archlinux -české forum](http://www.archlinux.cz/forum/)  
[Archlinux -oficiální forum](https://bbs.archlinux.org/)  
[Archlinux -oficiální software instalace](http://www.archlinux.org/packages/)  
[Archlinux -neoficiální software, hledání programů](https://aur.archlinux.org/)  
[Archlinux -zprovoznění Aur -návod](https://aur.archlinux.org/)  
[Archlinux -instalace z Auru skrze yaourt-přidat repozitář](https://wiki.archlinux.org/index.php/Yaourt_(Česky))  
[Archlinux -ovládání instalací pacman -příkazy](https://wiki.archlinux.org/index.php/Pacman_(Česky))  
[Achlinux -downgrade balíčku](https://wiki.archlinux.org/index.php/Downgrade_packages)  
[Archlinux -všechny RSS](http://www.archlinux.org/feeds/)  
[Installing Arch Linux](http://www.cdavis.us/wiki/index.php/Installing_Arch_Linux)  
[Installing Arch Linux on a ThinkPad X40](http://www.thinkwiki.org/wiki/Installing_Arch_Linux_on_a_ThinkPad_X40)  
[Jak nainstalovat a nastavit ArchLinux?](http://www.zacatecnik.wu.cz/?p=170)  
[Help pro instalaci Arch Linuxu](http://www.archlinux.cz/forum/viewtopic.php?id=623)

##### Update a upgrade Archlinuxu

update a upgrade pacman a yaourt (Aur zdroj)

#pacman -Sy

#pacman -Su

#yaourt -Sy

#yaourt-Su

<a name="ubuntu"></a>

#### Ubuntu

Distribuce založená na Debianu Live CD- využívající jeho všechny větve – nejlépe na ověřování podpory HW a opravy systému

[Ubuntu 10.04-Live i386](http://releases.ubuntu.cz/lucid/ubuntu-10.04.2-desktop-i386.iso)  
[Ubuntu 10.04-Live i386 alternate](http://releases.ubuntu.cz/lucid/ubuntu-10.04.2-alternate-i386.iso)  
[Ubuntu wiki návody -česky](http://wiki.ubuntu.cz/)  
[Ubuntu wiki návody -anglicky](https://wiki.ubuntu.com/)  
[Ubuntu – české forum](http://forum.ubuntu.cz/)  
[Ubuntu – anglické forum](http://forum.ubuntu.com/)  
[Ubuntu – podpora HW](http://wiki.ubuntu.cz/Hardware)  
[Ubuntu – Hledání všech balíčků všech vydání Ubuntu](http://packages.ubuntu.com/)  
[Ubuntu – návody starší, ale vynikající](http://ubuntu.wz.cz/index.html)

##### Update a upgrade

update a upgrade

#apt-get update apt-get save-upgrade

<a name="gentoo"></a>

#### Gentoo

Distribuce KISS

[Gentoo handbook -příručka](http://www.gentoo.org/doc/cs/handbook/handbook-x86.xml)
