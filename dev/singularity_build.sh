#!/bin/bash
container_name="$(cat container_name.txt)"
echo "Container name: $container_name"
# docker build . -t container_name
# singularity build mcw_dev_img.sif Dockerfile
