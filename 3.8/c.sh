#!/bin/bash

# Downloads a repository from GitHub, builds a Dockerfile located in the root 
# and then publishes it into Docker Hub.

# Run as root (e.g. sudo bash c.sh)

echo Github repository URL: 
read url
echo Dockerhub username: 
read username
repoName=$(echo $url | grep -Eio "[^\/]*$") # Takes all text after the last slash (/) of url
suffix="/archive/master.zip"
echo Downloading repo...
wget $url$suffix
unzip master.zip
master="-master"
cd $repoName$master
echo Building Docker image...
docker build . -t $username/$repoName
echo Logging in to Docker hub...
docker login
echo Pushing to Docker hub...
docker push $username/$repoName