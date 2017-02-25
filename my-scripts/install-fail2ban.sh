#!/bin/bash

# we need nginx logs on the host so we can run fail2ban
# they are created by the docker host, but we'll touch them
# here just so fail2ban can start
sudo mkdir -p /var/log/my-home-assistant/nginx

# clear out any logs that existed before the run
# (we only support running 1 home assistant at a time)
sudo rm -f /var/log/my-home-assistant/nginx/*.log

# touch the error.log file so fail2ban can start
sudo touch /var/log/my-home-assistant/nginx/error.log

sudo apt-get update
sudo apt-get install -y -q --no-install-recommends iptables fail2ban
sudo cp ./my-host-config/jail.conf /etc/fail2ban/jail.conf
sudo cp ./my-host-config/nginx-auth.conf /etc/fail2ban/filter.d/nginx-auth.conf
sudo service fail2ban restart

