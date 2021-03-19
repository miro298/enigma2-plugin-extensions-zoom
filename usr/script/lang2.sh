echo "switching menu to Deutsch"
rm /etc/openpanel.xml
cp /etc/LANG/DE/openpanel.xml /etc/
rm /etc/panel/openpanel.xml
cp /etc/LANG/DE/openpanel.xml /etc/panel/
rm /etc/panel/lite.xml
cp /etc/LANG/DE/lite.xml /etc/panel/
exit