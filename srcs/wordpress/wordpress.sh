#!/bin/sh

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -f latest.tar.gz
php-fpm81 -F