FROM php:7.1-alpine

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

RUN docker-php-ext-configure pdo \
    && pecl install xdebug \
    && docker-php-ext-install pdo_mysql

RUN apk add --update --no-cache openssh

COPY xdebug.ini $PHP_INI_DIR/conf.d/
