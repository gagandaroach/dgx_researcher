#!/bin/bash
# TO BE RUN ON MSOE dh-dgx node
#
# Author: Gagan Daroach <gagandaroach@gmail.com>
user=$USER
container_name="${user}_researcher_dev"

# build docker container
docker build . -t $container_name:latest
# stop container if it is running currently.
docker stop $container_name
docker rm $container_name

nvidia-docker run --name $container_name --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it --rm -v /data:/data -v ~:/srv/hosthome -it $container_name
