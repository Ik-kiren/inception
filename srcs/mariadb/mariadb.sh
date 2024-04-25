#!/bin/sh

mysql_install_db --user=mysql --datadir=/var/lib/mysql
apk add openrc
openrc reboot
rc-service mariadb start
mariadb << EOF
create user 'user'@'workstation' identified by 'inception';
grant all privileges on *.* to 'user'@'workstation' with grant option;
EOF
rc-service mariadb stop
mysqld_safe --user=root