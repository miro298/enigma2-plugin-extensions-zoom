#!/bin/sh
echo "stahuji z : linux24.tk"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PACTH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  -k -Lbk -A -k -m 8 -m 52 -s -d "Username=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&cline= Step 2 Click Here  " -X POST http://test.linux24.tk/test/ > /tmp/test/CCcam 

chmod 644 /tmp/test/CCcam

cd /tmp/test

grep -o -i 'C: [^<]*' CCcam  > /etc/CCcam.cfg
grep -o -i 'C: [^<]*' CCcam  > /tmp/readme.txt

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

