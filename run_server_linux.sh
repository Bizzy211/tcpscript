#!/bin/bash
docker network create --subnet 172.100.0.0/16 tcp_server
docker build -t tcp_server ./server
docker run  --network="tcp_server" --rm -it --publish 1233:1233 --name tcp_server --ip 172.100.0.2 tcp_server