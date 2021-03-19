echo "switching menu to Greek"
rm /etc/openpanel.xml
cp /etc/LANG/GR/openpanel.xml /etc/
rm /etc/panel/openpanel.xml
cp /etc/LANG/GR/openpanel.xml /etc/panel/
rm /etc/panel/lite.xml
cp /etc/LANG/GR/lite.xml /etc/panel/
exit