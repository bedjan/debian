# This shell script is run before Openbox launches.
# Environment variables set here are passed to the Openbox session.
#killall sh;killall fetchmail;killall wbar;killall conky &
#sh /home/d/skripty/.email.sh &


##################################
###conky,wbar,tint2
sh skripty/reload.sh &
###rizení at příkazů
#sh skripty/at.sh &
###rizení průhlednosti
#sh skripty/pruhlednost.sh &
#####################################

###základ
#tint2 &
#(sleep 4; sh /home/d/skripty/dalsi.sh &)&
#wbar vpravo
#(sleep 6;wbar -config .wbar -vbar -pos right -nanim 3 -zoomf 1.8 -idist 5 -isize 24 -balfa 0 -falfa 100 &)&
#wbar vlevo
#(sleep 7;wbar -config .wbar1 -vbar -pos left -nanim 3 -zoomf 1.8 -idist 5 -isize 24 -balfa 0 -falfa 100 &)&

volumeicon &

#hpanel &
#fspanel &
#ltpanel &
#lxpanel &

#(sleep 11; conky -c .conkyrc1 &)&
#(sleep 11; conky -c .conkyrc3 &)&

#(sleep 4; conky -c .conkyrc &)&
#(sleep 11; conky -c .conkyrc4 &)&

#conky &



#(sleep 4; wbar -above-desk -jumpf 1 -vbar -pos left -nanim 3 -zoomf 1.8 -idist 10 -isize 38 -bpress -balfa 0 -falfa 100 &)&
#(sleep 4; wbar -jumpf 0 -pos bot-left -nanim 3 -zoomf 1.3 -idist 7 -isize 18 -bpress -balfa 0  &)&
#(sleep 4; wbar -isize 24 -j 1 -p bot-left -balfa 0 -bpress -nanim 3 -z 1.5 -above-desk   &)&
setxkbmap -layout cz,us -variant qwerty -option grp:alt_shift_toggle &
numlockx &
#xbindkeys &

#(sleep 5;idesk &)&


#gmail-notify &

#sh /home/d/skripty/email_po_startu.sh &

#sudo rm /tmp/.fetchmailrc.log &

#sudo touch /tmp/.fetchmailrc.log &
#sudo chown -R d /tmp/.fetchmailrc.log &
#fetchmail -c >> /tmp/.fetchmailrc.log &


#(sleep 5;fetchmail -c &)&

#(sleep 6;wbar -above-desk -pos bot-left -isize 14 -zoomf 1.6  -balfa 80 &)&
#(sleep 6;wbar -above-desk -pos top-right -isize 16 -zoomf 1.6 &)&
#(sleep 6;wbar -above-desk -pos top -isize 20 -zoomf 1.6 &)&
#(sleep 6;wbar -above-desk -vbar -pos right -nanim 3 -zoomf 1.6 -idist 5 -isize 24 -balfa 0 -falfa 100 &)&
#(sleep 6;wbar -above-desk -pos top -zoomf 1.8 -isize 20 -isize 16 -balfa 0 -falfa 100 &)&
#wbar nahore
#(sleep 6;wbar -pos top -nanim 3 -zoomf 1.8 -idist 5 -isize 24 -balfa 0 -falfa 100 &)&



#(sleep 20;tilda &)&
#(sleep 5;xcompmgr -n &)&
#(sleep 0;xterm &)&
#Spusti program po 1 vterine , dotyk na pravy horni roh obrazovky
#(sleep 5; xautolock -locker "xte 'xterm'" -corners 0+00 -cornerdelay 1 &)&

#Log /var/log/messages
#(sleep 3 && sudo root-tail -g 800x250+10+750 -font fixed /var/log/messages,white) &

#(sleep 3; feh --bg-scale /home/d/Vzhled/Debian_wallpaper_by_bulwiarz.png &)&
#(sleep 0; feh --bg-scale /home/d/Vzhled/grassy-sunset.jpg &)&
#(sleep 3; feh --bg-scale /home/d/Vzhled/simple.png &)&
#(sleep 3; feh --bg-scale /home/d/Vzhled/spiral-tunnel.jpg &)&

## Manazer schranky
#(sleep 12 && parcellite) &

#(sleep 3; rainlendar2 &)&
#(sleep 10;xpad &)&
#(sleep 12;gkrellm &)&
#(sleep 12;unclutter &)&
#(sleep 5 && sudo root-tail -g 800x250+10+720 -font fixed /var/log/messages,white) &
#(sleep 12; qasmixer &)&
#uspávání ya 2h
#(sleep 10; xautolock -time 1 -locker "xte 'xterm'" &)&
#(sleep 10; xautolock -time 180 -locker "killall me-tv && sudo pm-suspend" &)&
#Dropbox
#(sleep 30 && ~/.dropbox-dist/dropboxd &)&
#pokud spadne conky
# Vypnutí DPMS a spořiče
#xset -dpms; xset s off &

## pulseaudio
#start-pulseaudio-x11 &

# pulseaudio -D &
#průhlednost -kolečkem na titulku
#(sleep 12; xcompmgr -cC -t-3 -l-5 -r5  &)&
#(sleep 12; xcompmgr -c &)&
#(sleep 12; xcompmgr -n &)&
#xcompmgr -CcfF -I20 -O10 -D1 -t-5 -l-5 -r4.2 -o.82 -m.82 &
#xcompmgr -c -t-5 -l-5 -r4.2 -o.55 -I1 -O1 -Ff -m.86 & #basic and transparent menus
#xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D6 -m.86 & #more effects, transparent menus
#xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D2 -m.86 & #more effects, quicker fade and transparent menus
#xcompmgr -n &


# aktualni cas
#(sleep 12; sudo ntpdate ntp.cesnet.cz &)&



# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

# Run XDG autostart things.  By default don't run anything desktop-specific
# See xdg-autostart --help more info
DESKTOP_ENV="OPENBOX"
if which /usr/lib/openbox/xdg-autostart >/dev/null; then
  /usr/lib/openbox/xdg-autostart $DESKTOP_ENV
fi
