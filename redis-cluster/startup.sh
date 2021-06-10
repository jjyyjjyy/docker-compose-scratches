#!/usr/bin/env bash

data=${1:-.}
echo "DATA_PATH=${data}" >.env

ip=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}')
for port in $(seq 7001 7006); do
  mkdir -p "./${port}/conf" &&
    PORT=${port} IP=${ip} envsubst <./redis-cluster.conf >"./${port}/conf/redis.conf" &&
    mkdir -p "${data}/${port}/data"

done

echo "Next step:"
echo "docker-compose up -d"

# ip=$(hostname -i)
# ip=$(ipconfig getifaddr en0)
echo "docker exec -it redis7001 redis-cli -p 7001 --cluster create ${ip}:7001 ${ip}:7002 ${ip}:7003 ${ip}:7004 ${ip}:7005 ${ip}:7006 --cluster-replicas 1"
