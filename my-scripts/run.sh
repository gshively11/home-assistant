#!/bin/bash

# Run from root of project

docker run -d --name="my-home-assistant" -v ./my-config:/config -v /etc/localtime:/etc/localtime:ro --net=host my-home-assistant