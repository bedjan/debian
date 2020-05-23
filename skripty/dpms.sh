#!/bin/bash
#vypne usporu energie DPMS - switch zapne/vypne 
#leafpad ~/skr/dpms
STATUS=`xset -q | grep -e 'DPMS is'| cut -c 10-17`
if [ "$STATUS" = " Disable" ]] ;
then xset s on +dpms 
echo "|||___Vypinam monitor___|||"  | osd_cat -d 1 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
elif [ "$STATUS" = " Enabled" ]] ; 
then xset s on -dpms 
echo "XXX___Nevypinam monitor___XXX"  | osd_cat -d 1 -s 1 -A right -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
fi
# | echo "Hlasitost vypnuta/zapnuta" | osd_cat -d 1 -s 1 -A center -l 1 -p middle -o 60 -c green -f '-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'

#!/bin/bash
