#!/bin/sh
echo "stahuji z : cccam4all.net"
sleep 1
echo "ukládám server..."
sleep 1
echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  https://cccam4all.net/category/free-cccam/ > /tmp/test/CCcam
cd /tmp/test
echo "please wait"
echo "prosím čekejte"
grep -o -i 'https[^<]*' CCcam  > CCcam1
grep '2020/" ' CCcam1  > CCcam2
grep '2021/" ' CCcam1  >> CCcam2
grep "cccam" CCcam2  > CCcam3
cut -d '"' -f 1  CCcam3  > CCcam4
sort -u CCcam4  > CCcam5
adresa1=`sed -n '1,1p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S1
adresa1=`sed -n '2,2p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S2
adresa1=`sed -n '3,3p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S3
adresa1=`sed -n '4,4p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S4
adresa1=`sed -n '5,5p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S5
adresa1=`sed -n '6,6p' CCcam5`
adresa1=$adresa1
curl -k -A -k -s  $adresa1 > /tmp/test/S6
grep -o -i 'C:[^<]*' /tmp/test/S1 > /tmp/test/CCCAM
grep -o -i 'C:[^<]*' /tmp/test/S2 >> /tmp/test/CCCAM
grep -o -i 'C:[^<]*' /tmp/test/S3 >> /tmp/test/CCCAM
grep -o -i 'C:[^<]*' /tmp/test/S4 >> /tmp/test/CCCAM
grep -o -i 'C:[^<]*' /tmp/test/S5 >> /tmp/test/CCCAM
grep -o -i 'C:[^<]*' /tmp/test/S6 >> /tmp/test/CCCAM
sort -u /tmp/test/CCCAM > /tmp/test/CCCAM1
sleep 1
cat /tmp/test/CCCAM1  > /etc/CCcam.cfg 
cat /tmp/test/CCCAM1  > /tmp/readme.txt
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