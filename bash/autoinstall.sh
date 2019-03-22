#!/bin/bash
alias ill='apt install '
apt-get update
apt-get upgrade
apt install vlc
apt install ntfs-3g
apt install ntfs
apt install udisks2 pmount
apt install audacity
apt install lynx
apt install blueman
apt install bluetooth
apt install pulseaudio-module-bluetooth
apt install gparted
apt install gnome-disks
apt install curl
apt install libappindicator3-1
apt install deluge-gtk
apt install openvpn
apt install openssh-server
apt install samba
apt install net-tools
apt install htop
apt install python3
apt install ffmpeg
apt install gcc make
apt install libqt5printsupport5 libqt5opengl5
apt install krita
apt install lm-sensors
apt install sensors-applet
apt install tree
apt install wireshark
apt install git-all
apt install pv
apt install lshw
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install p7zip-full
rar='https://www.win-rar.com/fileadmin/winrar-versions/'
wget https://www.rarlab.com/download.htm
rar2=$(cat < download.htm | grep 'rarlinux-x64' | awk -F "/" '{print $3}' | tr -d '"' | tr -d '>')
wget $rar$rar2
tar -xzf $rar2 -C /usr/bin/
chmod -R 777 /usr/bin/rar
echo "alias un='/usr/bin/rar/unrar x'" >> /home/pumba/.bashrc
apt install conky
apt install -f
apt-get update
apt-get upgrade
