#!/bin/bash  

#sakura -h -e "bash -c 'sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get upgrade;wait;sudo apt autoremove; echo =====KONEC_UPGRADE=====' "
sakura -h -e "bash -c 'sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get -t stretch-backports dist-upgrade;wait;sudo apt autoremove;sudo apt autoclean; echo =====KONEC_UPGRADE=====' "

