#!/bin/bash

echo 'Update index of packages ========================================================================================'
sudo apt-get update

echo 'Install tools ==================================================================================================='
sudo apt-get -y install mc

echo 'Install Java ===================================================================================================='
sudo apt-get install java-common
sudo dpkg --install /vagrant/java-1.8.0-amazon-corretto-jdk_8.342.07-4_amd64.deb

echo 'Verify Java JDK Installation====================================================================================='
sudo java -version
