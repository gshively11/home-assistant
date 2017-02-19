#!/bin/bash

# Run from root of project

docker run -d \
  --device=/dev/ttyACM0:/dev/zwaveusbstick:rwm \
  -v /home/pi/home-assistant/my-config:/config \
  -v /etc/localtime:/etc/localtime:ro \
  --net=host my-home-assistant \
  --name="my-home-assistant"
