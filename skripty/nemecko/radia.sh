#!/bin/bash
echo "XXX___Radia_online___XXX"  | osd_cat -d 1 -s 1 -A left -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
xterm -fa 'Monospace' -fs 14 -geometry 80x20+60+150 -title Online_radia -e bash -c "vlc -I ncurses https://raw.githubusercontent.com/bedjan/mm/master/radia_online.m3u"

