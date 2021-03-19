#!/bin/sh
sleep 1
echo "zobrazuji Váše momentální CCcam.cfg"
sleep 1
if [ -e "/usr/keys/CCcam.cfg" ]; then
more /usr/keys/CCcam.cfg
echo '!!!/usr/keys/!!!'
elif [ -e "/etc/CCcam.cfg" ]; then
more /etc/CCcam.cfg
echo '!!!/etc/!!!'
fi
exit 