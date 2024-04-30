#!/bin/sh

if [ ! -d "/var/lib/mysql/wordpress" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
    apk add openrc
    openrc reboot
    rc-service mariadb start
    mariadb << EOF
    create database $DB_NAME;
    grant all on $DB_NAME.* to '$DB_USER'@'%' identified by '$DB_PASSWORD';
    flush privileges;
EOF
    rc-service mariadb stop
fi
mysqld_safe --bind-address=0.0.0.0

#create user '$DB_USER'@'%' identified by '$DB_PASSWORD';