FROM alpine:3.18

RUN apk add mariadb mariadb-client

COPY mariadb.sh /etc/mariadb.sh

ENTRYPOINT ["sh", "/etc/mariadb.sh"]