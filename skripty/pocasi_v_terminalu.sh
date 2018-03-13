#!/bin/bash
xterm -hold  -max -fa 'Monospace' -fs 11 -e  bash -c "
which curl && echo curl_nainstalovan
echo pocasi_v_rychnov_nad_kneznou
curl  -s  --location -H 'Accept-Language: cs'  http://wttr.in/"

#curl  -s  --location -H 'Accept-Language: cs'  http://wttr.in/

