FROM        php:7.4-cli

LABEL       author="Dieter Blancke"

# Installing required libraries
RUN         apt update -y && apt install curl software-properties-common git libzip-dev zip unzip -y

# Installing zip extension
RUN         docker-php-ext-install zip

# Installing composer
RUN         curl -sS https://getcomposer.org/installer | php
RUN         mv composer.phar /usr/local/bin/composer
RUN         chmod +x /usr/local/bin/composer
