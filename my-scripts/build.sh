#!/bin/bash

# Run from root of project

if ! [ -z "$(git status --porcelain)" ]; then
  echo "Git repo is dirty, cannot build."
  exit 1
fi

docker build -f My-Dockerfile -t "my-home-assistant:$(git rev-parse --short HEAD)"
