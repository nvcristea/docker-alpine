FROM php:7.1-cli-alpine

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

# Environments
ENV TIMEZONE    Europe/Bucharest
ENV MEMCACHED_DEPS zlib zlib-dev libmemcached-libs
ENV MEMCACHED_BUILD_DEPS zlib-dev libmemcached-dev cyrus-sasl-dev

RUN apk add --update --no-cache tzdata \
    && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && echo "${TIMEZONE}" > /etc/timezone

RUN apk add --update --no-cache openssh openssl wget curl ${MEMCACHED_DEPS} \
    && apk add --no-cache --update --virtual .memcached-deps ${MEMCACHED_BUILD_DEPS}

RUN docker-php-ext-configure pdo \
    && pecl install memcached \
    && docker-php-ext-install pdo_mysql zip bcmath \
    && echo "extension=memcached.so" > /usr/local/etc/php/conf.d/20_memcached.ini \
    && apk del .memcached-deps

WORKDIR /app
