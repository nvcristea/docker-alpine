## About

This is the Git repo with multiple Alpine based images for Docker
 
## Tags with Dockerfile links

Usage example:
```bash
docker image pull nvcristea/alpine:3.6
docker image pull nvcristea/alpine:php-7.1-composer
docker image pull nvcristea/alpine:php-7.1-fpm

docker run --rm -i nvcristea/alpine:php-7.1-composer -V
```

### Alpine tags:
- [3.6](https://github.com/nvcristea/docker-alpine/blob/master/3.5/Dockerfile) - alpine 3.6 + tzdata
- [3.5](https://github.com/nvcristea/docker-alpine/blob/master/3.5/Dockerfile) - alpine 3.5 + tzdata

### PHP
### php-cli
- [php-7.1-cli](https://github.com/nvcristea/docker-alpine/blob/master/php/7.1/cli/Dockerfile) - alpine 3.4 (tzdata,openssh,openssl,wget) + php 7.1 (pdo,pdo_mysql)
- [php-7.1-composer](https://github.com/nvcristea/docker-alpine/blob/master/php/7.1/cli/composer/Dockerfile) - alpine 3.4 (tzdata,openssh,openssl,wget,curl git,subversion,mercurial,tini,bash) + php 7.1 (pdo,pdo_mysql,xdebug) + composer
- [php-7.1-xdebug](https://github.com/nvcristea/docker-alpine/blob/master/php/7.1/xdebug/Dockerfile) - alpine 3.4 + php 7.1 with pdo_mysql + xdebug

### php-fpm
- [php-7.1-fpm-xdebug](https://github.com/nvcristea/docker-alpine/blob/master/php/7.1/fpm/xdebug/Dockerfile) - alpine 3.4 + php-fpm 7.1 with pdo_mysql + xdebug

## nginx
- [nginx-ready-fpm](https://github.com/nvcristea/docker-alpine/blob/master/nginx/ready/php-fpm/Dockerfile) - alpine 3.4 + nxinx 1.11 ready to use php-fpm

## httpd
- [httpd-php56](https://github.com/nvcristea/docker-alpine/blob/master/httpd/php56/Dockerfile) - alpine 3.5 + apache 2 + php 5.6


## Docker Hub

Automate Build [nvcristea/alpine](https://hub.docker.com/r/nvcristea/alpine/)
