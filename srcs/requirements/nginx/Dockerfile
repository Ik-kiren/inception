FROM alpine:3.18

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY tools/index.html /etc/index.html
COPY tools/nginx.sh /etc/nginx.sh

RUN apk add nginx openssl

ENTRYPOINT [ "sh" , "/etc/nginx.sh"]