#!/bin/sh
cd Client
docker build -t clientjava:1.0 .
docker volume create clientvol
docker run --restart unless-stopped -it --network javaserver3 --mount source=clientvol,target=/usr/src/app/clientdata clientjava:1.0
