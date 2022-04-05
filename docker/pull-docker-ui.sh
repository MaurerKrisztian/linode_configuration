#! /bin/bash

image_repo=nodeimageprocessing/linode-docker-ui:main
image_name=taskmanager-ui
port=8080
internalport=80

echo "Repository: $image_repo image_name: $image_name, Port: $port"

echo $port

docker stop $image_name
docker rm $image_name

docker rmi $image_repo
docker pull $image_repo

echo "docker run -t -d -p  $port:$internalport --name $image_name $image_repo"
docker run -t -d -p  $port:$internalport --name $image_name $image_repo
