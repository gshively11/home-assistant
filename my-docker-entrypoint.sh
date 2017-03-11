#!/bin/bash

echo "Running nginx $(nginx --version)"
echo "Running python $(python --version)"
echo "Working directory /usr/src/app"

cd /usr/src/app
# make sure nginx is stopped so letsencrypt can bind to 433
sudo service nginx stop
# make sure letsencrypt is setup
./my-config/letsencrypt.sh
# make sure nginx is started after letsencrypt is done
sudo service nginx start

if [ "$1" = 'hass' ]; then
  shift
  # start home assistant in the foreground
  python -m homeassistant --config /config
elif [ "$1" = 'zwave' ]; then
  shift
  # must run ozwcp from within its directory
  cd /usr/src/app/virtualization/Docker/build/open-zwave-control-panel
  # link configuration files from home assistant config directory
  ln -s /config/zwcfg_*.xml
  ln -s /config/zwscene.xml
  # start open zwave control panel in the foreground
  ./ozwcp -d -p 8123
fi

exec "$@"
