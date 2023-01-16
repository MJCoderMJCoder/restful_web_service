#!/bin/bash
# gradle清理构建的信息
./gradlew clean
# 清理无用的镜像
docker image prune -f