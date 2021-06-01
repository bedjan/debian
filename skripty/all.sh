#!/bin/bash

# if no command line arg given
# set volume to Unknown
if [ -z $1 ]
then
  choose="*** Unknown vehicle ***"
elif [ -n $1 ]
then
# otherwise make first arg as a volume
  choose=$1
fi

# use case statement to make decision volume
case $choose in

   "down") echo "$choose volume";pactl set-sink-volume 0 -5%;;
   "up")  echo "$choose volume";pactl set-sink-volume 0 +5%;;
   "toggle") echo "$choose volume";pactl set-sink-mute 0 toggle;;
   "mixer") echo "$choose volume";xterm -hold -e alsamixer;;
   *) echo "Error, Wrong!";;
esac

##--Notes--volume##

##down volume
#pactl set-sink-volume 0 -5% 
#amixer set Master 5-

##up volume
#pactl set-sink-volume 0 +5% 
#amixer set Master 5+

##toggle volume
#pactl set-sink-mute 0 toggle 
#amixer set Master toggle

##mixer
#xterm -hold -e alsamixer
#pavucontrol
#pasystray
