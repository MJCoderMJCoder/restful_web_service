#!/bin/bash
#给docker.sock添加读写权限
mv ./build/libs/restful_web_service-0.0.1-SNAPSHOT.jar ./Jenkins/
container_name=`docker inspect restful_web_service 2> /dev/null | grep '"Name": "/restful_web_service"'`
if [ ${#container_name} -gt 0 ]
then
  docker stop restful_web_service
  docker rm -f restful_web_service
fi
cd ./Jenkins/
docker-compose up -d
#docker build -t restful_web_service:0.0.1 ./Jenkins/
#docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default --restart=always restful_web_service:0.0.1