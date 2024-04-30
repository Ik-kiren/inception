#!/bin/sh
adduser -D -g 'user' user
adduser user user
mkdir /user
chown -R user:user /var/lib/nginx
chown -R user:user /user
cp /etc/index.html /user/index.html
mkdir /etc/nginx/cert
cd /etc/nginx/cert
openssl req -x509 -newkey rsa:4096 -keyout cert.key -out cert.crt -sha256 -days 3650 -nodes -subj "/C=FR/ST=Alsace/L=Mulhouse/O=42/OU=42/CN=cdupuis.42.fr"
nginx -g 'daemon off;'