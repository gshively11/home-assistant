#!/bin/bash

echo "Running nginx $(nginx --version)"
echo "Running python $(python --version)"
echo "Working directory /usr/src/app"

cd /usr/src/app
# start nginx
nginx
# make sure letsencrypt is setup
./my-scripts/letsencrypt.sh
# start home assistant
python -m homeassistant --config /config

exec $@