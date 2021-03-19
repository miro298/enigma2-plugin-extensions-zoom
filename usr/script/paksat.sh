#!/bin/sh

cd /tmp
FreeServer=/etc/CCcam.cfg
EmuServer='/etc/CCcam.cfg'
FreeServertmpa=/tmp/freeservra*
FreeServertmpb=/tmp/freeservrb*
FreeServertmpe=/tmp/freeservre*
HTTPSERV70="https://paksat.pk/testline.php"
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
curl  -k -Lbk -A -k -m 488 -m 552 -s  https://paksat.pk/testline.php > /tmp/freeservra70
sed -ne 's#.*Username" value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb71
sed -ne 's#.*Password" value="\([^"<]*\).*#\1#p' $FreeServertmpa70 > $FreeServertmpb72
PATCH_J_XM=$(cat /tmp/freeservrb71)
PATCH_J_XM2=$(cat /tmp/freeservrb72)
curl  -k -Lbk -A -k -m 488 -m 552 -s -d "user=${PATCH_J_XM}&pass=${PATCH_J_XM2}&formchoice=Generate Line" -X POST https://paksat.pk/getline.php > $FreeServertmpa71 
sed -ne 's#.*src="\([^"]*\)".*#\1#p' $FreeServertmpa71 > $FreeServertmpb73
sed 's#^#https://paksat.pk#' $FreeServertmpb73 > $FreeServertmpb74
PATCH_J_XM3=$(cat /tmp/freeservrb74)

[ -d /tmp/test3 ] || mkdir -p /tmp/test3
cp freeservra71 /tmp/test3
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
cat řádek1 | tr -d '\n' > hotovo
echo "" >> hotovo
cp hotovo /etc/CCcam.cfg
cp hotovo /tmp/readme.txt
more /tmp/readme.txt
rm /tmp/readme.txt
rm -rf /tmp/test3
rm -f $FreeServertmpa > /dev/null 2>&1
rm -f $FreeServertmpb > /dev/null 2>&1
rm -f $FreeServertmpa* $FreeServertmpb*
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
