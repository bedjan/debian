#!/bin/bash  
#qmmp /home/d/radia_online.m3u
wget -N https://raw.githubusercontent.com/bedjan/mm/master/radia_online.m3u
#vlc radia_online.m3u

xterm  -fa 'Monospace' -fs 14 -geometry 80x20+60+150 -title CZ_SK_radia  -e bash -c "vlc -I ncurses  https://raw.githubusercontent.com/bedjan/mm/master/radia_online.m3u"