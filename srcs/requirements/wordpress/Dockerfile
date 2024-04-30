FROM alpine:3.18

RUN apk add php php-fpm php-mysqli mariadb-client php-curl php-phar php-cli php-mbstring php-common
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY tools/wordpress.sh /etc/wordpress.sh
COPY conf/wp-config.php /etc/wp-config.php
COPY tools/post.txt /etc/post.txt

EXPOSE 9000

ENTRYPOINT [ "sh" , "/etc/wordpress.sh" ]

