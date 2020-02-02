FROM nvcr.io/nvidia/tensorflow:19.07-py3

ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install libvips-dev libvips-tools -y

RUN apt-get install python3 python3-pip -y
RUN apt-get install python3-opencv -y

