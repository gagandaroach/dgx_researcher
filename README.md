# Tensorflow Containers for NVIDIA DGX System 


Containers equipped with tools for deep learning and computer vision analysis.


## 2 Configurations

Both deploy scripts have bind mounts for [MSOE ROSIE](https://www.msoe.edu/about-msoe/news/details/meet-rosie/) supercomputer mountpoints.

* `/home/$USER` -> `/srv/hosthome`
* `/data/` -> `/srv/data`
* `/raid/` -> `/srv/raid`

### Dev

Has python modules
 * Python3
 * PyVIPS
 * OpenCV
 * HistomicsTK WSI Library
 * Tensorflow 2

### Trainer

 * Tensorflow 1.14