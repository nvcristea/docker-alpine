FROM alpine:3.5

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

# Environments
ENV TIMEZONE    Europe/Bucharest

RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \
    rm -rf /var/cache/apk/*
