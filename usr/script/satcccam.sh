#!/bin/sh
echo "stahuji z : satcccam.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  http://www.satcccam.com/freecccam48h.php > /tmp/test/CCcam
chmod 644 /tmp/test/CCcam

cd /tmp/test

grep -o -i 'device=[^<]*' CCcam  > /tmp/test/CCcam1
grep -o -i 'user =[^<]*' CCcam  > /tmp/test/CCcam2
grep -o -i 'password =[^<]*' CCcam  > /tmp/test/CCcam3
sed -i "s/device= //" CCcam1
cut CCcam1 -d ',' -f 1 > /tmp/test/CCcam1.txt
cut CCcam1 -d ',' -f 2 > /tmp/test/CCcam2.txt
cut CCcam2 -d ' ' -f 3 > /tmp/test/CCcam3.txt
cut CCcam3 -d ' ' -f 3 > /tmp/test/CCcam4.txt
echo "C:%" > hotovo
more CCcam1.txt >> hotovo
echo "%" >> hotovo
more CCcam2.txt >> hotovo
echo "%" >> hotovo
more CCcam3.txt >> hotovo
echo "%" >> hotovo
more CCcam4.txt >> hotovo
cat hotovo | tr -d '\n' > hotovo1
sed -i "s/%/ /g" hotovo1 
echo "" >> hotovo1
cp hotovo1 /etc/CCcam.cfg
cp hotovo1 /tmp/readme.txt

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

