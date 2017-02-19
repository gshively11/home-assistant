#!/bin/bash

# Run from root of project

docker run -d \
  --name="my-home-assistant" \
  -v /home/pi/home-assistant/my-config:/config \
  -v /etc/localtime:/etc/localtime:ro \
  --net=host my-home-assistant \
  --device=/dev/ttyACM0:/zwaveusbstick:rwm
