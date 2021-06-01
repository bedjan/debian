#!/bin/bash
# if no command line arg given
# set volume to Unknown
if [ -z $1 ]
then
  choose="*** Unknown vehicle ***"
elif [ -n $1 ]
then
# otherwise make first arg as a volume
  choose=$1
fi

# use case statement to make decision volume
case $choose in

##OVLADANI##

   "down") echo "$choose volume"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1' &  pactl set-sink-volume 0 -5%;;
   "up")  echo "$choose volume"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1' &  pactl set-sink-volume 0 +5%;;
   "toggle") echo "$choose volume"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1' &  pactl set-sink-mute 0 toggle;;
   "monitor") echo "XXX___Vypinam monitor___XXX"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';sleep 10;xset dpms force off ;;
   "dpms") STATUS=`xset -q | grep -e 'DPMS is'| cut -c 10-17`
if [ "$STATUS" = " Disable" ]] ;
then xset s on +dpms 
echo "|||___Vypinam DPMS monitor___|||"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
elif [ "$STATUS" = " Enabled" ]] ; 
then xset s on -dpms 
echo "XXX___Nevypinam DPMS monitor___XXX"  | osd_cat -d 1 -s 1 -A LEFT -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
fi;;
   "ytdl_update") xterm -title Youtube-dl-update -hold -e "pip install --upgrade youtube-dl";;
   "ytdl_download") xterm -title Youtube-dl-update -hold -e "pip install --upgrade youtube-dl";;

   "mixer") echo "$choose volume";xterm -hold -e alsamixer;;

##PROGRAMY##


   "terminal") sakura;;
 
   "aup") xterm -hold -e 'sudo apt update -y &&  sudo apt upgrade -y &&  sudo apt autoremove -y &&  sudo apt autoclean -y';;
   "chromium") chromium;;
   "netsurf") netsurf www.google.cz;;
   "procesy") lxtask;;
   "streamtuner") streamtuner2;;
   "gesta") easystroke;;
   "easystroke") easystroke;;
   "mpc") mpc-qt;;
   "kalkulacka") calcoo;;

##VIDEO##

  "youtubedl_video") xterm -hold -e 'cd /media/sda2;youtube-dl --ignore-errors  "$(xsel --clipboard)"';;
  "youtubedl_audio") xterm -hold -e 'cd /media/sda2;youtube-dl  --ignore-errors --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" "$(xsel --clipboard)"';;

##VYPNOUT##

   "restart") xterm -hold -e 'echo Vypnout_v_00:00;sudo reboot';;
   "vypnout") xterm -hold -e 'echo Vypnout_v_00:00;sudo poweroff';;
   "vypnout0") xterm -hold -e 'echo Vypnout_v_00:00;sudo shutdown -h 00:00';;
   "vypnout1") xterm -hold -e 'echo Vypnout_v_00:00;sudo shutdown -h 01:00';;
   "vypnout2") xterm -hold -e 'echo Vypnout_v_02:00; sudo shutdown -h 02:00';;

##OPENBOX##


##SYSTEM##
   "github_all") firefox https://github.com/bedjan/debian/blob/master/skripty/all.sh;;
   "bash") xterm -hold -e 'sudo mousepad .bashrc';;
   "bash_aliases") xterm -e 'sudo mousepad .bash_aliases';;
  ## "history") xterm -hold -e "history";;

##RADIA##

##TV##

##WEB##

   "kalendar") firefox https://time.is/calendar;;
   "cas") firefox https://time.is/;;
   "zdrojak") firefox https://zdrojak.cz/;;
   "linuxexpress") firefox https://www.linuxexpres.cz/;;

   "gkeep") firefox https://keep.google.com/#home;echo "Keep - bedjan/od" | $osd;;
   "gmail") firefox https://mail.google.com/mail/u/0/#inbox;echo "Gmail - bedjan/od" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "yahoo_email") firefox https://login.yahoo.com;echo "Yahoo - bednarjan/od" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "seznam_email") firefox https://login.szn.cz/;echo "Seznam - janbednar /od | cizinou /o1" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "seznam_sweb") firefox https://login.szn.cz/?serviceId=sweb&loggedURL=http://webadmin.sweb.cz/;echo "Seznam sweb - janbednar /od | cizinou /o1" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "seznam_ftp") firefox ftp://sweb.cz/;echo "Seznam sweb - janbednar /o1 | cizinou /o1" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "ulozto") firefox https://uloz.to/login?key=logreg;echo "Ulozto - drobek1015/o1 | bednarova.rk/S" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "vinted") firefox https://www.vinted.cz/member/general/login?ref_url=%2F&__cf_chl_captcha_tk__=06e60c0838f1e7a7cfd5731145275268b2f8d333-1622574905-0-AWud745mERmzGs9xCMmTroN332YOMEB1XBdXrPdWOQb8DLHtVc_N12zsvulYXNXLllall03fFZTibqJOiwZAUE81L6fVqCpHHbu8-3razVqegPH9re-QEQZfqN_EzyWYJCjI2_q2ZBDKAAQnTeVwL2CdkgiuZvHgTuBg8Jd0sF0cqNidaj8mYoXU3bamvN5TBnyEWwS7CHFcmdRPpW1RfAfMRh40-evwGj-9EHUsXZrma23ik_BXVbhs2URb_mb-GVAXMaakFCT3XV5bppHKz3oSSQz9jTwc73S1Ym0l089x-QfVBsc4XUGYtDeykKIjTo1rm7h9RLIAkGRq8nPcFCcdZBznaFb779UgKQ-KLYomfrqAkRsCYDPIvNSiPs_R3WRyAR2Y-jpSJTaKdTb78nX5sCH8qsqJ9Q9ksbvWsFlMsUE15ua8lyGrnQsN8KmTWkanrIneuVfsDHqVyqzpRZNAvz5r-CDm1pA5x5M4FkYXcwPL_KOJ6fR96lPDrN1cWOAlMHY8oRnfqNJMqhEva-zZ-BC31NoXdbsXtNr6xJtd3qr331Bq237FcAWYvwHtAWUsXCwV_Dh95L4WR747luRvi9htOMEXK34CgQk1GWc52dUVjzxTaz52vX-YNdjiKSYxnYlWP1stZtGLkRBqNyWdj7uGW-kdlOaKtfBqkWEpvg1OgUdgB21cuPY-GsWc6Gyq2XGrc35xgFbVdouNQxg;echo "vinted.cz - bedjan@/o1" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "soundcloud") firefox https://soundcloud.com/signin;echo "soundcloud.com - bedjan@/o1" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "difm") firefox https://www.di.fm/;echo "di.fm/ bedjan@/o" | osd_cat -d 10 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1';;
   "gdisk") firefox https://drive.google.com/drive/;;
   "gdocs") firefox https://docs.google.com/document/u/0/;;
   "gphotos") firefox https://photos.google.com/?hl=cs&pli=1;;
   "gsites") firefox https://sites.google.com/site/bedjansite/;;
   "gtranslate") firefox https://translate.google.cz/;;
   "seznam") firefox https://www.seznam.cz/;;
   "abclinuxu") firefox https://www.abclinuxu.cz/;;
   "tvprogram") firefox https://www.tvprogram.cz/;;
   "root") firefox https://www.root.cz/;;
   "simplenote") firefox https://app.simplenote.com/login/;;
   "gtakeout") firefox https://takeout.google.com/settings/takeout?pli=1;;
   "web") firefox http://janbednar.sweb.cz/;;
   "dropbox") firefox https://www.dropbox.com/home;;
   "github") firefox https://github.com/bedjan/;;
   "github_all") firefox https://github.com/bedjan/debian/blob/master/skripty/all.sh;;
   "facebook") firefox https://www.facebook.com/;;
   "youtube") firefox https://www.youtube.com/;;
   "bazos") firefox https://www.bazos.cz/;;
   "ct") firefox https://www.ceskatelevize.cz/porady/a-z/;;
   "ctzive") firefox https://www.ceskatelevize.cz/ivysilani/serialy;;
   "csfd") firefox https://www.csfd.cz/;;
   "tvonline") firefox https://www.spustit.cz/tv-ct1-online-zdarma/;;
   "nemcina_youtube") firefox https://www.youtube.com/channel/UC4LQ7gUVS5w45ba1VubmJpg/videos;;
   *) echo "Error, Wrong!";;
esac

##--Notes--##

##down volume
#pactl set-sink-volume 0 -5% 
#amixer set Master 5-

##up volume
#pactl set-sink-volume 0 +5% 
#amixer set Master 5+

##toggle volume
#pactl set-sink-mute 0 toggle 
#amixer set Master toggle

##mixer
#xterm -hold -e alsamixer
#pavucontrol
#pasystray

