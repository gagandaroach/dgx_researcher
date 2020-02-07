# DGX Research Container
# Author: Gagan Daroach <gagandaroach@gmail.com>
#

FROM nvcr.io/nvidia/tensorflow:19.07-py3

ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get upgrade -y

# install python3
RUN pip install requests

WORKDIR /srv