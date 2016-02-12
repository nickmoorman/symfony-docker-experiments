#!/bin/bash

docker build -t sfexperiments/php php/
docker build -t sfexperiments/php-dev php-dev/
docker build -t sfexperiments/app symfony/
