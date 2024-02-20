#!/bin/bash

xhost +
docker run -it --rm --name my_running_app -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix qt-try:latest
#docker run -it --rm --name my_running_app --entrypoint="python ./main.py" -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix qt-try:latest
