#!/bin/bash
#给docker.sock添加读写权限
mv ./build/libs/restful_web_service-0.0.1-SNAPSHOT.jar ./Jenkins/
# gradle清理构建的信息
./gradlew clean
chmod +777 /var/run/docker.sock
docker build -t restful_web_service:0.0.1 ./Jenkins/
docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default restful_web_service:0.0.1