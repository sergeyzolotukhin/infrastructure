#!/usr/bin/env bash

cp /vagrant/etc/ssh/ssh_config /etc/ssh/ssh_config
cp /vagrant/etc/ssh/sshd_config /etc/ssh/sshd_config
cp /vagrant/etc/ssh/sshd_config.d/60-cloudimg-settings.conf /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
echo -e "root\nroot" | passwd root
systemctl restart sshd.service
