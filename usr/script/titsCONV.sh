#!/bin/sh
echo "Stahování xxxBigTits.m3u"
echo "Downloading xxxBigTits.m3u"
echo "jdu předělávat pro E2...."
echo ""
echo ""

URL="https://www.eporner.com/cat/big-tits/";
# Files
TMP=`mktemp -d`
cd ${TMP}

# Github
#agent="--header='User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/8.0 Safari/600.1.17'"
#crt="--no-check-certificate"

#wget -q $crt $agent $URL/CCcam
curl -s -Lbk -m 4 -m 6 -k ${URL}/CCcam -o CCcam
awk '/1080/ {print}' CCcam > CCcamX
grep -o -i 'href="/hd-porn/[^"<]*' CCcamX > CCcam1
sort CCcam1 |uniq -d > CCcam2
sed 's/\([/]\+\)/!1080!3855325-1080p.mp4\n\#DESCRIPTION /g3' CCcam2 > CCcam3
sed 's/hd-porn/dload/g' CCcam3 > CCcam4
sed 's/href="/#SERVICE 4097:0:1128:0:0:0:0:0:0:0:https%3a!!www.eporner.com/g' CCcam4 > CCcam5
echo "#NAME xxxBigTits.m3u" > /etc/enigma2/userbouquet.xxxBigTits.m3u.tv
tr ! / < CCcam5 >> /etc/enigma2/userbouquet.xxxBigTits.m3u.tv

cd /
wget -q -O - http://root%s@127.0.0.1/web/servicelistreload?mode=0 >>/dev/null 2>&1 </dev/null &
sleep 2
cd /tmp
rm -r *
echo "OK"
exit




