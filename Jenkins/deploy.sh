#!/bin/bash
# 查看当前用户的用户组
groups
# 添加当前用户到用户组docker
sudo gpasswd -a $USER docker
# 刷新
newgrp dokcer
docker build -t restful_web_service:0.0.1 .
docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default restful_web_service:0.0.1