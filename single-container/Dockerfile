FROM olegpuzanov/docker-nginx-php5-fpm

# Based on https://github.com/olegpuzanov/docker-symfony2/blob/master/Dockerfile
# Install composer, then fix security issue and set timezone in php.ini 
RUN apt-get install make \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    # More info: https://nealpoole.com/blog/2011/04/setting-up-php-fastcgi-and-nginx-dont-trust-the-tutorials-check-your-configuration/
    && sed -i.bak "s@;cgi.fix_pathinfo=1@cgi.fix_pathinfo=0@g" /etc/php5/fpm/php.ini \
    && sed -i".bak" "s/^\;date\.timezone.*$/date\.timezone = \"America\/Los_Angeles\" /g" /etc/php5/fpm/php.ini

ADD . /var/www/
WORKDIR /var/www

RUN cd web \
    && ln -s app_dev.php index.php \
    && cd - \
    && make all

ENTRYPOINT ["/bin/bash"]
