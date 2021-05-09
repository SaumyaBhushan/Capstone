#!/bin/sh
cd Server
docker build -t serverjava:1.0 .
docker volume create servervol
docker network create --driver=bridge --subnet=172.60.0.0/16 javaserver3
docker run -it --mount source=servervol,target=/usr/src/app/serverdata --network javaserver3 --ip 172.60.0.12 serverjava:1.0