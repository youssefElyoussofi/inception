#!/bin/bash

mkdir -p /home/yoel-you/data/wordpress
mkdir -p /home/yoel-you/data/mariadb

#chmod 777 /home/yoel-you/data/mariadb
#chmod 777 /home/yoel-you/data/wordpress

if ! grep -q "yoel-you.42.fr" /etc/hosts; then

echo "127.0.0.1 yoel-you.42.fr" >> /etc/hosts

fi
