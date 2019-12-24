#!/usr/bin/env bash

wget https://soft-1252259164.cos.ap-shanghai.myqcloud.com/rabbitmq_delayed_message_exchange-3.8.0.ez
docker cp rabbitmq_delayed_message_exchange-3.8.0.ez rabbitmq:/plugins/rabbitmq_delayed_message_exchange-0.0.1.x.ez
docker exec rabbitmq rabbitmq-plugins enable rabbitmq_delayed_message_exchange
rm -rf rabbit-delay-plugin.zip rabbitmq_delayed_message_exchange-3.8.0.ez