FROM alpine:3.18

RUN apk add php php-fpm mariadb-client

COPY wordpress.sh /etc/wordpress.sh

ENTRYPOINT [ "sh" , "/etc/wordpress.sh" ]

