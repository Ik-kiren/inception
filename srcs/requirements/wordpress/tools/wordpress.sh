#!/bin/sh
if [ ! -f "/wordpress/wp-config.php" ]; then
    mkdir wordpress
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    cd wordpress
    wp core download
    mv /etc/wp-config.php /wordpress/wp-config.php
    sed -i 's/database_name_here/'$DB_NAME'/g' /wordpress/wp-config.php
    sed -i 's/username_here/'$DB_USER'/g' /wordpress/wp-config.php
    sed -i 's/password_here/'$DB_PASSWORD'/g' /wordpress/wp-config.php
    wp core install --url=cdupuis.42.fr --title=inception --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=cdupuis@42.fr
    wp post create /etc/post.txt --post_title='post test' --post_status=publish
    wp user create fabio fabio@42.fr --role=author --user_pass=$WP_FABIOPASS
fi
sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php81/php.ini
sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/g' /etc/php81/php-fpm.d/www.conf
php-fpm81 -F