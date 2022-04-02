#!/bin/bash

configname=default

cp nginxconfig $configname

cp ./$configname /etc/nginx/sites-enabled/$configname
sudo systemctl restart nginx
