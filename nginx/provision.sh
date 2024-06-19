#!/bin/bash

echo "Update Ubuntu Repositories"
sudo apt-get update > /dev/null 2>&1
sudo apt-get -y install mc > /dev/null 2>&1

echo "Install Nginx"
sudo apt -y install nginx

echo "Success"