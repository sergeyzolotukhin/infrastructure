#!/bin/bash

echo "Updating the package lists"
sudo apt-get update > /dev/null 2>&1

echo "Installing Midnight Commander"
sudo apt-get -y install mc > /dev/null 2>&1

echo "Installing Java"
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Downloading IntelliJ IDEA"
sudo mkdir -p /vagrant/.curl-cache
sudo curl --continue-at - --silent --output /vagrant/.curl-cache/ideaIU-2025.1.4.1.tar.gz -L "https://download.jetbrains.com/idea/ideaIU-2025.1.4.1.tar.gz"

# pwd
# /home/vagrant