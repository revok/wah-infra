#!/bin/bash
docker stop $(docker ps -a -q | grep -v wah_) # stop containers
docker rm $(docker ps -a -q | grep -v wah_) # remove containers

read -p "Nuke images? (y/n) " -n 1 -r
echo    # move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'wah_') # remove images
fi
