#!/bin/bash
#awk 'BEGIN { ORS = " " } { print }' # column to line
#
#
alias ill='apt install '
apt-get update
apt-get upgrade
#STANDART
apt-get --assume-yes install vlc ntfs-3g ntfs udisks2 pmount audacity lynx blueman bluetooth pulseaudio-module-bluetooth gparted gnome-disks curl libappindicator3-1 deluge-gtk openvpn openssh-server samba net-tools htop python3 ffmpeg gcc make libqt5printsupport5 libqt5opengl5 krita lm-sensors sensors-applet tree wireshark git-all pv lshw p7zip-full conky
apt install -f
apt-get update
apt-get upgrade
#MANUAL
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rar='https://www.win-rar.com/fileadmin/winrar-versions/'
wget https://www.rarlab.com/download.htm
rar2=$(cat < download.htm | grep 'rarlinux-x64' | awk -F "/" '{print $3}' | tr -d '"' | tr -d '>')
wget $rar$rar2
tar -xzf $rar2 -C /usr/bin/
chmod -R 777 /usr/bin/rar
echo "alias un='/usr/bin/rar/unrar x'" >> /home/pumba/.bashrc
apt install -f
apt-get update
apt-get upgrade

mkdir /home/pumba/unrar && chmod 777 /home/pumba/unrar
mkdir /home/pumba/scripts && chmod 777 /home/pumba/scripts

#SAMBA
echo "##########Samba-install##########"
read -p "Press any key to continue..."
apt-get --assume-yes install samba
cp /home/pumba/Downloads/smb.conf /etc/samba/smb.conf
systemctl smbd enable
systemctl smbd restart
echo 'Done!'
apt install -f
apt-get update
apt-get upgrade
