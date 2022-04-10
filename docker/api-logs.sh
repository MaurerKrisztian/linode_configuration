#! /bin/bash
NAME="taskmanager-api"
CONTAINERID=$(docker ps -aqf "name=$NAME")
echo "docker logs $CONTAINERID"
docker logs $CONTAINERID
