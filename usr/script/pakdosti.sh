#!/bin/sh
echo "stahuji z :  pakdosti.org"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test
PATH_J_XM=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM3=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl -s -d "Username=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&Password=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&expiredate=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&submit1=addf&addf=addf" -X POST http://pakdosti.org/test.php > /tmp/test/CCcam

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

