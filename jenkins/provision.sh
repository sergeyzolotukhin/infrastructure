#!/bin/bash

VAGRANT_HOST_DIR=/mnt/host_machine

echo "Installing Jenkins and Java"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1
sudo apt-get -y install jenkins > /dev/null 2>&1

echo "Success"