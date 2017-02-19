#!/bin/bash

echo "Running nginx $(nginx --version)"
echo "Running python $(python --version)"
echo "Working directory /usr/src/app"

cd /usr/src/app
nginx
python -m homeassistant --config /config

exec $@