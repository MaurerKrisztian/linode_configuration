#! /bin/bash

image_repo=nodeimageprocessing/linode-docker-ui:main
image_name=taskmanager-ui
port=8080

echo "repo: $image_repo imaage_name: $image_name, prot: $port"

echo $port

docker stop $image_name
docker rm $image_name

docker rmi $image_repo
docker pull $image_repo

echo "docker run -t -d -p  $port:4200 --name $image_name $image_repo"
docker run -t -d -p  $port:4200 --name $image_name $image_repo
