<p>
Debian
</p>

<p>
1) ISO – architektura i386, nebo amd64 ? :
</p>

<p>
Jakou architekturu máme? – jsou 4 způsoby jak to zjistit z CPU:
</p>

<p>
$ uname -m „i686″
</p>

<p>
$ dpkg –print-architecture „i386″
</p>

<p>
$ file /sbin/init „/sbin/init: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.26, BuildID[sha1]=0xeaea626bea4cbe89f35fdd64e8c1bd5ff8c85414, stripped“
</p>

<p>
$ grep flags /proc/cpuinfo | grep lm “ pokud nic nevypíše je to 32 bit, pokud ano je to 64 bit CPU “
</p>

<p>
ISO přehled a možnosti stažení: <a href="http://www.debian.org/distrib/index.cs.html" class="urlextern" target="_blank" title="http://www.debian.org/distrib/index.cs.html" rel="nofollow">http://www.debian.org/distrib/index.cs.html</a>
</p>

<p>
i386 netinst (180 <abbr title="Megabyte">MB</abbr>): <a href="http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso" class="urlextern" target="_blank" title="http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso" rel="nofollow">http://cdimage.debian.org/debian-cd/7.1.0/i386/iso-cd/debian-7.1.0-i386-netinst.iso</a>
</p>

<p>
amd64 netinst (180 <abbr title="Megabyte">MB</abbr>): <a href="http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso" class="urlextern" target="_blank" title="http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso" rel="nofollow">http://cdimage.debian.org/debian-cd/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso</a>
</p>

<p>
2) Vypálení ISO obrazu (hlavní programy = xfburn, wodim,dvd+rw-format
</p>

<p>
„rychlé zjištění CD a DVD machanik v systému = $ ls -l /dev | grep -E „(cd|dvd)“
</p>

<p>
A) na CD
</p>

<p>
V Linuxu mechaniky
„zjištění CD mechaniky = $ls -l /dev/cdrw “
„nepodporovaná mechanika = dmesg | grep hd … mělo by vypsat toto hda: PIONEER DVD RW DVR-108, ATAPI CD/DVD-ROM drive hdb: IDE DVD-ROM 16X, ATAPI CD/DVD-ROM drive hda: ATAPI 40X DVD-ROM DVD-R CD-R/RW drive, 2000kB Cache“
</p>

<p>
V Linuxu grafika = xfburn, brasero, k3b
</p>

<p>
V Linuxu command = wodim
„zjištění mechanik přes wodim = $wodim –devices“
„prázný = $wodim -vv dev=/dev/cdrw blank=all“
„vypálení ISO = $wodim dev=/dev/cdrw -v -data <em class="u"></em>_.iso“
„u nepodporované mechaniky = $wodim dev=ATAPI:/dev/hda -data -v -eject <em class="u"></em>_.iso“
</p>

<p>
Ve Windows = <a href="http://infrarecorder.sourceforge.net/" class="urlextern" target="_blank" title="http://infrarecorder.sourceforge.net/" rel="nofollow">http://infrarecorder.sourceforge.net/</a>
</p>

<p>
B) na DVD a Blueray
</p>

<p>
V Linuxu mechaniky
„zjištění DVD mechaniky $ ls -l /dev/dvdrw“
</p>

<p>
V Linuxu grafika = xfburn, brasero, k3b
</p>

<p>
V Linuxu command = dvd+rw-tools
„prázný = $ dvd+rw-tools -blank /dev/dvdrw“
„vypálení ISO = $growisofs -speed=2 -dvd-compat -Z /dev/dvdrw=dvd_image.iso“
„další příkazy = growisofs -Z /dev/dvdrw -R -J /some/files; nová session vypalování = growisofs -M dev/dvdwriter additionaldata“
</p>

<p>
Ve Windows = <a href="http://infrarecorder.sourceforge.net/" class="urlextern" target="_blank" title="http://infrarecorder.sourceforge.net/" rel="nofollow">http://infrarecorder.sourceforge.net/</a>
</p>

<p>
3) Instalace
</p>

<p>
„zapnout boot v BIOS, pokud již není“
</p>

<p>
„čeština“
</p>

<p>
„rozdělení disku ( swap = 2x větší jak ram, home = dát noatime = na disk se hned nezapisuje čas, root = zapnout automatické opravy filesystému při pádu systému)“
</p>

<p>
„stáhnout aktualizace“
</p>

<p>
„tasksel nevybírat nic , maximálně notebook“
</p>

<p>
„uložit hesla = root a user“
</p>

<p>
„zapsat bootovací tabulku přes GRUB“
</p>

<p>
„automatický restart PC“
</p>

<p>
„přihlásit se jako root“
</p>

<p>
„instalace programů bez zbytečných závislostí –out-recommends “
</p>

<p>
„aptitude install –out-recommends mc links htop sudo xorg slim openbox obconf obmenu tint2 conky feh wbar numlockx grun lxtask leafpad iceweasel iceweasel-l10n-cs iceweasel-adblock-plus claws-mail-i18n sakura pcmanfm dwb midori audacious smplayer vlc alsamixergui volti wbar“
</p>

<p>
„konfigurace sudo = # visudo ; UŽIVATEL ALL=(ALL) NOPASSWD: ALL+ %SKUPINA ALL=(ALL) NOPASSWD: ALL“
</p>

<p>
Nastavení terminálu, aliasy
</p>

<p>
„$sudo leafpad .bashrc ⇒ může vypadat nějak takhle“
</p>
<pre class="code">  &gt;&gt; # System-wide .bashrc file for interactive bash(1) shells.
  &gt;&gt; #
  &gt;&gt; # To enable the settings / commands in this file for login shells as well,
  &gt;&gt; # this file has to be sourced in /etc/profile.
  &gt;&gt;
  &gt;&gt; # If not running interactively, don’t do anything
  &gt;&gt; [ -z "$PS1" ] &amp;&amp; return
  &gt;&gt;
  &gt;&gt; # check the window size after each command and, if necessary,
  &gt;&gt; # update the values of LINES and COLUMNS.
  &gt;&gt; shopt -s checkwinsize
  &gt;&gt;
  &gt;&gt; # set variable identifying the chroot you work in (used in the prompt below)
  &gt;&gt; if [ -z "${debian_chroot:-}" ] &amp;&amp; [ -r /etc/debian_chroot ]; then
  &gt;&gt; debian_chroot=$(cat /etc/debian_chroot)
  &gt;&gt; fi
  &gt;&gt;
  &gt;&gt; # set a fancy prompt (non-color, overwrite the one in /etc/profile)
  &gt;&gt; PS1=’${debian_chroot:+($debian_chroot)}\u@\h:\w\$ ‚
  &gt;&gt;
  &gt;&gt; # Commented out, don’t overwrite xterm -T „title“ -n „icontitle“ by default.
  &gt;&gt; # If this is an xterm set the title to user@host:dir
  &gt;&gt; #case „$TERM“ in
  &gt;&gt; #xterm*|rxvt*)
  &gt;&gt; # PROMPT_COMMAND=’echo -ne „\033]0;${USER}@${HOSTNAME}: ${PWD}\007″‚
  &gt;&gt; # ;;
  &gt;&gt; #*)
  &gt;&gt; # ;;
  &gt;&gt; #esac
  &gt;&gt;
  &gt;&gt; # enable bash completion in interactive shells
  &gt;&gt; #if ! shopt -oq posix; then
  &gt;&gt; # if [ -f /usr/share/bash-completion/bash_completion ]; then
  &gt;&gt; # . /usr/share/bash-completion/bash_completion
  &gt;&gt; # elif [ -f /etc/bash_completion ]; then
  &gt;&gt; # . /etc/bash_completion
  &gt;&gt; # fi
  &gt;&gt; #fi
  &gt;&gt;
  &gt;&gt; alias ai=’sudo aptitude install –without-recommends‘
  &gt;&gt; alias as=’aptitude search‘
  &gt;&gt; alias ass=’aptitude show‘
  &gt;&gt; alias ar=’sudo aptitude remove‘
  &gt;&gt; alias arp=’sudo aptitude purge‘
  &gt;&gt; alias au=’sudo aptitude update‘
  &gt;&gt; alias ap=’sudo aptitude upgrade‘
  &gt;&gt; alias apb=’sudo aptitude -t wheezy-backports dist-upgrade‘
  &gt;&gt; alias aup=’sudo aptitude update &amp;&amp; sudo aptitude upgrade‘
  &gt;&gt; alias aupb=’sudo aptitude update &amp;&amp; sudo aptitude -t wheezy-backports dist-upgrade‘
  &gt;&gt; alias aib=’sudo aptitude install –without-recommends -t wheezy-backports‘
  &gt;&gt; alias 1=’/bin/sync &amp;&amp; /bin/echo 1 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  &gt;&gt; alias 2=’/bin/sync &amp;&amp; /bin/echo 2 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  &gt;&gt; alias 3=’/bin/sync &amp;&amp; /bin/echo 3 | /usr/bin/sudo /usr/bin/tee /proc/sys/vm/drop_caches‘
  &gt;&gt;
  &gt;&gt; # if the command-not-found package is installed, use it
  &gt;&gt; if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
  &gt;&gt; function command_not_found_handle {
  &gt;&gt; # check because c-n-f could’ve been removed in the meantime
  &gt;&gt; if [ -x /usr/lib/command-not-found ]; then
  &gt;&gt; /usr/bin/python /usr/lib/command-not-found — „$1″
  &gt;&gt; return $?
  &gt;&gt; elif [ -x /usr/share/command-not-found/command-not-found ]; then
  &gt;&gt; /usr/bin/python /usr/share/command-not-found/command-not-found — „$1″
  &gt;&gt; return $?
  &gt;&gt; else
  &gt;&gt; printf „%s: command not found\n“ „$1″ &gt;&amp;2
  &gt;&gt; return 127
  &gt;&gt; fi
  &gt;&gt; }
  &gt;&gt; fi </pre>

<p>
Nastavení disků a oddílů
</p>

<p>
„noatime,commit=5000 ⇒ čas se nezapisuje na disk hned, časová prodleva zápisu na disk je 5000 s“
</p>

<p>
“ $sudo leafpad /etc/fstab ⇒ může vypadat nějak takhle (editor nano = ctrl-o, ctrll-x)“
</p>
<pre class="code">  &gt;&gt; # /etc/fstab: static file system information.</pre>
<pre class="code">  &gt;&gt; #
  &gt;&gt; # Use ‚blkid‘ to print the universally unique identifier for a
  &gt;&gt; # device; this may be used with UUID= as a more robust way to name devices
  &gt;&gt; # that works even if disks are added and removed. See fstab(5).
  &gt;&gt; #
  &gt;&gt; #
  &gt;&gt; # / was on /dev/sda3 during installation
  &gt;&gt; UUID=890eeba9-7e5a-4cbe-9d13-38f45a4382f1 / ext4 noatime,errors=remount-ro,commit=5000 &gt;&gt;&gt; 0 1
  &gt;&gt; # /home was on /dev/sda4 during installation
  &gt;&gt; UUID=a12000cf-bfef-4988-bcbc-5edf1779a0eb /home ext4 noatime,commit=5000 0 2
  &gt;&gt; # swap was on /dev/sda5 during installation
  &gt;&gt; UUID=d9afa00b-7a91-46a3-8435-8a2e80aaf8a6 none swap sw 0 0
  &gt;&gt; /dev/sr0 /media/cdrom0 udf,iso9660 user,noauto 0 0 </pre>

<p>
Nastavení jádra
</p>

<p>
„$sudo sysctl -a = zjištění všech možností podporovaných v jádře“
</p>

<p>
„$sudo leafpad /etc/sysctl.conf = úprava souboru dle předchozího výběru (editor nano = ctrl-o, ctrll-x)“
</p>

<p>
„$sudo sysctl -p = reaktivace souboru /etc/sysctl.conf s naší úpravou“
</p>
<pre class="code">  &gt;&gt; #</pre>
<pre class="code">  &gt;&gt; # /etc/sysctl.conf – Configuration file for setting system variables
  &gt;&gt; # See /etc/sysctl.d/ for additonal system variables
  &gt;&gt; # See sysctl.conf (5) for information.
  &gt;&gt; #
  &gt;&gt;
  &gt;&gt; #kernel.domainname = example.com </pre>
<pre class="code">  &gt;&gt; # Uncomment the following to stop low-level messages on console
  &gt;&gt; #kernel.printk = 3 4 1 3 </pre>
<pre class="code">  &gt;&gt; ##########################################################3
  &gt;&gt; # Functions previously found in netbase
  &gt;&gt; #
  &gt;&gt;
  &gt;&gt; # Uncomment the next two lines to enable Spoof protection (reverse-path filter)
  &gt;&gt; # Turn on Source Address Verification in all interfaces to
  &gt;&gt; # prevent some spoofing attacks
  &gt;&gt; #net.ipv4.conf.default.rp_filter=1
  &gt;&gt; #net.ipv4.conf.all.rp_filter=1
  &gt;&gt;
  &gt;&gt; # Uncomment the next line to enable TCP/IP SYN cookies
  &gt;&gt; # See http://lwn.net/Articles/277146/
  &gt;&gt; # Note: This may impact IPv6 TCP sessions too
  &gt;&gt; #net.ipv4.tcp_syncookies=1
  &gt;&gt;
  &gt;&gt; # Uncomment the next line to enable packet forwarding for IPv4
  &gt;&gt; #net.ipv4.ip_forward=1
  &gt;&gt;
  &gt;&gt; # Uncomment the next line to enable packet forwarding for IPv6
  &gt;&gt; # Enabling this option disables Stateless Address Autoconfiguration
  &gt;&gt; # based on Router Advertisements for this host
  &gt;&gt; #net.ipv6.conf.all.forwarding=1
  &gt;&gt;
  &gt;&gt;
  &gt;&gt; ###############################################################
  &gt;&gt; # Additional settings – these settings can improve the network
  &gt;&gt; # security of the host and prevent against some network attacks
  &gt;&gt; # including spoofing attacks and man in the middle attacks through
  &gt;&gt; # redirection. Some network environments, however, require that these
  &gt;&gt; # settings are disabled so review and enable them as needed.
  &gt;&gt; #
  &gt;&gt; # Do not accept ICMP redirects (prevent MITM attacks)
  &gt;&gt; #net.ipv4.conf.all.accept_redirects = 0
  &gt;&gt; #net.ipv6.conf.all.accept_redirects = 0
  &gt;&gt; # _or_
  &gt;&gt; # Accept ICMP redirects only for gateways listed in our default
  &gt;&gt; # gateway list (enabled by default)
  &gt;&gt; # net.ipv4.conf.all.secure_redirects = 1
  &gt;&gt; #
  &gt;&gt; # Do not send ICMP redirects (we are not a router)
  &gt;&gt; #net.ipv4.conf.all.send_redirects = 0
  &gt;&gt; #
  &gt;&gt; # Do not accept IP source route packets (we are not a router)
  &gt;&gt; #net.ipv4.conf.all.accept_source_route = 0
  &gt;&gt; #net.ipv6.conf.all.accept_source_route = 0
  &gt;&gt; #
  &gt;&gt; # Log Martian Packets
  &gt;&gt; #net.ipv4.conf.all.log_martians = 1
  &gt;&gt; #
  &gt;&gt; net.ipv6.conf.default.accept_ra = 0
  &gt;&gt; net.ipv6.conf.eth0.accept_ra = 0
  &gt;&gt;
  &gt;&gt; kernel.sysrq=1
  &gt;&gt; vm.dirty_background_bytes = 4194304
  &gt;&gt; vm.dirty_bytes = 4194304
  &gt;&gt; </pre>