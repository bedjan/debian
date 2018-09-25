if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]];
then
exec sudo service lightdm start
fi
