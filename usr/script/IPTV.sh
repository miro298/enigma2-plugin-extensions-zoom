#!/bin/sh
echo "stahuji (m3u) IPTV"
echo ""
echo ""
[ -d /IPTV ] || mkdir -p /IPTV
rm -rf /IPTV
[ -d /IPTV ] || mkdir -p /IPTV
[ -d /tmp/test ] || mkdir -p /tmp/test
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://cccam4all.net/category/iptv/ > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'https://cccam4all.net/iptv-smart-tv-exito-magenta-and-mobile[^<]*' CCcam > CCcam1
sed -n '1,1p' CCcam1 > CCcam2
adresa=`cut -d'"' -f 1 CCcam2`
adresa=$adresa
curl  -k -Lbk -A -k -m 8 -m 52 -s $adresa > /tmp/test/iptv
grep -o '"\([^"]*\)zip.*' iptv > iptvl
sed -ne 's#.*"\([^<]*\)".*#\1#p' iptvl > iptv2
adresa1=`tail -n 1 iptv2`
adresa1=$adresa1
curl  -k -Lbk -A -k -m 8 -m 52 -s  $adresa1 > /tmp/test/x.zip
unzip  x.zip -d  /IPTV
cd /
rm -rf /tmp/test
###########################################################################################################
[ -d /tmp/test ] || mkdir -p /tmp/test
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://cccam4all.net/category/iptv/ > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'https://cccam4all.net/iptv-providers-romania-m3u-liste-unlimited[^<]*' CCcam > CCcam1
sed -n '1,1p' CCcam1 > CCcam2
adresa=`cut -d'"' -f 1 CCcam2`
adresa=$adresa
curl  -k -Lbk -A -k -m 8 -m 52 -s $adresa > /tmp/test/iptv
grep -o '"\([^"]*\)zip.*' iptv > iptvl
sed -ne 's#.*"\([^<]*\)".*#\1#p' iptvl > iptv2
adresa1=`tail -n 1 iptv2`
adresa1=$adresa1
curl  -k -Lbk -A -k -m 8 -m 52 -s  $adresa1 > /tmp/test/x.zip
unzip  x.zip -d  /IPTV
cd /
rm -rf /tmp/test
###########################################################################################################
[ -d /tmp/test ] || mkdir -p /tmp/test
[ -d /IPTV/Adult ] || mkdir -p /IPTV/Adult
[ -d /IPTV/Ru ] || mkdir -p /IPTV/Ru
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://webarmen.com/my/iptv/auto.xxx.m3u > /IPTV/Adult/x.m3u
curl  -k -Lbk -A -k -m 8 -m 52 -s  http://adultiptv.net/lists/all.m3u > /IPTV/Adult/xx.m3u
curl  -k -Lbk -A -k -m 8 -m 52 -s  http://adultiptv.net/vods.m3u8 > /IPTV/Adult/xxx.m3u
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://webarmen.com/my/iptv/auto.all.m3u > /IPTV/Ru/Rus.m3u
cd /
rm -rf /tmp/test
###########################################################################################################
[ -d /tmp/test ] || mkdir -p /tmp/test
[ -d /IPTV/CZ ] || mkdir -p /IPTV/CZ
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://iptvcat.com/czech_republic > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'data-clipboard-text=[^<]*' CCcam > iptv
grep -o '"\([^"]*\)com.*' iptv > iptvl
sed -ne 's#.*"\([^<]*\)".*#\1#p' iptvl > iptv2
OUTPUT2='/IPTV/CZ/CZ.m3u'
echo -n "Converting ....."
FS=" "      
cat iptv2 |grep -i "^http:.*"|while read line ; do
F1=$(echo $line|cut -d"$FS" -f1)
SERVER=$(echo $line|cut -d"$FS" -f2)
PORT=$(echo $line|cut -d"$FS" -f3)
USER=$(echo $line|cut -d"$FS" -f4)
PASS=$(echo $line|cut -d"$FS" -f5)
#echo "SERVER: $SERVER PORT: $PORT USER: $USER PASS: $PASS"
echo -n "."
echo "#EXTINF:-1,CZ" >> $OUTPUT2
echo "$SERVER" >> $OUTPUT2

done
cd /
rm -rf /tmp/test
###########################################################################################################
[ -d /tmp/test ] || mkdir -p /tmp/test
[ -d /IPTV/Ip ] || mkdir -p /IPTV/Ip
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://hdbox.ws/com/news/43-ip-tv-kanaly.html?wpfb_list_page=1 > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'https://hdbox.ws/?wpfb[^<]*' CCcam > iptv
cut -d'"' -f 1 iptv > iptv2
adresa1=`sed -n '1,1p' iptv2`
adresa1=$adresa1
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa1 > /IPTV/Ip/ip1.m3u
adresa2=`sed -n '2,2p' iptv2`
adresa2=$adresa2
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa2 > /IPTV/Ip/ip2.m3u
adresa3=`sed -n '3,3p' iptv2`
adresa3=$adresa3
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa3 > /IPTV/Ip/ip3.m3u
adresa4=`sed -n '4,4p' iptv2`
adresa4=$adresa4
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa4 > /IPTV/Ip/ip4.m3u
adresa5=`sed -n '5,5p' iptv2`
adresa5=$adresa5
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa5 > /IPTV/Ip/ip5.m3u
adresa6=`sed -n '6,6p' iptv2`
adresa6=$adresa6
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa6 > /IPTV/Ip/ip6.m3u
adresa7=`sed -n '7,7p' iptv2`
adresa7=$adresa7
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa7 > /IPTV/Ip/ip7.m3u
###########################################
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://hdbox.ws/com/news/43-ip-tv-kanaly.html?wpfb_list_page=2 > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'https://hdbox.ws/?wpfb[^<]*' CCcam > iptv
cut -d'"' -f 1 iptv > iptv2
adresa1=`sed -n '1,1p' iptv2`
adresa1=$adresa1
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa1 > /IPTV/Ip/ip8.m3u
adresa2=`sed -n '2,2p' iptv2`
adresa2=$adresa2
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa2 > /IPTV/Ip/ip9.m3u
adresa3=`sed -n '3,3p' iptv2`
adresa3=$adresa3
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa3 > /IPTV/Ip/ip10.m3u
adresa4=`sed -n '4,4p' iptv2`
adresa4=$adresa4
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa4 > /IPTV/Ip/ip11.m3u
adresa5=`sed -n '5,5p' iptv2`
adresa5=$adresa5
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa5 > /IPTV/Ip/ip12.m3u
adresa6=`sed -n '6,6p' iptv2`
adresa6=$adresa6
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa6 > /IPTV/Ip/ip13.m3u
adresa7=`sed -n '7,7p' iptv2`
adresa7=$adresa7
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa7 > /IPTV/Ip/ip14.m3u
###########################################
curl  -k -Lbk -A -k -m 8 -m 52 -s  https://hdbox.ws/com/news/43-ip-tv-kanaly.html?wpfb_list_page=3 > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'https://hdbox.ws/?wpfb[^<]*' CCcam > iptv
cut -d'"' -f 1 iptv > iptv2
adresa1=`sed -n '1,1p' iptv2`
adresa1=$adresa1
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa1 > /IPTV/Ip/ip15.m3u
adresa2=`sed -n '2,2p' iptv2`
adresa2=$adresa2
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa2 > /IPTV/Ip/ip16.m3u
adresa3=`sed -n '3,3p' iptv2`
adresa3=$adresa3
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa3 > /IPTV/Ip/ip17.m3u
adresa4=`sed -n '4,4p' iptv2`
adresa4=$adresa4
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa4 > /IPTV/Ip/ip18.m3u
adresa5=`sed -n '5,5p' iptv2`
adresa5=$adresa5
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa5 > /IPTV/Ip/ip19.m3u
adresa6=`sed -n '6,6p' iptv2`
adresa6=$adresa6
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa6 > /IPTV/Ip/ip20.m3u
adresa7=`sed -n '7,7p' iptv2`
adresa7=$adresa7
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" --referer "https://hdbox.ws/" $adresa7 > /IPTV/Ip/ip21.m3u
cd /
rm -rf /tmp/test

echo ""
echo ""
echo ""
sleep 1
echo "OK"
sleep 1
echo "staženo do /IPTV/"
exit 