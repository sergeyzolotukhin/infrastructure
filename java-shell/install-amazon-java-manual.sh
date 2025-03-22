#!/bin/bash

echo 'Update index of packages ========================================================================================'
sudo apt-get update

echo 'Install tools ==================================================================================================='
sudo apt-get -y install mc

echo 'Install Java ===================================================================================================='
sudo apt-get install java-common
sudo dpkg --install /vagrant/java-21-amazon-corretto-jdk_21.0.6.7-1_amd64.deb

echo 'Verify Java JDK Installation====================================================================================='
sudo java -version
