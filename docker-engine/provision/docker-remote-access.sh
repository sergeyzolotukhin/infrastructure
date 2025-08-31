#!/usr/bin/env bash

#echo "time : $(date +"%T")"

echo 'Stop Docker'
sudo systemctl stop docker.socket
sudo systemctl stop docker

echo 'Enable remote access'
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp /vagrant/provision/etc/systemd/system/docker.service.d/override.conf /etc/systemd/system/docker.service.d/override.conf

echo 'Start Docker'
sudo systemctl daemon-reload
sudo systemctl start docker
sudo systemctl start docker.socket

#echo "time : $(date +"%T")"

#echo 'Status Docker'
#sudo systemctl --no-pager status docker
