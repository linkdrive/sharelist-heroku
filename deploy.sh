killall node
killall nodejs

ls

cat /sharelist/cache/config.json
echo "$CONFIG"

if echo "$CONFIG" | grep -q -i "^http"; then
  wget --no-check-certificate $CONFIG -O /sharelist/cache/config.json
else
  echo -e "$CONFIG" > /sharelist/cache/config.json
fi
cat /sharelist/cache/config.json
cd /sharelist
npm start
