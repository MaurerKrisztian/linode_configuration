#!/bin/bash

github_api=https://github.com/MaurerKrisztian/TaskManager-api.git
echo $github_api
API_DIR="./TaskManager-api"
API_PORT=3000

if [ ! -d "$API_DIR" ]; then
  # Take action if $DIR exists. #
  echo "clone api..."
  git clone $github_api
fi

echo "Pull api"

(cd $API_DIR && git pull)
(cd $API_DIR && npm i)

echo "Restart api (in port: $API_PORT)"

if [ -z $(lsof -t -i:$API_PORT) ]
then
      echo "Port was closed $API_PORT"
else
      echo "Kill PORT $API_PORT"
      kill -9 $(lsof -t -i:$API_PORT)
fi

(cd $API_DIR && npm run start &)
