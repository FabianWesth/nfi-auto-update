#!/bin/bash

cd /home/fabian/freqtrade/freqtrade-local/ft_userdata/
/usr/local/bin/docker-compose stop
/usr/local/bin/docker-compose build
/usr/local/bin/docker-compose up -d
