#!/usr/bin/env bash

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp /vagrant/etc/systemd/system/docker.service.d/override.conf /etc/systemd/system/docker.service.d/override.conf

sudo systemctl daemon-reload

sudo systemctl --no-pager status docker
sudo systemctl stop docker
sudo systemctl start docker
