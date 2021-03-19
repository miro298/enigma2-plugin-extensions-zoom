
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
HTTPSERV70="https://ajktv.net/cccamget.php"
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
curl -k -A -k -s  https://ajktv.net/cccamget.php > /tmp/freeservra70

#$WGET -O $FreeServertmpa71 $HTTPSERV71 > /dev/null 2>&1

sed -ne 's#.*name="user11"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb71
sed -ne 's#.*name="pass11"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb72
sed -ne 's#.*name="enddate"value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb73
PATCH_J_XM=$(cat /tmp/freeservrb71)
PATCH_J_XM2=$(cat /tmp/freeservrb72)                  
PATCH_J_XM3=$(cat /tmp/freeservrb73) 
curl -s -d "user11=${PATCH_J_XM}&pass11=${PATCH_J_XM2}&enddate=${PATCH_J_XM3}&submit=GenerateCline" -X POST https://ajktv.net/cccamget.php > $FreeServertmpa71  
grep "C:" freeservra71  > CCcam1.txt
sed 's/\([C:]\+\)/\n\1/g' CCcam1.txt > freeservra80
grep "C:" freeservra80  > CCcam1.txt
cut -d/ -f 1 CCcam1.txt > freeservra80
tr -d '[<]' < "freeservra80" > /etc/CCcam.cfg
tr -d '[<]' < "freeservra80" > /tmp/readme.txt
more /tmp/readme.txt
rm /tmp/readme.txt
rm -f freeservra80
rm -f CCcam1.txt
rm -f freeservra70
rm -f freeservra71
rm -f freeservrb71
rm -f freeservrb72
rm -f freeservrb73
rm -f CCcam1.txt
####################################################################################################
/usr/script/conv.sh
####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
/usr/script/restart.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
exit