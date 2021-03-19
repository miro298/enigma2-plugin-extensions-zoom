echo "switching menu to Czech"
rm /etc/openpanel.xml
cp /etc/CZ/openpanel.xml /etc/
rm -rf /etc/panel
cp -a /etc/CZ/panel /etc/
exit