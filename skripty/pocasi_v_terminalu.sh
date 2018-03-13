#!/bin/bash
#vice info na https://github.com/chubin/wttr.in
#zobrazeni v jinem jazyce http://wttr.in/:translation
# nebo sudo apt-get install ansiweather &&  ansiweather -l Prague,CZ -f 10


xterm -hold  -title POCASI -max -fa 'Monospace' -fs 11 -e  bash -c "
which curl && echo curl_nainstalovan
echo pocasi_v_rychnov_nad_kneznou
curl  -s  --location -H 'Accept-Language: cs'  wttr.in/rychnov_nad_kneznou?lang=cs"

#curl wttr.in/rychnov_nad_kneznou?lang=cs
#curl  -s  --location -H 'Accept-Language: cs'  http://wttr.in/

