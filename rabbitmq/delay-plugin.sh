wget "https://bintray.com/rabbitmq/community-plugins/download_file?file_path=3.7.x%2Frabbitmq_delayed_message_exchange%2Frabbitmq_delayed_message_exchange-20171201-3.7.x.zip" -O rabbit-delay-plugin.zip
unzip -q rabbit-delay-plugin.zip
docker cp rabbitmq_delayed_message_exchange-20171201-3.7.x.ez rabbitmq:/plugins/rabbitmq_delayed_message_exchange-0.0.1.x.ez
docker exec rabbitmq rabbitmq-plugins enable rabbitmq_delayed_message_exchange
rm -rf rabbit-delay-plugin.zip rabbitmq_delayed_message_exchange-20171201-3.7.x.ez
