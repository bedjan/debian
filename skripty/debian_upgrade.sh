#!/bin/bash  

#sakura -h -e "bash -c 'sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get upgrade;wait;sudo apt autoremove; echo =====KONEC_UPGRADE=====' "
#sleep 20 &
sakura -h -e "bash -c 'echo ___Za_20s_se_spusti_UPGRADE___;sleep 20;sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get -t stretch-backports dist-upgrade -y;wait;sudo apt autoremove;wait;sudo apt autoclean; echo =====KONEC_UPGRADE=====' " &

