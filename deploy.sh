#!/bin/bash

docker stop nginx-do
docker rm   nginx-do

docker build -t devops/nginx-server ./nginx
docker run -d \
  --name nginx-do \
  -p 54321:80 \
  --restart unless-stopped \
  devops/nginx-server

docker ps -a
curl 127.0.0.1:54321
