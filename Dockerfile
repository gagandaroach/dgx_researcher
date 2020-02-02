# DGX Research Container
# Author: Gagan Daroach <gagandaroach@gmail.com>
#
# Contains
# * Python3
# * PyVIPS
# * OpenCV

FROM nvcr.io/nvidia/tensorflow:19.07-py3
# set timezone for tzdata update
ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get upgrade -y

# install VIPS library
RUN apt-get install libvips-dev libvips-tools -y
# install python3
RUN apt-get install python3 python3-pip -y
# install opencv
RUN apt-get install python3-opencv -y
# install vips python bindings
RUN python3 -m pip install pyvips
