#!/bin/bash  
TITLE=`echo "PC_vypne_v_00:00"`
xterm -hold  -T "$TITLE" -n "$TITLE" -e "bash -c 'sudo shutdown -h 00:00' " 
sleep 5 && bash -c "wmctrl -r "PC_vypne_v_00:00" -t 1"
#&& wmctrl -r "PC_vypne_v_00:00" -t 1


#wmctrl -r "$TITLE" -t 1
#wmctrl -r "PC_vypne_v_00:00" -t 1

