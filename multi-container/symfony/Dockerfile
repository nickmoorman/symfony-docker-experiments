FROM sfexperiments/php-dev

WORKDIR /var/www

#ADD composer.json /var/www
#ADD composer.lock /var/www
#ADD app/AppKernel.php /var/www/app

ADD . /var/www
RUN chown -R www-data /var/www
#RUN composer install

RUN #rm -rf var/cache/* var/logs/* var/sessions/* \
    #mkdir -p var/cache var/logs var/sessions \
    #chmod -R 777 var/{cache,logs,sessions} \
    cd web \
    && ln -s app_dev.php index.php \
    && cd - \
    && make all

VOLUME /var/www

ENTRYPOINT ["/bin/bash"]
