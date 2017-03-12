#!/bin/bash

# Run this on the raspberry pi to clean files added to the config directory by HA.
# This lets you start HA with a clean slate.
#
# WARNING: You'll lose all historical HA data.

rm -f ./my-config/home-assistant.log
rm -f ./my-config/notification_log
rm -f ./my-config/pyozw.sqlite
rm -f ./my-config/home-assistant_v2.db
rm -f ./my-config/OZW_Log.txt
