FROM alpine:3.5

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

# Environments
ENV TIMEZONE            Europe/Bucharest
ENV PHP_MEMORY_LIMIT    512M
ENV PHP_MAX_POST        100M

# ensure www-data user exists
RUN set -x \
	&& addgroup -g 82 -S www-data \
	&& adduser -u 82 -D -S -G www-data www-data
# 82 is the standard uid/gid for "www-data" in Alpine

RUN apk add --update --no-cache \
        tzdata \
        curl \
        apache2 \
        php5-apache2 \
        php5-cli \
        php5-json \
        php5-soap \
        php5-mcrypt \
        php5-curl \
        php5-phar

RUN sed -i 's#^DocumentRoot ".*#DocumentRoot "/var/www/html"#g' /etc/apache2/httpd.conf && \
    sed -i 's#AllowOverride None#AllowOverride All#' /etc/apache2/httpd.conf && \
    sed -i 's/^#ServerName.*/ServerName httpd-php56.dev/' /etc/apache2/httpd.conf && \
    mkdir -p /var/www/html && \
    touch /var/www/html/info.php && \
    echo "<?php phpinfo();" > /var/www/html/info.php && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \
    rm -rf /var/cache/apk/*

COPY httpd-foreground.sh /usr/local/bin/httpd-foreground
COPY httpd-extra.conf /etc/apache2/conf.d/

EXPOSE 80
CMD ["httpd-foreground"]
