_**Command line**_

zdroj [http://www.linuxguide.it/command_line/linux_commands_cz.html](http://www.linuxguide.it/command_line/linux_commands_cz.html "http://www.linuxguide.it/command_line/linux_commands_cz.html")

zdroj 1-24 díl [http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail](http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail "http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail")

* * *

znaky na klávesnici

`@` =altgr+v,`|` = altgr+w, `~` =altgr+a, `$` = alt+č ,`$` = alt+X, `&amp;` = alt+C, `~` = alt+A, `{}` = alt+BN, `[]` = alt+ú a alt + , `\` = alt+Q

verze jádra

`$ uname -r`

výpis zařízení přes PCI

`$ lspci -tv`

výpis zařízení přes USB

`$ lsusb -tv`

vypnutí systému hned

`# shutdown -h now`

restart systému hned

`# shutdown -r now`

vypnutí systému v 16:30

`# shutdown -h 16:30 &amp;`

zrušení vypnutí

`# shutdown -c`

přepnutí klávesnice v Xorg

`$ setxkbmap -model pc105 -layout en_US -variant basic` (anglická)

`$ setxkbmap -model pc105 -layout cz_qwerty -variant basic` (česká)

zobrazí cestu k binárce ??

`$ whereis ??`

plná cesta k binárce ??

`$ which ??`

cesta k aktuálnímu adresáři

`$ pwd`

výpis adresáře do stromu

`$ tree`

smazání souboru

`$ rm -f`

smazání adresáře – rekurzivně =se všemi soubory v něm

`$ rm -rf`

přesunutí se do adresáře ??

`cd ??`

přesunutí se do adresáře uživatele

`cd`

vrátit se v adresářové struktuře o pozici níž

`$ cd ..`

vytvoření adresáře ??

`$ mkdir ??`

kopie souboru, nebo adresáře ??

`$ cp ??`

(od/ kam) 1) ( soubory = `$ cp soubor1 soubor2` ) 2) ( všechny soubory z adresáře `$ cp ??/* ??`

vytvoření souboru ??

`$ touch ??`

přejmenování, nebo přesun souboru nebo adresáře ??

`$ mv ??`

spustitelný soubor ??

$ chmod +x ??

změna práv soub a adresáře

`$ chmod 777`

výpis souborů adresáře

`$ ls -l`

výpis souborů ( i skryté) adresáře

`$ ls -a`

výpis souborů adresáře s čísly v názvu

`$ ls *[0-9]*`

výpis souborů adresáře s jejich právy

`$ ls -lh`

výpis souboru ??

`$ cat ??`

interaktivní náhled na soubor ??

`$ less ??` (ruší se q)

interaktivní náhled na soubor ?? – postupně

`$ more ??` (ruší se q)

kódování znaků výpis v systému

`$ iconv -l`

převod kodování souboru

`$ iconv -f z_Encoding -t do_Encoding vstupní_soubor &gt; výstupní_soubor`

výpis připojených zařízení s velikostmi obsazení

`$ df -h`

vyhledání souborů s příponou??

`$ locate \*.??`

vyhledá soubory s příponou ‚.??‘ a upraví jim práva

`find / -name *.?? -exec chmod 755 '{}' \;`

vytvoření nového uživatele ??

`$ useradd ??`

smazání uživatele ??

`$ userdel -r ??`

změna hesla

`$ passwd`

změní vlastníka souboru

`$ chown uživatel soubor`

změní vlastníka adresáře a všeho co obsahuje

`$ chown -R uživatel_adresář`

rozbalení tar archivu ??

`$ tar -xvf ??.tar`

rozbalí komprimovaný bz2 soubor včetně tar archivu

`$ tar -xvfj ??.tar.bz2`

rozbalí rar archiv ??

`$ unrar x ??.rar`

rozbalí zip archiv ??

`$ unzip ??.zip`

zobrazí obsah souboru počínaje první řádkou

`$ cat ??1`

zobrazí první dva řádky souboru

`$ head -2 ??1`

stejné jako předchozí, ale souborem je možno procházet i zpětně

`$ less ??1`

zobrazí soubor a mužní jeho procházení

`$ more ??1`

zobrazí obsah souboru počínaje poslední řádkou

`$ tac ??1`

zobrazí poslední 2 řádky souboru

`$ tail -2 ??1`

zobrazuje v reálném čase řádky přidávané na konec souboru

`$ tail -f /var/log/messages`

odstraní ze souboru example.txt všechny sudé řádky

`$ cat example.txt | awk 'NR%2==1'`

zobrazí první sloupec řádku

`$ echo a b c | awk '{print $1}'`

zobrazí první a třetí sloupec řádku

`$ echo a b c | awk '{print $1,$3}'`

spočítá řádky souboru

`$ cat -n ??1`

porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??1′

`$ comm -1 ??1 ??2`

porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??2′

`$ comm -2 ??1 ??2`

porovná obsah dvou souborů smazáním pouze řádek objevivších se v obou souborech

`$ comm -3 ??1 ??2`

najde rozdíly mezi soubory

`$ diff ??1 ??2`

Vyhledá slovo

`$ grep Aug /var/log/messages`

Vyhledá slova začínající

`$ grep ^Aug /var/log/messages`

vybere ze souboru ‚/var/log/messages‘ všechny řádky obsahující čísla

`$ grep [0-9] /var/log/messages`

vyhledá řetězec

`$ grep Aug -R /var/log/*`

spojí obsahy dvou souborů zarovnané do sloupců

`$ paste ??1 ??2`

spojí obsahy dvou souborů zarovnané do sloupců s ‚+‘ jako oddělovačem uprostřed

`$ paste -d '+' ??1 ??2`

najde rozdíly mezi soubory a zobrazí je, podobné jako diff

`$ sdiff ??1 ??2`

nahradí string1 řetězcem string2 v example.txt

`$ sed 's/string1/string2/g' example.txt`

odstraní ze souboru example.txt všechny prázdné řádky

`$ sed '/^$/d' example.txt`

odstraní komentáře a prázdné řádky ze souboru example.txt

`$ sed '/ *$/d; /^$/d' example.txt`

smaže ze souboru example.txt první řádek

`$ sed -e '1d' exampe.txt`

zobrazí pouze řádky obsahující slovo string1

`$ sed -n '/string1/p'`

zobrazí prázdné znaky z konce každého řádku

`$ sed -e 's/ *$_' example.txt_`

_

smaže z textu pouze slovo string1 a zbytek nechá na pokoji

_

_`$ sed -e 's/string1`_`g' example.txt`

vypíše řádky 1 až 5 souboru example.txt

`$ sed -n '1,5p' example.txt`

vypíše řádek 5 souboru example.txt

`$ sed -n '5p;5q' example.txt`

nahradí více nul jedinou

`$ sed -e 's/00*/0/g' example.txt`

seřadí obsah dvou souborů

`$ sort ??1 ??2`

seřadí obsah dvou souborů a ignoruje duplikující řádky

`$` sort ??1 ??2 | uniq

seřadí obsah dvou souborů a zobrazí pouze neduplicitní řádky

`$ sort ??1 ??2 | uniq -u`

seřadí obsah dvou souborů a zobrazí pouze duplicitní řádky

`$ sort ??1 ??2 | uniq -d`

prohodí malá písmena za velká

`$ echo 'word' | tr '[:lower:]' '[:upper:]'`

přejmenuje přípony JPG na jpg

`$ rename 's/\.JPG$/\.jpg/' *.JPG`
