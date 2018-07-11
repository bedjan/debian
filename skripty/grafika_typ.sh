#!/bin/bash  
# zjisti typ grafiky a nacteny modul
# priklad: 01:05.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] RS780L [Radeon 3000] [1002:9616]
# Subsystem: Hewlett-Packard Company RS780L [Radeon 3000] [103c:2aaf]
# Kernel driver in use: radeon
# Kernel modules: radeon


lspci -nnk | grep -A3 "\[03..\]:" 

