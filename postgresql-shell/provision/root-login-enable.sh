#!/usr/bin/env bash

# Enable login as root / root
cp /vagrant/provision/etc/ssh/sshd_config.d/60-cloudimg-settings.conf /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
echo -e "root\nroot" | passwd root
systemctl restart sshd.service


