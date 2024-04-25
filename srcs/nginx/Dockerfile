FROM alpine:3.18

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY index.html /etc/index.html
COPY nginx.sh /etc/nginx.sh

RUN apk add nginx

ENTRYPOINT [ "sh" , "/etc/nginx.sh"]