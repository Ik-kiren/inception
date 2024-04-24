#!/bin/sh

adduser -D -g 'user' user
adduser user user
mkdir /user
chown -R user:user /var/lib/nginx
chown -R user:user /user
cp /etc/index.html /user/index.html
nginx -g 'daemon off;'