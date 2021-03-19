#!/bin/sh
echo "stahuji z : urliptv.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PACTH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  -k -Lbk -A -k -m 8 -m 52 -s -d 'Username='$PATH_J_XM1'&forkmid='$PATH_J_XM2'&cline=Download Now !' -X POST https://urliptv.com/CCcam/#Generator.php > /tmp/test/CCcam


chmod 644 /tmp/test/CCcam

cd /tmp/test

grep -o -i 'C:[^<]*' CCcam  > /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam  > /tmp/readme.txt

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