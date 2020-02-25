#!/bin/bash
docker build . -t dgx_researcher_dev
singularity build mcw_dev_img.sif Dockerfile
