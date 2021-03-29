#!/bin/bash

xhost +
nvidia-docker run -it --rm \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--device=/dev/video1:/dev/video0 \
	ros-usbcam:melodic \
	/bin/bash /home/live.sh
