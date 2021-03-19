#!/bin/sh
echo "stahuji z :  cccam.net"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test
curl -k -A -k -s  https://cccam.net/free > /tmp/test/CCcam 
chmod 644 /tmp/test/CCcam

cd /tmp/test
grep -o -i '<td>[^<]*' CCcam > CCcam1
sed -n 'H; $x; $s/\n//gp' CCcam1 > CCcam2
sed -i 's/<td>/C: /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
sed -i 's/<td>/ /1' CCcam2
cut -d '<' -f 1  CCcam2 > CCcam3


grep -o -i 'C:[^<]*' CCcam3  > /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam3  > /tmp/readme.txt

cd
more /tmp/readme.txt
rm /tmp/readme.txt
rm -rf /tmp/test



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

