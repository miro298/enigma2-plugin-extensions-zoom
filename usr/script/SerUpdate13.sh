#!/bin/sh
echo "stahuji z : cccamtiger.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  https://cccamtiger.com/fcccam/ > /tmp/test/CCcam
chmod 644 /tmp/test/CCcam

cd /tmp/test

grep "C :" CCcam  > CCcam2.txt
sed 's/\([C]\+\)/\n\1/g' CCcam2.txt > CCcam
grep "C :" CCcam  > CCcam1.txt
cut -d '<' -f 1  CCcam1.txt > CCcam2.txt
cut -c 2-47 CCcam2.txt  > CCcam3.txt 
sed -e "s/ /C/" CCcam3.txt > /etc/CCcam.cfg
sed -e "s/ /C/" CCcam3.txt > /tmp/readme.txt

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


