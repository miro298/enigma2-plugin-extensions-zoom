#!/bin/sh
echo "stahuji z : satunivers.tv"
[ -d /tmp/test ] || mkdir -p /tmp/test

curl -k -A -k -s  server.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/CCcam5
chmod 644 /tmp/test/CCcam

cd /tmp/test


cp CCcam5 /etc/CCcam.cfg
cp CCcam5 /tmp/readme.txt

cd
more /tmp/readme.txt
rm /tmp/readme.txt

rm -rf /tmp/test
####################################################################################################
/usr/script/conv.sh
####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
/usr/script/restart.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
exit
