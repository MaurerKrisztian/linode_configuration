#!/bin/bash

github_api=https://github.com/MaurerKrisztian/TaskManager-api.git
echo $github_api
API_DIR="./TaskManager-api"
API_PORT=3000

if [ -d "$API_DIR" ]; then
  # Take action if $DIR exists. #
  echo "clone api..."
  git clone $github_api
fi

echo "pull api"

(cd $API_DIR && git pull)

echo "restrt api"

if [ -z $(lsof -t -i:3000) ]
then
      echo "prot was closed 3000"
else
      echo "\$var is NOT empty"
      kill -9 $(lsof -t -i:3000)
fi
