FROM alpine:3.18

RUN apk add mariadb mariadb-client

COPY tools/mariadb.sh /etc/mariadb.sh
COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

ENTRYPOINT ["sh", "/etc/mariadb.sh"]