FROM php:7.0-apache

LABEL maintainer="susc@github"

# Install Git
COPY ./docker/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y git unzip

# Install Composer to handle dependencies
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# Copy application source code to html directory
COPY ./app/ /var/www/html/

# Install dependencies
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
RUN composer install

RUN mkdir -p /var/lib/vnstat
