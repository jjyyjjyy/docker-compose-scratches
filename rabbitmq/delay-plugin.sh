docker cp rabbitmq_delayed_message_exchange-20171201-3.7.x.ez rabbitmq:/plugins/rabbitmq_delayed_message_exchange-0.0.1.x.ez
docker exec rabbitmq rabbitmq-plugins enable rabbitmq_delayed_message_exchange
rm -rf rabbit-delay-plugin.zip rabbitmq_delayed_message_exchange-20171201-3.7.x.ez
