#!/bin/bash
#给docker.sock添加读写权限
sudo chmod +777 /var/run/docker.sock
#创建docker用户组.
sudo groupadd docker
#将当前用户加入到docker用户组.
sudo usermod -aG docker $USER
#激活更新用户组信息:
newgrp docker
docker build -t restful_web_service:0.0.1 .
docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default restful_web_service:0.0.1