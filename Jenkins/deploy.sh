#!/bin/bash
mv ./build/libs/restful_web_service-0.0.1-SNAPSHOT.jar ./Jenkins/
# 清理容器
container_name=`docker inspect restful_web_service 2> /dev/null | grep '"Name": "/restful_web_service"'`
if [ ${#container_name} -gt 0 ]
then
  docker stop restful_web_service
  docker rm -f restful_web_service
fi
# 清理镜像
image_id=`docker images "*restful_web_service*" -q 2> /dev/null`
if [ ${#image_id} -gt 0 ]
then
  docker rmi -f ${image_id}
fi
cd ./Jenkins/
docker-compose up -d
#docker build -t restful_web_service:0.0.1 ./Jenkins/
#docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default --restart=always restful_web_service:0.0.1