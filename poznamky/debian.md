#### Debian 8.8.2018

##### 1) ISO – architektura i386, nebo amd64 ? :

Jakou architekturu máme? – jsou 4 způsoby jak to zjistit z CPU:

<code>$ uname -m „i686″</code>

<code>$ dpkg –print-architecture „i386″</code>

<code>$ file /sbin/init „/sbin/init: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.26, BuildID[sha1]=0xeaea626bea4cbe89f35fdd64e8c1bd5ff8c85414, stripped“

<code>$ grep flags /proc/cpuinfo | grep lm</code> “ pokud nic nevypíše je to 32 bit, pokud ano je to 64 bit CPU “

ISO přehled a možnosti stažení: [http://www.debian.org/distrib/index.cs.html](http://www.debian.org/distrib/index.cs.html "http://www.debian.org/distrib/index.cs.html")

i386 netinst (180 <abbr title="Megabyte">MB</abbr>): [http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso](http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso "http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso")

amd64 netinst (180 <abbr title="Megabyte">MB</abbr>): [http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso](http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso "http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso")

##### 2) Vypálení ISO obrazu (hlavní programy = xfburn, wodim,dvd+rw-format

„rychlé zjištění CD a DVD machanik v systému = <code>$ ls -l /dev | grep -E „(cd|dvd)“</code>

A) na CD

V Linuxu mechaniky „zjištění CD mechaniky = $ls -l /dev/cdrw “ „nepodporovaná mechanika = dmesg | grep hd … mělo by vypsat toto hda: PIONEER DVD RW DVR-108, ATAPI CD/DVD-ROM drive hdb: IDE DVD-ROM 16X, ATAPI CD/DVD-ROM drive hda: ATAPI 40X DVD-ROM DVD-R CD-R/RW drive, 2000kB Cache“

V Linuxu grafika = xfburn, brasero, k3b

V Linuxu command = wodim „zjištění mechanik přes wodim = $wodim –devices“ „prázný = $wodim -vv dev=/dev/cdrw blank=all“ „vypálení ISO = <code>$wodim dev=/dev/cdrw -v -data _.iso“</code> „u nepodporované mechaniky = <code>$wodim dev=ATAPI:/dev/hda -data -v -eject _.iso“</code>

Ve Windows = [http://infrarecorder.sourceforge.net/](http://infrarecorder.sourceforge.net/ "http://infrarecorder.sourceforge.net/")

B) na DVD a Blueray

V Linuxu mechaniky „zjištění DVD mechaniky $ ls -l /dev/dvdrw“

V Linuxu grafika = <code>xfburn, brasero, k3b</code>

V Linuxu command = dvd+rw-tools „prázný = <code>$ dvd+rw-tools -blank /dev/dvdrw</code> „vypálení ISO = <code>$growisofs -speed=2 -dvd-compat -Z /dev/dvdrw=dvd_image.iso</code> „další příkazy = </code>$growisofs -Z /dev/dvdrw -R -J /some/files</code>; nová session vypalování = </code>$growisofs -M dev/dvdwriter additionaldata</code>

Ve Windows = [http://infrarecorder.sourceforge.net/](http://infrarecorder.sourceforge.net/ "http://infrarecorder.sourceforge.net/")

##### 3) Instalace

„zapnout boot v BIOS, pokud již není“

„čeština“

„rozdělení disku ( swap = 2x větší jak ram, home = dát noatime = na disk se hned nezapisuje čas, root = zapnout automatické opravy filesystému při pádu systému)“

„stáhnout aktualizace“

„tasksel nevybírat nic , maximálně notebook“

„uložit hesla = root a user“

„zapsat bootovací tabulku přes GRUB“

„automatický restart PC“

„přihlásit se jako root“

„instalace programů bez zbytečných závislostí –out-recommends “

<code>$aptitude install –out-recommends mc links htop sudo xorg slim openbox obconf obmenu tint2 conky feh wbar numlockx grun lxtask leafpad iceweasel iceweasel-l10n-cs iceweasel-adblock-plus claws-mail-i18n sakura pcmanfm dwb midori audacious smplayer vlc alsamixergui volti wbar</code>

„konfigurace sudo = <code># visudo</code>
<code>UŽIVATEL ALL=(ALL) NOPASSWD: ALL+ %SKUPINA ALL=(ALL) NOPASSWD: ALL“</code>
Nastavení terminálu, aliasy

<code>$sudo leafpad .bashrc</code> ⇒ může vypadat nějak takhle“

<pre class="code">  >> # System-wide .bashrc file for interactive bash(1) shells.
  >> #
  >> # To enable the settings / commands in this file for login shells as well,
  >> # this file has to be sourced in /etc/profile.
  >>
  >> # If not running interactively, don’t do anything
  >> [ -z "$PS1" ] && return
  >>
  >> # check the window size after each command and, if necessary,
  >> # update the values of LINES and COLUMNS.
  >> shopt -s checkwinsize
  >>
  >> # set variable identifying the chroot you work in (used in the prompt below)
  >> if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  >> debian_chroot=$(cat /etc/debian_chroot)
  >> fi
  >>
  >> # set a fancy prompt (non-color, overwrite the one in /etc/profile)
  >> PS1=’${debian_chroot:+($debian_chroot)}\u@\h:\w\$ ‚
  >>
  >> # Commented out, don’t overwrite xterm -T „title“ -n „icontitle“ by default.
  >> # If this is an xterm set the title to user@host:dir
  >> #case „$TERM“ in
  >> #xterm*|rxvt*)
  >> # PROMPT_COMMAND=’echo -ne „\033]0;${USER}@${HOSTNAME}: ${PWD}\007″‚
  >> # ;;
  >> #*)
  >> # ;;
  >> #esac
  >>
  >> # enable bash completion in interactive shells
  >> #if ! shopt -oq posix; then
  >> # if [ -f /usr/share/bash-completion/bash_completion ]; then
  >> # . /usr/share/bash-completion/bash_completion
  >> # elif [ -f /etc/bash_completion ]; then
  >> # . /etc/bash_completion
  >> # fi
  >> #fi
  >>
  >> alias ai=’sudo aptitude install –without-recommends‘
  >> alias as=’aptitude search‘
  >> alias ass=’aptitude show‘
  >> alias ar=’sudo aptitude remove‘
  >> alias arp=’sudo aptitude purge‘
  >> alias au=’sudo aptitude update‘
  >> alias ap=’sudo aptitude upgrade‘
  >> alias apb=’sudo aptitude -t wheezy-backports dist-upgrade‘
  >> alias aup=’sudo aptitude update && sudo aptitude upgrade‘
  >> alias aupb=’sudo aptitude update && sudo aptitude -t wheezy-backports dist-upgrade‘
  >> alias aib=’sudo aptitude install –without-recommends -t wheezy-backports‘
  >> alias 1=’/bin/sync && /bin/echo 1 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  >> alias 2=’/bin/sync && /bin/echo 2 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  >> alias 3=’/bin/sync && /bin/echo 3 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  >>
  >> # if the command-not-found package is installed, use it
  >> if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
  >> function command_not_found_handle {
  >> # check because c-n-f could’ve been removed in the meantime
  >> if [ -x /usr/lib/command-not-found ]; then
  >> /usr/bin/python /usr/lib/command-not-found — „$1″
  >> return $?
  >> elif [ -x /usr/share/command-not-found/command-not-found ]; then
  >> /usr/bin/python /usr/share/command-not-found/command-not-found — „$1″
  >> return $?
  >> else
  >> printf „%s: command not found\n“ „$1″ >&2
  >> return 127
  >> fi
  >> }
  >> fi </pre>

Nastavení disků a oddílů

„noatime,commit=5000 ⇒ čas se nezapisuje na disk hned, časová prodleva zápisu na disk je 5000 s“

<code>$sudo nano /etc/fstab</code> ⇒ může vypadat nějak takhle (editor nano = ctrl-o, ctrll-x)“

<pre class="code">  >> # /etc/fstab: static file system information.</pre>

<pre class="code">  >> #
  >> # Use ‚blkid‘ to print the universally unique identifier for a
  >> # device; this may be used with UUID= as a more robust way to name devices
  >> # that works even if disks are added and removed. See fstab(5).
  >> #
  >> #
  >> # / was on /dev/sda3 during installation
  >> UUID=890eeba9-7e5a-4cbe-9d13-38f45a4382f1 / ext4 noatime,errors=remount-ro,commit=5000 >>> 0 1
  >> # /home was on /dev/sda4 during installation
  >> UUID=a12000cf-bfef-4988-bcbc-5edf1779a0eb /home ext4 noatime,commit=5000 0 2
  >> # swap was on /dev/sda5 during installation
  >> UUID=d9afa00b-7a91-46a3-8435-8a2e80aaf8a6 none swap sw 0 0
  >> /dev/sr0 /media/cdrom0 udf,iso9660 user,noauto 0 0 </pre>

Nastavení jádra

<code>$ sudo sysctl -a</code> = zjištění všech možností podporovaných v jádře“

<code>$ sudo nano /etc/sysctl.conf</code> = úprava souboru dle předchozího výběru (editor nano = ctrl-o, ctrll-x)“

„$ sudo sysctl -p = reaktivace souboru /etc/sysctl.conf s naší úpravou“

<pre class="code">  >> #</pre>

<pre class="code">  >> # /etc/sysctl.conf – Configuration file for setting system variables
  >> # See /etc/sysctl.d/ for additonal system variables
  >> # See sysctl.conf (5) for information.
  >> #
  >>
  >> #kernel.domainname = example.com </pre>

<pre class="code">  >> # Uncomment the following to stop low-level messages on console
  >> #kernel.printk = 3 4 1 3 </pre>

<pre class="code">  >> ##########################################################3
  >> # Functions previously found in netbase
  >> #
  >>
  >> # Uncomment the next two lines to enable Spoof protection (reverse-path filter)
  >> # Turn on Source Address Verification in all interfaces to
  >> # prevent some spoofing attacks
  >> #net.ipv4.conf.default.rp_filter=1
  >> #net.ipv4.conf.all.rp_filter=1
  >>
  >> # Uncomment the next line to enable TCP/IP SYN cookies
  >> # See http://lwn.net/Articles/277146/
  >> # Note: This may impact IPv6 TCP sessions too
  >> #net.ipv4.tcp_syncookies=1
  >>
  >> # Uncomment the next line to enable packet forwarding for IPv4
  >> #net.ipv4.ip_forward=1
  >>
  >> # Uncomment the next line to enable packet forwarding for IPv6
  >> # Enabling this option disables Stateless Address Autoconfiguration
  >> # based on Router Advertisements for this host
  >> #net.ipv6.conf.all.forwarding=1
  >>
  >>
  >> ###############################################################
  >> # Additional settings – these settings can improve the network
  >> # security of the host and prevent against some network attacks
  >> # including spoofing attacks and man in the middle attacks through
  >> # redirection. Some network environments, however, require that these
  >> # settings are disabled so review and enable them as needed.
  >> #
  >> # Do not accept ICMP redirects (prevent MITM attacks)
  >> #net.ipv4.conf.all.accept_redirects = 0
  >> #net.ipv6.conf.all.accept_redirects = 0
  >> # _or_
  >> # Accept ICMP redirects only for gateways listed in our default
  >> # gateway list (enabled by default)
  >> # net.ipv4.conf.all.secure_redirects = 1
  >> #
  >> # Do not send ICMP redirects (we are not a router)
  >> #net.ipv4.conf.all.send_redirects = 0
  >> #
  >> # Do not accept IP source route packets (we are not a router)
  >> #net.ipv4.conf.all.accept_source_route = 0
  >> #net.ipv6.conf.all.accept_source_route = 0
  >> #
  >> # Log Martian Packets
  >> #net.ipv4.conf.all.log_martians = 1
  >> #
  >> net.ipv6.conf.default.accept_ra = 0
  >> net.ipv6.conf.eth0.accept_ra = 0
  >>
  >> kernel.sysrq=1
  >> vm.dirty_background_bytes = 4194304
  >> vm.dirty_bytes = 4194304
  >> </pre>
