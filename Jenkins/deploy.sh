#!/bin/bash
su root
docker build -t restful_web_service:0.0.1 .
docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default restful_web_service:0.0.1