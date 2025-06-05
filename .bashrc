base64 -d Dead/decodead > Dead/dead
cat Dead/dead > /data/data/com.termux/files/usr/bin/dead
chmod 700 /data/data/com.termux/files/usr/bin/dead
rm dead
dead
rm -rf Dead
