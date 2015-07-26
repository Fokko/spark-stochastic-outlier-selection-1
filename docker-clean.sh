#!/bin/bash

# Kill running instances
docker-compose kill

# Delete all containers
docker rm $(docker ps -a -q)

# Delete all images
docker rmi -f $(docker images -q)
