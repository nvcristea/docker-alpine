FROM nginx:1.11-alpine

MAINTAINER Nicolae V. Cristea <coder@cristea.bid>

RUN apk add --update --no-cache \
        curl \
        git \
        openssh

COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf
