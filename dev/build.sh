#!/bin/bash
# Stylegan1 Tensorflow 1.15 Docker container
# Author: Gagan Daroach <gagandaroach@gmail.com>

container_name="$(cat container_name.txt)"
echo 'Calling build "$container_name"'
# build docker container
docker build . -t $container_name:latest
