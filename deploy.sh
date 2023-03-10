#!/usr/bin/env bash 
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop CA1
cd CA1/
npm install
pm2 start ./bin/www --name CA1 --env=production
