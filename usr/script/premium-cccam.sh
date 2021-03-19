
#!/bin/sh
echo "stahuji z : premium-cccam.com"

echo "ukládám server..."

echo "zobrazuji...."
echo ""
echo ""

URL="https://premium-cccam.com/Freecam.php";
# Files
TMP=`mktemp -d`
cd ${TMP}

# Github
#agent="--header='User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/8.0 Safari/600.1.17'"
#crt="--no-check-certificate"

#wget -q $crt $agent $URL/CCcam
curl -s -Lbk -m 4 -m 6 ${URL}/CCcam -o CCcam
grep "C:" CCcam  > CCcam1
cut -c 108-152 CCcam1  > /etc/CCcam.cfg 
cut -c 108-152 CCcam1  > /tmp/readme.txt

cd
more /tmp/readme.txt
rm /tmp/readme.txt
cd /tmp/
rm -r *



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