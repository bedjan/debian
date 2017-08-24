                   
<p>
<em class="u"><strong>Command line</strong></em>
</p>

<p>
zdroj <a href="http://www.linuxguide.it/command_line/linux_commands_cz.html" class="urlextern" target="_blank" title="http://www.linuxguide.it/command_line/linux_commands_cz.html"  rel="nofollow">http://www.linuxguide.it/command_line/linux_commands_cz.html</a>
</p>

<p>
zdroj 1-24 díl <a href="http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail" class="urlextern" target="_blank" title="http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail"  rel="nofollow">http://www.abclinuxu.cz/clanky/navody/unixove-nastroje-1-uvod-cat-head-tail</a>
</p>
<hr />

<p>
znaky na klávesnici
</p>

<p>
<code>@</code> =altgr+v,<code>|</code> = altgr+w, <code>~</code> =altgr+a,<code> $</code> = alt+č ,<code>$</code> = alt+X, <code>&amp;amp;</code> = alt+C, <code>~</code> = alt+A, <code>{}</code> = alt+BN,<code> []</code> = alt+ú a alt + ,  <code>\</code> = alt+Q
</p>

<p>
verze jádra
</p>

<p>
<code>$ uname -r</code>
</p>

<p>
výpis zařízení přes PCI
</p>

<p>
<code>$ lspci -tv</code>
</p>

<p>
výpis zařízení přes USB
</p>

<p>
$ lsusb -tv
</p>

<p>
vypnutí systému hned
</p>

<p>
# shutdown -h now
</p>

<p>
restart systému hned
</p>

<p>
# shutdown -r now
</p>

<p>
vypnutí systému v 16:30
</p>

<p>
# shutdown -h 16:30 &amp;amp;
</p>

<p>
zrušení vypnutí
</p>

<p>
# shutdown -c
</p>

<p>
přepnutí klávesnice v Xorg
</p>

<p>
$ setxkbmap -model pc105 -layout en_US -variant basic  (anglická)
</p>

<p>
$ setxkbmap -model pc105 -layout cz_qwerty -variant basic (česká)
</p>

<p>
zobrazí cestu k binárce ??
</p>

<p>
$ whereis ??
</p>

<p>
plná cesta k binárce ??
</p>

<p>
$ which ??
</p>

<p>
cesta k aktuálnímu adresáři
</p>

<p>
$ pwd
</p>

<p>
výpis adresáře do stromu
</p>

<p>
$ tree
</p>

<p>
smazání souboru
</p>

<p>
$ rm -f
</p>

<p>
smazání adresáře – rekurzivně =se všemi soubory v něm
</p>

<p>
$ rm -rf
</p>

<p>
přesunutí se do adresáře ??
</p>

<p>
cd ??
</p>

<p>
přesunutí se do adresáře uživatele
</p>

<p>
cd
</p>

<p>
vrátit se v adresářové struktuře o pozici níž
</p>

<p>
$ cd ..
</p>

<p>
vytvoření adresáře ??
</p>

<p>
$ mkdir ??
</p>

<p>
kopie souboru, nebo adresáře ??
</p>

<p>
$ cp ??
</p>

<p>
(od/ kam) 1) ( soubory = $ cp soubor1 soubor2 ) 2) ( všechny soubory z adresáře $ cp ??/* ??
</p>

<p>
vytvoření souboru ??
</p>

<p>
$ touch ??
</p>

<p>
přejmenování, nebo přesun souboru nebo adresáře ??
</p>

<p>
$ mv ??
</p>

<p>
spustitelný soubor ??
</p>

<p>
$ chmod +x  ??
</p>

<p>
změna práv soub a adresáře 
</p>

<p>
$ chmod 777
</p>

<p>
výpis souborů adresáře
</p>

<p>
$ ls -l
</p>

<p>
výpis souborů ( i skryté) adresáře
</p>

<p>
$ ls -a
</p>

<p>
výpis souborů adresáře s čísly v názvu
</p>

<p>
$ ls *[0-9]*
</p>

<p>
výpis souborů adresáře s jejich právy
</p>

<p>
$ ls -lh
</p>

<p>
výpis souboru ??
</p>

<p>
$ cat ??
</p>

<p>
interaktivní náhled na soubor ??
</p>

<p>
$ less ?? (ruší se q)
</p>

<p>
interaktivní náhled na soubor ?? – postupně
</p>

<p>
$ more ?? (ruší se q)
</p>

<p>
kódování znaků výpis v systému
</p>

<p>
$ iconv -l
</p>

<p>
převod kodování souboru
</p>

<p>
$ iconv -f z_Encoding -t do_Encoding vstupní_soubor &amp;gt; výstupní_soubor
</p>

<p>
výpis připojených zařízení s velikostmi obsazení
</p>

<p>
$ df -h
</p>

<p>
vyhledání souborů s příponou??
</p>

<p>
$ locate \*.??
</p>

<p>
vyhledá soubory s příponou ‚.??‘ a upraví jim práva
</p>

<p>
find / -name *.?? -exec chmod 755 &#039;{}&#039; \;
</p>

<p>
vytvoření nového uživatele ??
</p>

<p>
$ useradd ??
</p>

<p>
smazání uživatele ??
</p>

<p>
$ userdel -r ??
</p>

<p>
změna hesla
</p>

<p>
$ passwd
</p>

<p>
změní vlastníka souboru  
</p>

<p>
$ chown uživatel soubor
</p>

<p>
změní vlastníka adresáře a všeho co obsahuje  
</p>

<p>
$ chown -R uživatel adresář
</p>

<p>
rozbalení tar archivu ??
</p>

<p>
$  tar -xvf ??.tar
</p>

<p>
rozbalí komprimovaný bz2 soubor včetně tar archivu
</p>

<p>
$ tar -xvfj ??.tar.bz2
</p>

<p>
rozbalí rar archiv ??
</p>

<p>
$ unrar x ??.rar
</p>

<p>
rozbalí zip archiv ??
</p>

<p>
$ unzip ??.zip
</p>

<p>
zobrazí obsah souboru počínaje první řádkou 
</p>

<p>
$ cat ??1
</p>

<p>
zobrazí první dva řádky souboru  
</p>

<p>
$ head -2 ??1
</p>

<p>
stejné jako předchozí, ale souborem je možno procházet i zpětně
</p>

<p>
$ less ??1
</p>

<p>
zobrazí soubor a mužní jeho procházení  
</p>

<p>
$ more ??1
</p>

<p>
zobrazí obsah souboru počínaje poslední řádkou  
</p>

<p>
$ tac ??1
</p>

<p>
zobrazí poslední 2 řádky souboru  
</p>

<p>
$ tail -2 ??1
</p>

<p>
zobrazuje v reálném čase řádky přidávané na konec souboru
</p>

<p>
$ tail -f /var/log/messages
</p>

<p>
odstraní ze souboru example.txt všechny sudé řádky
</p>

<p>
$ cat example.txt | awk &#039;NR%2==1&#039;
</p>

<p>
zobrazí první sloupec řádku
</p>

<p>
$ echo a b c | awk &#039;{print $1}&#039;
</p>

<p>
zobrazí první a třetí sloupec řádku  
</p>

<p>
$ echo a b c | awk &#039;{print $1,$3}&#039;
</p>

<p>
spočítá řádky souboru  
</p>

<p>
$ cat -n ??1
</p>

<p>
porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??1′
</p>

<p>
$ comm -1 ??1 ??2
</p>

<p>
porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??2′  
</p>

<p>
$ comm -2 ??1 ??2
</p>

<p>
porovná obsah dvou souborů smazáním pouze řádek objevivších se v obou souborech  
</p>

<p>
$ comm -3 ??1 ??2
</p>

<p>
najde rozdíly mezi soubory  
</p>

<p>
$ diff ??1 ??2
</p>

<p>
Vyhledá slovo
</p>

<p>
$ grep Aug /var/log/messages
</p>

<p>
Vyhledá slova začínající
</p>

<p>
$ grep ^Aug /var/log/messages
</p>

<p>
vybere ze souboru ‚/var/log/messages‘ všechny řádky obsahující čísla 
</p>

<p>
$ grep [0-9] /var/log/messages
</p>

<p>
vyhledá řetězec
</p>

<p>
$ grep Aug -R /var/log/*
</p>

<p>
spojí obsahy dvou souborů zarovnané do sloupců
</p>

<p>
$ paste ??1 ??2
</p>

<p>
spojí obsahy dvou souborů zarovnané do sloupců s ‚+‘ jako oddělovačem uprostřed
</p>

<p>
$ paste -d &#039;+&#039; ??1 ??2
</p>

<p>
najde rozdíly mezi soubory a zobrazí je, podobné jako diff   
</p>

<p>
$ sdiff ??1 ??2
</p>

<p>
nahradí string1 řetězcem  string2 v example.txt  
</p>

<p>
$ sed &#039;s/string1/string2/g&#039; example.txt
</p>

<p>
odstraní ze souboru example.txt všechny prázdné řádky  
</p>

<p>
$ sed &#039;/^$/d&#039; example.txt
</p>

<p>
odstraní komentáře a prázdné řádky ze souboru example.txt 
</p>

<p>
$ sed &#039;/ *$/d; /^$/d&#039; example.txt
</p>

<p>
smaže ze souboru example.txt první řádek
</p>

<p>
$ sed -e &#039;1d&#039; exampe.txt
</p>

<p>
zobrazí pouze řádky obsahující slovo string1
</p>

<p>
$ sed -n &#039;/string1/p&#039;
</p>

<p>
zobrazí prázdné znaky z konce každého řádku 
</p>

<p>
$ sed -e &#039;s/ *$<em>&#039; example.txt

smaže z textu pouze slovo string1 a zbytek nechá na pokoji  

$ sed -e &#039;s/string1</em>g&#039; example.txt
</p>

<p>
vypíše řádky 1 až 5 souboru example.txt 
</p>

<p>
$ sed -n &#039;1,5p&#039; example.txt
</p>

<p>
vypíše řádek 5 souboru example.txt 
</p>

<p>
$ sed -n &#039;5p;5q&#039; example.txt
</p>

<p>
nahradí více nul jedinou  
</p>

<p>
$ sed -e &#039;s/00*/0/g&#039; example.txt
</p>

<p>
seřadí obsah dvou souborů  
</p>

<p>
$ sort ??1 ??2
</p>

<p>
seřadí obsah dvou souborů a ignoruje duplikující řádky
</p>

<p>
$ sort ??1 ??2 | uniq
</p>

<p>
seřadí obsah dvou souborů a zobrazí pouze neduplicitní řádky
</p>

<p>
$ sort ??1 ??2 | uniq -u
</p>

<p>
seřadí obsah dvou souborů a zobrazí pouze duplicitní řádky
</p>

<p>
$ sort ??1 ??2 | uniq -d
</p>

<p>
prohodí malá písmena za velká 
</p>

<p>
$ echo &#039;word&#039; | tr &#039;[:lower:]&#039; &#039;[:upper:]&#039;
</p>

<p>
přejmenuje přípony JPG na jpg 
</p>

<p>
$ rename &#039;s/\.JPG$/\.jpg/&#039; *.JPG
</p>
