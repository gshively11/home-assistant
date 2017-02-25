#!/bin/bash

# Run from root of project

# we need nginx logs on the host so we can run fail2ban
sudo mkdir -p /var/log/my-home-assistant/nginx

# clear out any logs that existed before the run
# (we only support running 1 home assistant at a time)
sudo rm -f /var/log/my-home-assistant/nginx/*.log

# touch the error.log file so fail2ban can start
sudo touch /var/log/my-home-assistant/nginx/error.log

docker run -d \
  --device=/dev/ttyACM0:/dev/zwaveusbstick:rwm \
  -v /home/pi/home-assistant/my-config:/config \
  -v /etc/localtime:/etc/localtime:ro \
  -v /var/log/my-home-assistant/nginx:/var/log/nginx \
  -v /var/log:/var/log/my-host:ro \
  --net=host \
  --name="my-home-assistant" \
  -p 127.0.0.1:80:80 \
  -p 127.0.0.1:443:443 \
  my-home-assistant
