# ros-usbcam

# quickstart

```ruby:terminal
git clone https://github.com/1222-takeshi/ros-usbcam.git 
cd ros-usbcam 
docker build -t ros-usbcam:melodic . 
./run.sh
```

# If it doesn't work

`ls /dev/video*`

If the camera you are using is not /dev/video1 \

you should change run.sh \
for example 

before

```ruby:before
#!/bin/bash

xhost +
nvidia-docker run -it --rm \
        --env="DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --device=/dev/video1:/dev/video0 \
        ros-usbcam:melodic \
        /bin/bash /home/live.sh
```

after

```ruby:after
#!/bin/bash

xhost +
nvidia-docker run -it --rm \
        --env="DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --device=/dev/video2:/dev/video0 \
        ros-usbcam:melodic \
        /bin/bash /home/live.sh
```
