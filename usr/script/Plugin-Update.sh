#!/bin/sh
#DESCRIPTION=This script will update Hacksat Key Downloader Plugin english
echo "Plugin Update by tonytr"
echo "Updating SoftCam.Org Key Downloader"
wget http://www.skystar.org/hacksat/e2/en/e2-hacksatkeydownloaderen1.3.tar.bz2 -O /tmp/e2-hacksatkeydownloaderen1.3.tar.bz2
sleep 1
echo "Installing Plugin..."
tar -jxvf /tmp/e2-hacksatkeydownloaderen1.3.tar.bz2 -C /
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 1
rm /tmp/e2-hacksatkeydownloaderen1.3.tar.bz2
sleep 2
killall -9 enigma2
exit
