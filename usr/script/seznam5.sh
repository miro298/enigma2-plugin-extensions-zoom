#!/bin/sh
echo "stahuji z : pktelcos.com"
sleep 1
echo "ukládám server..."
sleep 1
echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  https://www.pktelcos.com/dish-tv-free-cccam-test-cline-nss6-daily-updated/ > /tmp/test/CCcam
chmod 644 /tmp/test/CCcam

cd /tmp/test
sleep 1
echo -n "C: " > adresa
grep -o -i '<strong>[^<]*' CCcam  > CCcam1
grep -n -o -i 'IP=[^<]*' CCcam1|cut -d ' ' -f 2 >> adresa
grep -n -o -i 'Port:[^<]*' CCcam1|cut -d ' ' -f 2 >> adresa
sed -i '$!N;s/\n/ /' adresa
adresa1=`sed -n '1,1p' adresa`
adresa1=$adresa1
sed -i -n '/Password/,$p' CCcam1
sed -i -n '/Password/!p' CCcam1 
sed -i '$!N;s/\n/ /' CCcam1 
sed -i 's/<strong>//2' CCcam1 
sed -i "s/<strong>/$adresa1 /" CCcam1
cat CCcam1 > /etc/CCcam.cfg
cat CCcam1 > /tmp/readme.txt
sleep 1
cd
more /tmp/readme.txt
rm /tmp/readme.txt
rm -rf /tmp/test



echo ""
echo ""
echo ""
sleep 1
echo "stahování proběhlo úspěšně."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>"
sleep 1
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
