FROM        7.4-cli-alpine3.11

LABEL       author="Dieter Blancke"

# Installing required libraries
RUN         apk add --update curl software-properties-common git libzip-dev zip unzip

# Installing zip extension
RUN         docker-php-ext-install zip

# Installing composer
RUN         curl -sS https://getcomposer.org/installer | php
RUN         mv composer.phar /usr/local/bin/composer
RUN         chmod +x /usr/local/bin/composer
