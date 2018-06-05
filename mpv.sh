#!/bin/bash

#PID=$!

#[ "$(pidof mpv)" = "0" ]
#xsel=$(xsel --clipboard | grep -v "://www.youtube"  && echo "start" || echo "stop")

#xsel=$(echo 'https://www.youtube.com/watch?v=lPdWGPyVFPI'| grep  -c 1 '://www.youtube' && echo '0' || $(sed -i '/www/d';echo '1'))

#xsel=https://www.stream.cz/detektor-pravdy/10023728-plysovi-medvidci-plneni-pavoucimi-vajicky

#if [ xsel = 0 ]; then echo "0";urxvt -geometry 80x20+60+150 -title Video_online_bez_parametru +hold -e  bash -c "echo ===SPOUSTIM===;echo ===ONLINE===;echo ===VIDEO===;echo ===BEZ_PARAMETRU_YOUTUBE===;echo -----------;mpv '$(xsel --clipboard)'";exit;if [ ! $? ];then echo "1";urxvt -geometry 80x20+60+150 -title Video_online +hold -e bash -c "echo ===SPOUSTIM===;echo ===ONLINE===;echo ===VIDEO===;echo -----------;mpv --ytdl-format='bestvideo[height<=?480]+bestaudio' --ytdl-raw-options=no-check-certificate= '$(xsel --clipboard)'";else echo "twl"; fi ; fi


#urxvt -geometry 80x20+60+150 -title Video_online +hold -e bash -c "echo ===SPOUSTIM===;echo ===ONLINE===;echo ===VIDEO===;echo -----------;mpv --ytdl-format='bestvideo[height<=?480]+bestaudio' --ytdl-raw-options=no-check-certificate= '$(xsel --clipboard)'" 2> | xargs -0 && echo ok | urxvt -geometry 80x20+60+150 -title Video_online_bez_parametru +hold -e  bash -c "echo ===SPOUSTIM===;echo ===ONLINE===;echo ===VIDEO===;echo ===BEZ_PARAMETRU_YOUTUBE===;echo -----------;mpv '$(xsel --clipboard)'" 

#2&1> grep '[ytdl_hook] youtube-dl failed, trying to play URL directly ...'





#[ytdl_hook] youtube-dl failed, trying to play URL directly ...



#mpv `youtube-dl "$(xsel --clipboard)"  -r 100K  -f 'bestvideo[height<=?480p]' -g`

#mpv --cache=1024 `$(youtube-dl  -f 'bestvideo[height<=?480p]' -g "$(xsel --clipboard)")`



urxvt -geometry 80x20+60+150 -title Video_online +hold -e bash -c "echo ===SPOUSTIM===;echo ===ONLINE===;echo ===VIDEO===;echo -----------;mpv --ytdl-format='bestvideo[height<=?480]+bestaudio' --ytdl-raw-options=no-check-certificate= '$(xsel --clipboard)' || mpv '$(xsel --clipboard)'"