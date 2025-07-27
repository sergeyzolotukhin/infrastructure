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

echo "Installing IntelliJ IDEA"
sudo mkdir -p /opt/idea
# https://www.cyberciti.biz/faq/linux-unix-shell-check-if-directory-empty/
if [ "$(ls -A /opt/idea)" ]; then
  echo "The IntelliJ IDEA is already exists"
else
  sudo tar xzf /vagrant/.curl-cache/ideaIU-2025.1.4.1.tar.gz -C /opt/idea --strip 1
  echo "The IntelliJ IDEA is installed"
fi

echo "Cloning GIT"
sudo mkdir -p /var/learn-java-gradle
sudo git clone https://github.com/sergeyzolotukhin/learn-java-gradle.git /var/learn-java-gradle

echo "Successfully provisioned"
# pwd
# /home/vagrant