#!/bin/sh
echo "vyhledávání m3u"
echo "search m3u"
sleep 1
echo "start"
find / -name \*.m3u | xargs -I {} cp {} /tmp/
echo ""
echo ""
echo "ukládám do /tmp/"
echo "save to /tmp/"
sleep 1
echo "OK"
exit





