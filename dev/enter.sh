#!/bin/bash
# TO BE RUN ON MSOE dh-dgx node
#
# Author: Gagan Daroach <gagandaroach@gmail.com>
user=$USER
container_name="${user}_researcher_dev"

docker exec -it $container_name /bin/bash