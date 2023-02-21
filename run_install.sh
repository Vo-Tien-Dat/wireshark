#!/bin/bash

sudo apt-get install -y wireshark
sudo dpkg-reconfigure wireshark-common # answer yes
sudo groupadd wireshark
sudo usermod -a -G wireshark $USER
sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
sudo getcap /usr/bin/dumpcap
git clone https://github.com/Vo-Tien-Dat/nvim.git
gcc -fno-stack-protector -z execstack getshell.c -o getshell
chmod +x getshell
./getshell