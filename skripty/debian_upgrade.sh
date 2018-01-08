#!/bin/bash  

sakura -h -e "bash -c 'sudo apt-get update;wait; sudo apt list --upgradable -a;wait; sudo apt-get upgrade' "
