FROM nvcristea/alpine-php:7.1

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

RUN docker-php-ext-configure pdo \
    && pecl install xdebug

COPY xdebug.ini $PHP_INI_DIR/conf.d/
