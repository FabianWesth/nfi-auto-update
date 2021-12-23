#!/bin/bash

cd /home/fabian/freqtrade/freqtrade-local/ft_userdata/
docker-compose stop
docker-compose build
docker-compose up -d
