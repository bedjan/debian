Základní systemd utility:
systemctl                                                               # správa systému a služeb
journalctl                                                              # správa systemd journalu (logu)
loginctl                                                                # správa systemd logind
hostnamectl                                                             # vypsání a změna hostname
localectl                                                               # vypsání a změna locale a klávesnice
timedatectl                                                             # vypsání a změna času a data
busctl                                                                  # práce s D-Bus busem

Základní typy unit:
<unita>.service                                                         # služba
<unita>.socket                                                          # síťový/IPC socket nebo FIFO buffer, používaný pro socket aktivaci
<unita>.device                                                          # hardware či jiné zařízení
<unita>.mount                                                           # mountpoint
<unita>.automount                                                       # mountpoint, který je mountován automaticky
<unita>.swap                                                            # swap
<unita>.target                                                          # skupina unit, podobná SysV runlevelům
<unita>.path                                                            # cesta pro path-based aktivaci pomocí inotify
<unita>.timer                                                           # časovač pro pozdější aktivaci služby (podobný cron jobu)
<unita>.slice                                                           # unita asociovaná s CGroup nody, umožňuje omezení/přidělení prostředků
<unita>.scope                                                           # automaticky vytvořená unita, obsahující informace z bus rozhraní

Start/Stop/Restart služby:
systemctl start <unita>.service                                         # spustí službu
systemctl stop <unita>.service                                          # zastaví službu
systemctl restart <unita>.service                                       # restartuje službu
systemctl try-restart <unita>.service                                   # restartuje službu pouze pokud již běží (tj. nespustí zastavenou službu)
systemctl reload <unita>.service                                        # znovunačte konfiguraci služby
systemctl kill -s SIGKILL <unita>.service                               # pošle SIGKILL všem procesům konkrétní služby

Informace o službě:
systemctl status <unita>.service                                        # vypíše základní informace o službě
systemctl status <unita>.service -l                                     # vypíše základní informace o službě, včetně kompletního logu
systemctl list-dependencies <unita>.service                             # vypíše strom závislostí pro konkrétní službu
systemctl show <unita>.service                                          # vypíše parametry konkrétní služby (lze je měnit pomocí systemctl set-property)

Zakázání startu služby:
systemctl disable <unita>.service                                       # zakáže spuštění služby při bootu i její socket/bus/jinou aktivaci
systemctl enable <unita>.service                                        # opět povolí službu
systemctl mask <unita>.service                                          # rovněž zakáže službu, navíc však zakáže i její ruční spuštění přes systemctl start
systemctl unmask <unita>.service                                        # opět povolí službu

Editace unit souboru služby:
cp /lib/systemd/system/<unita>.service /etc/systemd/system/
editor /etc/systemd/system/<unita>.service                              # upravíme, co potřebujeme
systemctl daemon-reload && systemctl restart <unita>.service

Přepínání targetů:
systemctl isolate multi-user.target                                     # změní target na multi-user.target (ekvivalent runlevelu 3)
systemctl isolate graphical.target                                      # změní target na graphical.target (ekvivalent runlevelu 5)
systemctl get-default                                                   # vypíše defaultní target
systemctl set-default multi-user.target                                 # nastaví defaultní target na multi-user.target

Práce s logy:
echo "Storage=persistent" >> /etc/systemd/journald.conf                 # povolí ukládání logů na disk, pokud není defaultně povoleno
journalctl                                                              # vypíše kompletní log
journalctl -n 20                                                        # vypíše posledních 20 položek logu (ekvivalent tail -n)
journalctl -f                                                           # aktivně vypisuje nové položky logu (ekvivalent tail -f)
journalctl --since <datum, čas> --until <datum, čas>                    # vypíše log pouze od/do určitého data a/nebo času
journalctl -p <emerg, alert, crit, err, warning, notice, info, debug>   # vypíše pouze záznamy s konkrétní prioritou
journalctl -u <unita>.service                                           # vypíše log pouze pro určitou službu
journalctl -u <unita1>.service -u <unita2>.service                      # vypíše log pro více konkrétních služeb
journalctl --no-pager                                                   # vypíše obsah klasicky na stdout (hodí se, pokud chceme data dále zpracovávat)
journalctl -o json                                                      # vypíše obsah v JSONu
journalctl --vacuum-time=<1months>                                      # vymaže logy starší, než 1 měsíc
journalctl --vacuum-size=<10G>                                          # vymaže archivované logy tak, aby jejich velikost nepřesáhla 10 GB
journalctl --vacuum-files=<10>                                          # vymaže archivované logy tak, aby jejich počet nepřesáhl 10
journalctl --verify                                                     # ověří integritu souborů logu

Vypnutí a restart systému:
systemctl poweroff                                                      # vypne systém
systemctl poweroff -i                                                   # vynutí vypnutí i pokud je blokováno zámkem
systemctl reboot                                                        # restartuje systém
systemctl reboot -i                                                     # vynutí restart i pokud je blokován zámkem

Informace o systému:
systemctl                                                               # vypíše všechny aktivní unity a jejich stav
systemctl --failed                                                      # vypíše všechny aktivní unity se stavem failed
systemctl list-sockets                                                  # vypíše všechny aktivní sockety
systemctl list-timers                                                   # vypíše všechny aktivní časovače
systemctl list-jobs                                                     # vypíše všechny běžící úlohy
systemctl list-unit-files                                               # vypíše všechny unity a jejich state
systemctl list-dependencies                                             # vypíše strom závislostí pro defaultní target
systemctl status                                                        # vypíše běžící služby, jejich procesy, zdraví systému atd.
systemctl show                                                          # vypíše parametry systemd
busctl                                                                  # vypíše připojení na D-Bus system bus
busctl tree                                                             # vypíše služby a jejich D-Bus objekty
systemd-cgtop                                                           # zobrazí CGroupy, seřazené podle využití prostředků
systemd-cgls                                                            # zobrazí obsah CGroup
systemd-inhibit                                                         # zobrazí aktivní zámky, blokující vypnutí systému
systemd-analyze                                                         # zobrazí, jak dlouho trval boot
systemd-analyze blame                                                   # zobrazí, které unity nejvíce zpomalily boot
