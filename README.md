## About

This is the Git repo with multiple PHP Alpine based images for Docker
 
## Tags with Dockerfile links

### PHP tags
### php-cli
- [7.1](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/Dockerfile) - alpine:3.4 + php:7.1
- [7.1-composer](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/composer/Dockerfile) - alpine:3.4 + php:7.1 + composer
- [7.1-xdebug](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/xdebug/Dockerfile) - alpine:3.4 + php:7.1 + xdebug

### php-fpm
- [7.2-fpm-composer](https://github.com/nvcristea/docker-alpine/blob/php/php/fpm/7.2/composer/Dockerfile) - alpine:3.7 + php-fpm:7.2 + composer
- [7.2-fpm-xdebug](https://github.com/nvcristea/docker-alpine/blob/php/php/fpm/7.2/xdebug/Dockerfile) - alpine:3.7 + php-fpm:7.2 + xdebug
- [7.1-fpm-xdebug](https://github.com/nvcristea/docker-alpine/blob/php/php/fpm/7.1/xdebug/Dockerfile) - alpine:3.4 + php-fpm:7.1 + xdebug

### php-dev
- [dev-composer](https://github.com/nvcristea/docker-alpine/blob/php/php/dev/composer/Dockerfile) - alpine:3.7 + php-fpm:7.2 + composer + php ext: pdo_mysql zip bcmath memcached
- [dev](https://github.com/nvcristea/docker-alpine/blob/php/php/dev/Dockerfile) - alpine:3.7 + php-fpm:7.2 + xdebug + php ext: pdo_mysql zip bcmath memcached

#### Usage example:

```bash
docker image pull nvcristea/alpine-php:7.1-composer
docker image pull nvcristea/alpine-php:7.2-fpm-composer
docker image pull nvcristea/alpine-php:7.2-fpm-xdebug

docker run --rm -i nvcristea/alpine-php:7.2-fpm-composer -V
docker run --rm -i nvcristea/alpine-php:7.2-fpm-composer install -d project
```


## Docker Hub

Automate Build [nvcristea/alpine-php](https://hub.docker.com/r/nvcristea/alpine-php/)
