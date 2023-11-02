#!/bin/bash

# Check if a Docker container is using port 8080
CONTAINER_ID_8080=$(sudo docker ps -qf "expose=8080")

if [ -z "$CONTAINER_ID_8080" ]; then
  echo "No Docker container is using port 8080."
else
  # Stop and remove the container using port 8080
  echo "Stopping and removing the Docker container $CONTAINER_ID_8080 using port 8080."
  sudo docker stop $CONTAINER_ID_8080
  sudo docker rm $CONTAINER_ID_8080
fi

# Check if a Docker container is using port 8081
CONTAINER_ID_8081=$(sudo docker ps -qf "expose=8081")

if [ -z "$CONTAINER_ID_8081" ]; then
  echo "No Docker container is using port 8081."
else
  # Stop and remove the container using port 8081
  echo "Stopping and removing the Docker container $CONTAINER_ID_8081 using port 8081."
  sudo docker stop $CONTAINER_ID_8081
  sudo docker rm $CONTAINER_ID_8081
fi
