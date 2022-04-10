#! /bin/bash
NAME="taskmanager-ui"
CONTAINERID=$(docker ps -aqf "name=$NAME")
echo "docker logs $CONTAINERID"
docker logs $CONTAINERID
