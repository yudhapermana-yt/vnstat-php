#!/bin/sh

sudo apt-get -y install vnstat php-cli

mkdir /usr/local/vnstat-php -p
cd /usr/local/vnstat-php || exit

wget https://raw.githubusercontent.com/yudhapermana-yt/vnstat-php/master/vnstat.php

nohup php -S 0.0.0.0:55555 vnstat.php > phpd.log 2>&1 &
