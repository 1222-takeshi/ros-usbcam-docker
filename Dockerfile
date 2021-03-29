########## Pull ##########
FROM ros:melodic
########## usb_cam ##########
RUN apt-get update && apt-get install -y \
		ros-melodic-usb-cam  \
		ros-melodic-image-view && \
	echo "#!/bin/bash  \n roslaunch opt/ros/melodic/share/usb_cam/launch/usb_cam-test.launch "  >> /home/live.sh && \
	chmod +x /home/live.sh
########## nvidia-docker1 hooks ##########
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
