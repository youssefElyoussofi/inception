#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
    echo "Generating SSL Certificate..."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -subj "/C=MA/ST=Rabat-Sale/L=Rabat/O=1337/OU=Student/CN=yoel-you.42.fr" \
        -keyout /etc/ssl/certs/nginx.key \
        -out /etc/ssl/certs/nginx.crt
fi

exec nginx -g "daemon off;"
