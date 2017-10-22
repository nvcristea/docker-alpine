## About

This is the Git repo with multiple PHP Alpine based images for Docker
 
## Tags with Dockerfile links

### PHP tags
### php-cli
- [7.1](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/Dockerfile) - alpine:3.4 + php:7.1
- [7.1-composer](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/composer/Dockerfile) - alpine:3.4 + php:7.1 + composer
- [7.1-xdebug](https://github.com/nvcristea/docker-alpine/blob/php/php/cli/7.1/xdebug/Dockerfile) - alpine:3.4 + php:7.1 + xdebug

### php-fpm
- [7.1-fpm-xdebug](https://github.com/nvcristea/docker-alpine/blob/php/php/fpm/7.1/xdebug/Dockerfile) - alpine:3.4 + php-fpm:7.1 + xdebug

#### Usage example:

```bash
docker image pull nvcristea/alpine-php:7.1-composer
docker image pull nvcristea/alpine-php:7.1-fpm-xdebug

docker run --rm -i nvcristea/alpine-php:-7.1-composer -V
docker run --rm -i nvcristea/alpine-php:-7.1-composer install -d project
```


## Docker Hub

Automate Build [nvcristea/alpine-php](https://hub.docker.com/r/nvcristea/alpine-php/)
