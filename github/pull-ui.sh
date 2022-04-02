#!/bin/bash

github_api=https://github.com/MaurerKrisztian/TaskManager.git
echo $github_api
UI_DIR="/builded/TaskManager"
UI_PORT=8080

if [ -d "$UI_DIR" ]; then
  # Take action if $DIR exists. #
  echo "clone ui..."
  git clone $github_api
fi

echo "pull ui"

(cd .$UI_DIR && git pull)

echo "restrt ui"

if [ -z $(lsof -t -i:8080) ]
then
      echo "prot was closed 8080"
else
      echo "\$var is NOT empty"
      kill -9 $(lsof -t -i:8080)
fi

(cd .$UI_DIR && http-server . -p 8080 &)
