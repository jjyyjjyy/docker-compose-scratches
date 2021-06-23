#!/usr/bin/env bash

docker-compose -f certs.yml run --rm create_certs

sudo mkdir -p ~/volumes/es/data0{1..3}/
sudo chmod 777 ~/volumes/es -R

docker-compose up -d
