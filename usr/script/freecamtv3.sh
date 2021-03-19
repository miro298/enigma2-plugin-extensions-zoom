#!/bin/sh
echo "stahuji z : freecamtv3.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  https://www.freecamtv.com/try3.php > /tmp/test/CCcam
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

