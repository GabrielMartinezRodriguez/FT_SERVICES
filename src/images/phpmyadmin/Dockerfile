FROM alpine

# We install packages
RUN apk update && apk upgrade && apk add bash \
&& apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache

# We download PHPMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz \
&& tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz \
&& mv phpMyAdmin-4.9.0.1-all-languages /www \
&& rm -rf /var/cache/apk/*


# PHPMyAdmin config file
COPY phpmyadmin.inc.php /www/config.inc.php
RUN chmod -R 755 /www

# Telegraf setup
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# Here we go
COPY start.sh .
RUN chmod +x start.sh
EXPOSE 5000
CMD ./start.sh
