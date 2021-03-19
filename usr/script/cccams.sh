#!/bin/sh
echo "stahuji z :  cccams.tv"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test
curl -s -d 'user='$RANDOM'&pass=topservercccam&g-recaptcha-response=' '&submit=Click Here To Generator cccam & Oscam server Activate!' -X POST https://cccams.tv/cccam/index.php > /tmp/test/CCcam 
chmod 644 /tmp/test/CCcam

cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/CCcam1 
sed -n '1,1p' /tmp/test/CCcam1 > /tmp/test/CCcam2
cat /tmp/test/CCcam2  > /etc/CCcam.cfg
cat /tmp/test/CCcam2  > /tmp/readme.txt

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

