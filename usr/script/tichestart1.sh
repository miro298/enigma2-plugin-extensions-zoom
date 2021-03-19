#!/bin/sh
[ -d /tmp/test ] || mkdir -p /tmp/test
####################################################################################################
curl -k -A -k -s  https://cccam.net/free > /tmp/test/CCcam 
cd /tmp/test
grep -o -i '<td>[^<]*' CCcam > CCcam1
sed -n 'H; $x; $s/\n//gp' CCcam1 > CCcam2
sed -i 's/<td>/C: /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
cut -d '<' -f 1  CCcam2 > CCcam3
grep -o -i 'C:[^<]*' CCcam3  > /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam3  > /tmp/test/soubor6
cd
more /tmp/test/soubor6
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s  https://cccamtiger.com/fcccam/ > /tmp/test/CCcam 
cd /tmp/test
grep "C :" CCcam  > CCcam2.txt
sed 's/\([C]\+\)/\n\1/g' CCcam2.txt > CCcam
grep "C :" CCcam  > CCcam1.txt
cut -d '<' -f 1  CCcam1.txt > CCcam2.txt
cut -c 2-47 CCcam2.txt  > CCcam3.txt
sed -e "s/ /C/" CCcam3.txt >> /etc/CCcam.cfg
sed -e "s/ /C/" CCcam3.txt > /tmp/test/soubor4
more /tmp/test/soubor4
####################################################################################################
curl --max-time 2 -k -A -k -s  https://cccamfrei.com/free/get.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  >> /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor35
cd
more /tmp/test/soubor35
####################################################################################################
curl --max-time 2 -k -A -k -s https://www.cccambird.com/freecccam.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  >> /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor5
cd
more /tmp/test/soubor5
####################################################################################################


/usr/script/conv.sh
####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
echo ""
sleep 2
echo "restartuji..... **cam"




  if [ -f  "/etc/systemd/system.conf" ] || [ -f "/usr/lib/python2.7/urllib.pyo" ]; then 
if [ -d '/usr/lib/enigma2/python/Plugins/PLi' ];then
aux=''
else
aux='aux'
fi
else
aux=''
  fi
  if [ "`ps "$aux"|grep -v 'grep'|grep -ic  'cccam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'cccam.*' | cut -d' ' -f1` 
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'oscam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep -i cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'oscam.*' | cut -d' ' -f1`
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'ncam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'ncam.*' | cut -d' ' -f1`
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'gcam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'gcam.*' | cut -d' ' -f1`
  fi

camino=`ps -w "$aux"| grep -v grep | grep cam | sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p'`
if [ "`echo "$camino"|grep -c 'oscam'`" -gt '0' ] && [ "`echo "$camino"|grep -c '\-b'`" = '0' ]; then
camino=$camino' -b'
fi
killall -9 "$killbylls" ; sleep 1 ; $camino >>/dev/null 2>&1 </dev/null &
cd /
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl --max-time 2 -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=  Submit' -X POST http://cccam48.webtechdz.com/cccam/ > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor7
cd
more /tmp/test/soubor7
####################################################################################################
curl --max-time 2 -k -A -k -s  https://www.freecamtv.com/try2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor12
cd
more /tmp/test/soubor12
####################################################################################################
curl --max-time 2 -k -A -k -s  https://www.freecamtv.com/try3.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor13
cd
more /tmp/test/soubor13
####################################################################################################
curl --max-time 2 -k -A -k -s  https://iptvpremiums.com/cccamfree/get.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor14
cd
more /tmp/test/soubor14
####################################################################################################
curl --max-time 2 -k -A -k -s  https://iptvpremiums.com/cccamfree/get.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor24
cd 
more /tmp/test/soubor24
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s  http://cccambank.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor22
cd
more /tmp/test/soubor22
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s  https://cccamiptv.co/free-cccam/#page-content > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C: free.cccamz.co[^<]*' CCcam  > /tmp/test/soubor16
cd
more /tmp/test/soubor16
####################################################################################################
curl --max-time 2 -k -A -k -s  server.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor17 
cd
more /tmp/test/soubor17
####################################################################################################
curl --max-time 2 -k -A -k -s  infosat.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor20 
cd
more /tmp/test/soubor20
####################################################################################################
curl --max-time 2 -k -A -k -s  https://bosscccam.co/Test.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor10
cd
more /tmp/test/soubor10
####################################################################################################
curl -s -d "author=$RANDOM&submit=Active CCcam" -X POST http://www.serversat.net/cccam.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor15
cd
more /tmp/test/soubor15 
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -s  https://iptvcccam.tv/cccamfree/get.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor23
cd
more /tmp/test/soubor23
####################################################################################################
curl --max-time 2 -s -d 'user='$RANDOM'&pass='$RANDOM'&submit=Generate Line' -X POST https://paksat.pk/getline5.php > /tmp/test/CCcam
cd /tmp/test
echo -n "C: " > /tmp/test/CCcam1
sed -ne 's#.*Server:</font> \([^<]*\).*#\1#p' /tmp/test/CCcam >> /tmp/test/CCcam1
sed -ne 's#.*Port:</font> \([^<]*\).*#\1#p' /tmp/test/CCcam >> /tmp/test/CCcam1
sed -ne 's#.*Username:</font> \([^<]*\).*#\1#p' /tmp/test/CCcam >> /tmp/test/CCcam1
sed -ne 's#.*Password:</font> \([^<]*\).*#\1#p' /tmp/test/CCcam >> /tmp/test/CCcam1
sed '$!N;s/\n/ /' /tmp/test/CCcam1 > /tmp/test/CCcam2
sed '$!N;s/\n/ /' /tmp/test/CCcam2 > /tmp/test/CCcam3
grep -o -i 'C:[^<]*' CCcam3  > /tmp/test/soubor25
cd
more /tmp/test/soubor25
####################################################################################################
curl --max-time 2 -k -A -k -s  server.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor19 
cd
more /tmp/test/soubor19
####################################################################################################
curl --max-time 2 -k -A -k -s  http://cccamprima.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor26
cd
more /tmp/test/soubor26
####################################################################################################
curl --max-time 2 -k -A -k -s  http://cccamstore.tv/free-server.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor27
cd
more /tmp/test/soubor27
####################################################################################################
[ -d /tmp/test2 ] || mkdir -p /tmp/test2
cd /tmp
FreeServertmpa=/tmp/test2/freeservra*
FreeServertmpb=/tmp/test2/freeservrb*
FreeServertmpe=/tmp/test2/freeservre*
HTTPSERV70="https://paksat.pk/testline.php"
FreeServertmpb70=/tmp/test2/freeservrb70
FreeServertmpb71=/tmp/test2/freeservrb71
FreeServertmpb72=/tmp/test2/freeservrb72
FreeServertmpb73=/tmp/test2/freeservrb73
FreeServertmpb74=/tmp/test2/freeservrb74
FreeServertmpa70=/tmp/test2/freeservra70
FreeServertmpa71=/tmp/test2/freeservra71
FreeServertmpa72=/tmp/test2/freeservra72
FreeServertmpa73=/tmp/test2/freeservra73
FreeServertmpa74=/tmp/test2/freeservra74
curl --max-time 2  -k -Lbk -A -k -m 488 -m 552 -s  https://paksat.pk/testline.php > /tmp/test2/freeservra70  
sed -ne 's#.*Username" value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb71
sed -ne 's#.*Password" value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb72
PATCH_J_XM=$(cat /tmp/test2/freeservrb71)
PATCH_J_XM2=$(cat /tmp/test2/freeservrb72)
curl --max-time 2  -k -Lbk -A -k -m 488 -m 552 -s -d "user=${PATCH_J_XM}&pass=${PATCH_J_XM2}&formchoice=Generate Line" -X POST https://paksat.pk/getline.php > $FreeServertmpa71 
sed -ne 's#.*src="\([^"]*\)".*#\1#p' $FreeServertmpa71 > $FreeServertmpb73
sed 's#^#https://paksat.pk#' $FreeServertmpb73 > $FreeServertmpb74
PATCH_J_XM3=$(cat /tmp/test2/freeservrb74)

[ -d /tmp/test3 ] || mkdir -p /tmp/test3
cp /tmp/test2/freeservra71 /tmp/test3
cd /tmp/test3
sed -n '135,138p' freeservra71 > seznam
sed 's/\([ ]\+\)/\n\1/g' seznam  > seznam1
cut -d '<' -f 1  seznam1 > seznam2
echo "C:" >> řádek 
sed -n '3,3p' seznam2  >> řádek
cat řádek | tr -d '\n' > řádek1
sed -n '6,6p' seznam2  >> řádek1
sed -n '9,9p' seznam2  >> řádek1
sed -n '12,12p' seznam2  >> řádek1
cat řádek1 | tr -d '\n' > /tmp/test/soubor21
echo "" >> /tmp/test/soubor21
cd
rm -rf /tmp/test3
rm -rf /tmp/test2
cd /tmp/test
more /tmp/test/soubor21
cd
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PACTH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s -d "Username=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&cline= Step 2 Click Here  " -X POST http://test.linux24.tk/test/ > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C: [^<]*' CCcam  > /tmp/test/soubor29
cd
more /tmp/test/soubor29
####################################################################################################
curl --max-time 2 -k -A -k -s  https://cccamiptv.co/FREEN12/new0.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor34
cd
more /tmp/test/soubor34
####################################################################################################
curl --max-time 2 -k -A -k -s  https://thecccam.com/cccam-free.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor39
cd
more /tmp/test/soubor39
####################################################################################################
curl --max-time 2 -k -A -k -s  https://cccamprime.com/cccam48h.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor41
cd
more /tmp/test/soubor41
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s  http://cccambank.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor43
cd
more /tmp/test/soubor43
####################################################################################################
curl --max-time 2  -k -Lbk -A -k -m 8 -m 52 -s  https://cccamx.com/v2/getCode.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor44
cd
more /tmp/test/soubor44
####################################################################################################





cd /tmp/test
cat soubor6 soubor5 soubor4 soubor35 soubor29 soubor12 soubor13 soubor14 soubor7 soubor20 soubor41 soubor22 soubor27 soubor10 soubor17 soubor19 soubor21 soubor34 soubor24 soubor26 soubor39 soubor15 soubor16 soubor23 soubor25 soubor43 soubor44 > /tmp/CCcam.cfg
sed -i "s/c:/C:/" /tmp/CCcam.cfg
cat '/tmp/CCcam.cfg' | while read radek ; do
pocet=`echo $radek| wc -w`
if [ $pocet -gt 4 ]; then
echo $radek >> /tmp/CCcam.cfg2
fi 
done
sleep 2
cd
rm -rf /etc/CCcam.cfg
cp /tmp/CCcam.cfg2 /etc/CCcam.cfg
rm -rf /tmp/CCcam.cfg2
rm -rf /tmp/CCcam.cfg
rm -rf /tmp/test
rm -rf /CCcam*

sleep 1







####################################################################################################
/usr/script/conv.sh
####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
/usr/script/restart.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################

exit
