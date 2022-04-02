#!/bin/bash

configname=default

echo "cat ./nginxconfig > /etc/nginx/sites-enabled/$configname"
cat ./nginxconfig > /etc/nginx/sites-enabled/$configname

echo "sudo systemctl restart nginx"
sudo systemctl restart nginx




