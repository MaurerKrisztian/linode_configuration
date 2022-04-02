#!/bin/bash

configname=default

cp nginxconfig $configname

cp ./nginxconfig /etc/nginx/sites-enabled/$configname
sudo systemctl restart nginx
