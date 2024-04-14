#!/bin/bash

if [ ! -f "vendor/autoload.php" ]; then
    composer install --no-prograess --no-interaction
fi

if [ ! -f ".env" ]; then
    echo "Creating env file"
    cp .env.example .env
fi


php-fpm -D
nginx -g "daemon off;"
