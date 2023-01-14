#!/bin/bash
sudo docker build -t restful_web_service:0.0.1 .
sudo docker run -d -p 80:80 --name restful_web_service --network dockercomposedemo_default restful_web_service:0.0.1