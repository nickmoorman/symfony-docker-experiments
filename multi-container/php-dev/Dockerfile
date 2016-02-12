FROM sfexperiments/php

# Reference: https://github.com/yappabe/docker-php/blob/master/5.6/Dockerfile

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-configure zip \
    # --with-zlib-dir=/lib/x86_64-linux-gnu \
    && docker-php-ext-install zip

#ADD . /var/www
#WORKDIR /var/www

#VOLUME /var/www

ENTRYPOINT ["/bin/bash"]
