FROM nvcr.io/nvidia/tensorflow:19.07-py3

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install libvips-dev libvips-tools -y

RUN apt-get install python3 pyvips