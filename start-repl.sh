#!/bin/bash

cp docker-compose.yml ./node
docker-compose up -d

ip=`echo $(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')`

docker exec db1 mongo --eval "rs.initiate()"
ports=`docker exec node node index.js`
str="$ip:27017;"
for port in $ports; do
  docker exec db1 mongo --eval "rs.add(\"$ip:$port\")"
  str="$str$ip:$port;"
done

echo $str
