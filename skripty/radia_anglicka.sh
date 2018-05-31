#!/bin/bash  
#qmmp /home/d/english_radia.m3u
wget -N https://github.com/bedjan/mm/raw/master/english_radia.m3u
#vlc english_radia.m3u

xterm  -fa 'Monospace' -fs 14 -geometry 80x20+60+150 -title Anglicka_radia -e bash -c "vlc -I ncurses  https://raw.githubusercontent.com/bedjan/mm/master/english_radia.m3u"