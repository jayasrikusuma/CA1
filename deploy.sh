#!/usr/bin/env bash 
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop CA1
cd CA1/
npm install
# Write the private key to a file
echo $PRIVATE_KEY >privatekey.pem
# Write the server key to file
echo $SERVER > server.crt
pm2 start ./bin/www --name CA1
