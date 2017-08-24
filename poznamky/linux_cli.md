                   
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
<code>$ lsusb -tv</code>
</p>

<p>
vypnutí systému hned
</p>

<p>
<code># shutdown -h now</code>
</p>

<p>
restart systému hned
</p>

<p>
<code># shutdown -r now</code>
</p>

<p>
vypnutí systému v 16:30
</p>

<p>
<code># shutdown -h 16:30 &amp;amp;</code>
</p>

<p>
zrušení vypnutí
</p>

<p>
<code># shutdown -c</code>
</p>

<p>
přepnutí klávesnice v Xorg
</p>

<p>
<code>$ setxkbmap -model pc105 -layout en_US -variant basic</code>  (anglická)
</p>

<p>
<code>$ setxkbmap -model pc105 -layout cz_qwerty -variant basic</code> (česká)
</p>

<p>
zobrazí cestu k binárce ??
</p>

<p>
<code>$ whereis ??</code>
</p>

<p>
plná cesta k binárce ??
</p>

<p>
<code>$ which ??</code>
</p>

<p>
cesta k aktuálnímu adresáři
</p>

<p>
<code>$ pwd</code>
</p>

<p>
výpis adresáře do stromu
</p>

<p>
<code>$ tree</code>
</p>

<p>
smazání souboru
</p>

<p>
<code>$ rm -f</code>
</p>

<p>
smazání adresáře – rekurzivně =se všemi soubory v něm
</p>

<p>
<code>$ rm -rf</code>
</p>

<p>
přesunutí se do adresáře ??
</p>

<p>
<code>cd ??</code>
</p>

<p>
přesunutí se do adresáře uživatele
</p>

<p>
<code>cd</code>
</p>

<p>
vrátit se v adresářové struktuře o pozici níž
</p>

<p>
<code>$ cd ..</code>
</p>

<p>
vytvoření adresáře ??
</p>

<p>
<code>$ mkdir ??</code>
</p>

<p>
kopie souboru, nebo adresáře ??
</p>

<p>
<code>$ cp ??</code>
</p>

<p>
(od/ kam) 1) ( soubory = <code>$ cp soubor1 soubor2</code> ) 2) ( všechny soubory z adresáře <code>$ cp ??/* ??</code>
</p>

<p>
vytvoření souboru ??
</p>

<p>
<code>$ touch ??</code>
</p>

<p>
přejmenování, nebo přesun souboru nebo adresáře ??
</p>

<p>
<code>$ mv ??</code>
</p>

<p>
spustitelný soubor ??
</p>

<p>
</code>$ chmod +x  ??</code>
</p>

<p>
změna práv soub a adresáře 
</p>

<p>
<code>$ chmod 777</code>
</p>

<p>
výpis souborů adresáře
</p>

<p>
<code>$ ls -l</code>
</p>

<p>
výpis souborů ( i skryté) adresáře
</p>

<p>
<code>$ ls -a</code>
</p>

<p>
výpis souborů adresáře s čísly v názvu
</p>

<p>
<code>$ ls *[0-9]*</code>
</p>

<p>
výpis souborů adresáře s jejich právy
</p>

<p>
<code>$ ls -lh</code>
</p>

<p>
výpis souboru ??
</p>

<p>
<code>$ cat ??</code>
</p>

<p>
interaktivní náhled na soubor ??
</p>

<p>
<code>$ less ??</code> (ruší se q)
</p>

<p>
interaktivní náhled na soubor ?? – postupně
</p>

<p>
<code>$ more ??</code> (ruší se q)
</p>

<p>
kódování znaků výpis v systému
</p>

<p>
<code>$ iconv -l</code>
</p>

<p>
převod kodování souboru
</p>

<p>
<code>$ iconv -f z_Encoding -t do_Encoding vstupní_soubor &amp;gt; výstupní_soubor</code>
</p>

<p>
výpis připojených zařízení s velikostmi obsazení
</p>

<p>
<code>$ df -h</code>
</p>

<p>
vyhledání souborů s příponou??
</p>

<p>
<code>$ locate \*.??</code>
</p>

<p>
vyhledá soubory s příponou ‚.??‘ a upraví jim práva
</p>

<p>
<code>find / -name *.?? -exec chmod 755 &#039;{}&#039; \;</code>
</p>

<p>
vytvoření nového uživatele ??
</p>

<p>
<code>$ useradd ??</code>
</p>

<p>
smazání uživatele ??
</p>

<p>
<code>$ userdel -r ??</code>
</p>

<p>
změna hesla
</p>

<p>
<code>$ passwd</code>
</p>

<p>
změní vlastníka souboru
</p>

<p>
<code>$ chown uživatel soubor</code>
</p>

<p>
změní vlastníka adresáře a všeho co obsahuje  
</p>

<p>
<code>$ chown -R uživatel_adresář</code>
</p>

<p>
rozbalení tar archivu ??
</p>

<p>
<code>$  tar -xvf ??.tar</code>
</p>

<p>
rozbalí komprimovaný bz2 soubor včetně tar archivu
</p>

<p>
<code>$ tar -xvfj ??.tar.bz2</code>
</p>

<p>
rozbalí rar archiv ??
</p>

<p>
<code>$ unrar x ??.rar</code>
</p>

<p>
rozbalí zip archiv ??
</p>

<p>
<code>$ unzip ??.zip</code>
</p>

<p>
zobrazí obsah souboru počínaje první řádkou 
</p>

<p>
<code>$ cat ??1</code>
</p>

<p>
zobrazí první dva řádky souboru  
</p>

<p>
<code>$ head -2 ??1</code>
</p>

<p>
stejné jako předchozí, ale souborem je možno procházet i zpětně
</p>

<p>
<code>$ less ??1</code>
</p>

<p>
zobrazí soubor a mužní jeho procházení  
</p>

<p>
<code>$ more ??1</code>
</p>

<p>
zobrazí obsah souboru počínaje poslední řádkou  
</p>

<p>
<code>$ tac ??1</code>
</p>

<p>
zobrazí poslední 2 řádky souboru  
</p>

<p>
<code>$ tail -2 ??1</code>
</p>

<p>
zobrazuje v reálném čase řádky přidávané na konec souboru
</p>

<p>
<code>$ tail -f /var/log/messages</code>
</p>

<p>
odstraní ze souboru example.txt všechny sudé řádky
</p>

<p>
<code>$ cat example.txt | awk &#039;NR%2==1&#039;</code>
</p>

<p>
zobrazí první sloupec řádku
</p>

<p>
<code>$ echo a b c | awk &#039;{print $1}&#039;</code>
</p>

<p>
zobrazí první a třetí sloupec řádku  
</p>

<p>
<code>$ echo a b c | awk &#039;{print $1,$3}&#039;</code>
</p>

<p>
spočítá řádky souboru  
</p>

<p>
<code>$ cat -n ??1</code>
</p>

<p>
porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??1′
</p>

<p>
<code>$ comm -1 ??1 ??2</code>
</p>

<p>
porovná obsah dvou souborů smazáním pouze neduplicitních řádek z ‚??2′  
</p>

<p>
<code>$ comm -2 ??1 ??2</code>
</p>

<p>
porovná obsah dvou souborů smazáním pouze řádek objevivších se v obou souborech  
</p>

<p>
<code>$ comm -3 ??1 ??2</code>
</p>

<p>
najde rozdíly mezi soubory  
</p>

<p>
<code>$ diff ??1 ??2</code>
</p>

<p>
Vyhledá slovo
</p>

<p>
<code>$ grep Aug /var/log/messages</code>
</p>

<p>
Vyhledá slova začínající
</p>

<p>
<code>$ grep ^Aug /var/log/messages</code>
</p>

<p>
vybere ze souboru ‚/var/log/messages‘ všechny řádky obsahující čísla 
</p>

<p>
<code>$ grep [0-9] /var/log/messages</code>
</p>

<p>
vyhledá řetězec
</p>

<p>
<code>$ grep Aug -R /var/log/*</code>
</p>

<p>
spojí obsahy dvou souborů zarovnané do sloupců
</p>

<p>
<code>$ paste ??1 ??2</code>
</p>

<p>
spojí obsahy dvou souborů zarovnané do sloupců s ‚+‘ jako oddělovačem uprostřed
</p>

<p>
<code>$ paste -d &#039;+&#039; ??1 ??2</code>
</p>

<p>
najde rozdíly mezi soubory a zobrazí je, podobné jako diff   
</p>

<p>
<code>$ sdiff ??1 ??2</code>
</p>

<p>
nahradí string1 řetězcem  string2 v example.txt  
</p>

<p>
<code>$ sed &#039;s/string1/string2/g&#039; example.txt</code>
</p>

<p>
odstraní ze souboru example.txt všechny prázdné řádky  
</p>

<p>
<code>$ sed &#039;/^$/d&#039; example.txt</code>
</p>

<p>
odstraní komentáře a prázdné řádky ze souboru example.txt 
</p>

<p>
<code>$ sed &#039;/ *$/d; /^$/d&#039; example.txt</code>
</p>

<p>
smaže ze souboru example.txt první řádek
</p>

<p>
<code>$ sed -e &#039;1d&#039; exampe.txt</code>
</p>

<p>
zobrazí pouze řádky obsahující slovo string1
</p>

<p>
<code>$ sed -n &#039;/string1/p&#039;</code>
</p>

<p>
zobrazí prázdné znaky z konce každého řádku 
</p>

<p>
<code>$ sed -e &#039;s/ *$<em>&#039; example.txt</code>
</p>

<p>
smaže z textu pouze slovo string1 a zbytek nechá na pokoji  
</p>

<p>
<code>$ sed -e &#039;s/string1</em>g&#039; example.txt</code>
</p>

<p>
vypíše řádky 1 až 5 souboru example.txt 
</p>

<p>
<code>$ sed -n &#039;1,5p&#039; example.txt</code>
</p>

<p>
vypíše řádek 5 souboru example.txt 
</p>

<p>
<code>$ sed -n &#039;5p;5q&#039; example.txt</code>
</p>

<p>
nahradí více nul jedinou  
</p>

<p>
<code>$ sed -e &#039;s/00*/0/g&#039; example.txt</code>
</p>

<p>
seřadí obsah dvou souborů  
</p>

<p>
<code>$ sort ??1 ??2</code>
</p>

<p>
seřadí obsah dvou souborů a ignoruje duplikující řádky
</p>

<p>
<code>$</code> sort ??1 ??2 | uniq</code>
</p>

<p>
seřadí obsah dvou souborů a zobrazí pouze neduplicitní řádky
</p>

<p>
<code>$ sort ??1 ??2 | uniq -u</code>
</p>

<p>
seřadí obsah dvou souborů a zobrazí pouze duplicitní řádky
</p>

<p>
<code>$ sort ??1 ??2 | uniq -d</code>
</p>

<p>
prohodí malá písmena za velká 
</p>

<p>
<code>$ echo &#039;word&#039; | tr &#039;[:lower:]&#039; &#039;[:upper:]&#039;</code>
</p>

<p>
přejmenuje přípony JPG na jpg 
</p>

<p>
<code>$ rename &#039;s/\.JPG$/\.jpg/&#039; *.JPG</code>
</p>
