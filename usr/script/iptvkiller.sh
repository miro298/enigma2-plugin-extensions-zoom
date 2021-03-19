#!/bin/sh
echo "stahuji z : iptvkiller.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  https://iptvcccam.tv/cccamfree/get.php > /tmp/test/CCcam
chmod 644 /tmp/test/CCcam

cd /tmp/test

grep "C:" CCcam  > CCcam1.txt

cut -c 15-63 CCcam1.txt  > /etc/CCcam.cfg 
cut -c 15-63 CCcam1.txt  > /tmp/readme.txt

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

