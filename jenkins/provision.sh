#!/bin/bash

VAGRANT_HOST_DIR=/mnt/host_machine

echo "Adding Jenkins repositories"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "Updating the package lists"
sudo apt-get update > /dev/null 2>&1

echo "Installing Midnight Commander"
sudo apt-get -y install mc > /dev/null 2>&1

echo "Installing Java"
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Installing Jenkins"
sudo apt-get -y install jenkins > /dev/null 2>&1

echo "Stopping Jenkins"
sudo systemctl stop jenkins

echo "Disabling Jenkins Setup Wizard"
sudo cp -r /vagrant/lib/systemd/system/* /lib/systemd/system
sudo systemctl daemon-reload

echo "Remove Credentials Jenkins"
sudo cp -r /vagrant/var/lib/jenkins/* /var/lib/jenkins
sudo chown -R jenkins:jenkins /var/lib/jenkins/init.groovy.d

echo "Installing Jenkins plugins"
sudo cp -r /vagrant/var/lib/jenkins/plugins/* /var/lib/jenkins/plugins
sudo chown -R jenkins:jenkins /var/lib/jenkins/plugins

echo "Installing Configuration as Code"
sudo cp -r /vagrant/var/lib/jenkins/jenkins.yaml /var/lib/jenkins/jenkins.yaml
sudo chown jenkins:jenkins /var/lib/jenkins/jenkins.yaml

echo "Starting Jenkins"
sudo systemctl start jenkins

echo "Success"