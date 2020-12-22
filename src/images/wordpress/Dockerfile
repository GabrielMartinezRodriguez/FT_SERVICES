FROM alpine:latest

RUN apk update && apk add wget && mkdir /www \
&& apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache && mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

RUN wget https://es.wordpress.org/wordpress-5.4.4-es_ES.tar.gz \
&& tar -xvf wordpress-5.4.4-es_ES.tar.gz \
&& mv wordpress/* /www \
&& rm -rf /var/cache/apk/*

COPY ./wp-config.php /www/wp-config.php
COPY setup.sh .

RUN chmod +x setup.sh

EXPOSE 5050

CMD ./setup.sh