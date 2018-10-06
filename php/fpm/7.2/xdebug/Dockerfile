FROM nvcristea/alpine:php-7.2-fpm

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

RUN docker-php-ext-configure pdo \
    && pecl install xdebug \
    && docker-php-ext-install pdo_mysql

COPY xdebug.ini $PHP_INI_DIR/conf.d/

WORKDIR /app
