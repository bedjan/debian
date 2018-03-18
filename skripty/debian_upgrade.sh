#!/bin/bash  

#sakura -h -e "bash -c 'sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get upgrade;wait;sudo apt autoremove; echo =====KONEC_UPGRADE=====' "
#sleep 30 &
sakura -h -e "bash -c 'echo ==_Za_30s_se_spusti_UPGRADE_==;sudo rm -f /var/lib/dpkg/lock;sleep 30;sudo aptitude update;wait; echo -e "== vypis_upgradovatelnych_balicku =="; sudo apt list --upgradable -a;wait; sudo aptitude -t stretch-backports dist-upgrade -y;wait;sudo apt autoremove -y;wait;sudo apt autoclean -y; echo =====KONEC_UPGRADE=====' " &

