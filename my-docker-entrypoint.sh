#!/bin/bash

echo "Running nginx $(nginx --version)"
echo "Running python $(python --version)"
echo "Working directory /usr/src/app"

cd /usr/src/app
# start nginx in the background
sudo service nginx start
# start fail2ban
sudo service fail2ban start
# make sure letsencrypt is setup
./my-scripts/letsencrypt.sh
# start home assistant in the foreground
python -m homeassistant --config /config

exec $@
