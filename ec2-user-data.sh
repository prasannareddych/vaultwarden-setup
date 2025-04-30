#!/bin/bash

apt update && apt upgrade -y
apt install nginx -y
curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sh /tmp/get-docker.sh
usermod -aG docker ubuntu

