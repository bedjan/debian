#!/bin/bash  
urxvt -geometry 80x20+60+150 -title Youtube_stazeni_videa +hold -e bash -c "youtube-dl --output '%(title)s.%(ext)s' $(xsel --clipboard)"