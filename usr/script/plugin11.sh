#!/bin/sh
echo "stahuji plugin e2iPlayer"
cd /tmp
curl  -k -Lbk -m 55532 -m 555104 "https://drive.google.com/uc?id=1a1RrKs-MAAKFfgSpPl_Mtu-g9yO0xDgb&export=download" > /tmp/enigma2-plugin-extensions-e2iplayer_2020.09.29.1_all.ipk
sleep 1
echo "instaluji plugin...."
cd /tmp
opkg install /tmp/enigma2-plugin-extensions-e2iplayer_2020.09.29.1_all.ipk
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 1
rm /tmp/enigma2-plugin-extensions-e2iplayer_2020.09.29.1_all.ipk
sleep 2
killall -9 enigma2
exit