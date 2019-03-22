rar='https://www.win-rar.com/fileadmin/winrar-versions/'
wget https://www.rarlab.com/download.htm
rar2=$(cat < download.htm | grep 'rarlinux-x64' | awk -F "/" '{print $3}' | tr -d '"' | tr -d '>')
wget $rar$rar2
tar -xzf $rar2 -C /usr/bin/
chmod -R 777 /usr/bin/rar
echo "alias un='/usr/bin/rar/unrar x'" >> /home/pumba/.bashrc
