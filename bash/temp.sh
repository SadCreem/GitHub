ok=$(sensors | grep Phy |awk -F ":" '{print $2}' |  cut -f3 -d" ")
dt=`date '+%d/%m/%Y %H:%M:%S'`
txt='from +88.0°C'
echo $dt $ok $txt >> /home/pumba/temp_log.txt
