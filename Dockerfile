FROM php:7.2-fpm-alpine3.8

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
	docker-php-ext-install mysqli pdo pdo_mysql && \
	echo "output_buffering=on" > /usr/local/etc/php/php.ini
