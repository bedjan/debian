#!/bin/bash  
#qmmp /home/d/english_radia.m3u
$(echo ~)/
wget -N https://github.com/bedjan/mm/raw/master/english_radia.m3u
#vlc $(echo ~)/english_radia.m3u

xterm  -fa 'Monospace' -fs 14 -geometry 30x70-25-25  -title Anglicka_radia -e bash -c "vlc -I ncurses  https://raw.githubusercontent.com/bedjan/mm/master/english_radia.m3u"
