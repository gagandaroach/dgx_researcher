#!/bin/bash
# Stylegan1 Tensorflow 1.15 Docker container
# Author: Gagan Daroach <gagandaroach@gmail.com>
container_name="$(cat container_name.txt)"
echo ">>>> Loaded container name: $container_name <<<<"

# user="-u 1000:1000"
user=""
volumes="-v /home/gagan/research:/host/research -v /srv:/host/srv"
workdir="-w /host/research"
ports="-p 8888:8888"
gpus="--gpus all"
docker_args="$volumes $ports $user $gpus $workdir --name $container_name --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it --rm"
echo ">>>> Docker run jupyter lab with args: <<<<"
echo "$docker_args"
echo ""
docker run $docker_args $container_name jupyter-lab
# nvidia-docker run --name $container_name --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it --rm -v /data:/data -v ~:/srv/hosthome -it $container_name
