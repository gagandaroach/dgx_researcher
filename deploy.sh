#!/bin/bash
# TO BE RUN ON dh-dgx node
#
# Author: Gagan Daroach <gagandaroach@gmail.com>

docker build . -t dgx_researcher

nvidia-docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it --rm -v /data:/srv/data -v ~:/srv/hosthome -it -v /raid:/srv/raid dgx_researcher