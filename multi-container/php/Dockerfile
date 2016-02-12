FROM php:5.6-fpm

# Reference: https://github.com/docker-library/php/blob/7bd5c38db974ee629a815896add1ec568a1cc88c/5.5/fpm/Dockerfile
# Other reference: https://github.com/yappabe/docker-php/blob/master/5.6/Dockerfile

RUN apt-get update \
    #&& apt-get install -y --no-install-recommends \
    #    git \
    && rm -rf /var/lib/apt/lists/* \
    && usermod -u 1000 www-data

ADD php.ini /usr/local/etc/php
#ADD . /var/www
WORKDIR /var/www

#VOLUME /var/www

#ENTRYPOINT ["/bin/bash"]
