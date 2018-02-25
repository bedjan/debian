#!/bin/bash
urxvt -geometry 80x20+60+150 -title Youtube_dl_upgrade +hold -e bash -c "sudo apt-get install python-setuptools;sudo easy_install pip;sudo pip install --upgrade youtube-dl"
