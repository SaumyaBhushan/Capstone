# Data Sending Application
This application used a very basic one-way Client and Server setup where a Client connects, sends messages to server and the server shows them using socket connection.

## Server

The command that should be done to get into the container shell instead of running the applications by default 
```
docker run -it --network javaserver3 --mount source=servervol,target=/usr/src/app/serverdata serverjava:1.0 /bin/bash
```
## Client

The command that should be done to get into the container shell instead of running the applications by default 
```
docker run -it --network javaserver3 --mount source=clientvol,target=/usr/src/app/clientdata clientjava:1.0 /bin/bash
```
## Volumes
Volumes are often a better choice than persisting data in a container’s writable layer, because a volume does not increase the size of the containers using it, and the volume’s contents exist outside the lifecycle of a given container.

Volumes can be more safely shared among multiple containers.

## User Defined Bridge Network
User-defined bridges provide automatic DNS resolution between containers

User-defined bridges provide better isolation
Linked containers on the default bridge network share environment variables.