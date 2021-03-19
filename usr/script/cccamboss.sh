#!/bin/sh
echo "stahuji z : CCCAMBOSS"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""



if [ -f /var/lib/dpkg/status ]; then
      WGET='/usr/bin/wget2 --no-check-certificate'
else
      WGET='/usr/bin/wget'
fi
#### End Edit

cd /tmp
FreeServer=/etc/CCcam.cfg
EmuServer='/etc/CCcam.cfg'
FreeServertmpa=/tmp/freeservra*
FreeServertmpb=/tmp/freeservrb*
FreeServertmpe=/tmp/freeservre*
HTTPSERV70="https://cccamboss.com/freetest/"
FreeServertmpb70=/tmp/freeservrb70
FreeServertmpb71=/tmp/freeservrb71
FreeServertmpb72=/tmp/freeservrb72
FreeServertmpb73=/tmp/freeservrb73
FreeServertmpb74=/tmp/freeservrb74
FreeServertmpa70=/tmp/freeservra70
FreeServertmpa71=/tmp/freeservra71
FreeServertmpa72=/tmp/freeservra72
FreeServertmpa73=/tmp/freeservra73
FreeServertmpa74=/tmp/freeservra74
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://cccamboss.com/freetest/ > /tmp/freeservra70

#$WGET -O $FreeServertmpa71 $HTTPSERV71 > /dev/null 2>&1

sed -ne 's#.*name="user11"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb71
sed -ne 's#.*name="pass11"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb72
sed -ne 's#.*name="enddate"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb73
PATCH_J_XM=$(cat /tmp/freeservrb71)
PATCH_J_XM2=$(cat /tmp/freeservrb72)                  
PATCH_J_XM3=$(cat /tmp/freeservrb73) 
curl -s -d "user11=${PATCH_J_XM}&pass11=${PATCH_J_XM2}&enddate=${PATCH_J_XM3}&submit=GenerateCline" -X POST https://cccamboss.com/freetest/ > $FreeServertmpa71  
echo "C: cccamboss.com 16000 " > freeservra80
more freeservrb71 >> freeservra80
cat freeservra80 | tr -d '\n' > freeservra70
echo "%" >> freeservra70
more freeservrb72 >> freeservra70
cat freeservra70 | tr -d '\n' > freeservra71
sed -e "s/%/ /" freeservra71 > /etc/CCcam.cfg
echo "" >> /etc/CCcam.cfg
sed -e "s/%/ /" freeservra71 > /tmp/readme.txt
more /tmp/readme.txt
rm /tmp/readme.txt
rm -rf /tmp/test
rm -f freeservra80
rm -f CCcam1.txt
rm -f freeservra70
rm -f freeservra71
rm -f freeservrb71
rm -f freeservrb72
rm -f freeservrb73
rm -f CCcam1.txt
echo ""
echo ""
echo ""

echo "stahování proběhlo úspěšně."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>"

date
echo ""
####################################################################################################
/usr/script/conv.sh
####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
/usr/script/restart.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
exit