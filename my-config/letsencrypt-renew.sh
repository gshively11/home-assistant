#!/bin/bash

# This should go in a weekly cron

# Renew cert
letsencrypt renew

# Restart nginx to grab new certs
systemctl restart nginx
