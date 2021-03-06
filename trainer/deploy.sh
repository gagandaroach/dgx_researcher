#!/bin/bash
# TO BE RUN ON MSOE dh-dgx node
#
# Author: Gagan Daroach <gagandaroach@gmail.com>
user=$USER
container_name="${user}_researcher"

# stop container if it is running currently.
docker stop $container_name
docker rm $container_name
# build docker container
docker build . -t $container_name:latest

nvidia-docker run --name $container_name --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it -v /data:/srv/data -v ~:/srv/hosthome -v /raid:/srv/raid $container_name
