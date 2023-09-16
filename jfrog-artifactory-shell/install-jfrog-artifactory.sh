#!/bin/bash

echo 'Update index of packages'
sudo apt-get update



#echo 'Copy installer archive'
#sudo mkdir /opt/jfrog-artifactory
#sudo cp /vagrant/jfrog-artifactory-oss-7.39.4-linux.tar.gz /opt/jfrog-artifactory
#cd /opt/jfrog-artifactory || return

#echo 'Set the JFrog Home'
#export JFROG_HOME=/opt/jfrog-artifactory

#echo 'Extract installer archive'
#sudo tar -xf jfrog-artifactory-oss-7.39.4-linux.tar.gz
#sudo mv artifactory-oss-7.39.4 artifactory

#echo 'Install service JFrog Artifactory'
#sudo /opt/jfrog-artifactory/artifactory/app/bin/installService.sh

#echo 'Restart JFrog Artifactory'
#sudo systemctl start artifactory.service
#sudo systemctl enable artifactory.service

echo 'Download gpg key'
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | sudo apt-key add -;

echo 'Add deb repository'
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list;

echo 'Update list of packages'
sudo apt-get update

echo 'Install artifactory'
sudo apt-get -y install jfrog-artifactory-oss

#echo 'Install tools'
#sudo apt-get -y install mc
