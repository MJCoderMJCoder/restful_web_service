#!/bin/bash
# gradle清理无用的镜构建信息
./gradlew clean
# 清理无用的镜像
docker image prune -f