#!/usr/bin/env bash

# Enable login as root / root
cp /vagrant/provision/etc/ssh/sshd_config.d/60-cloudimg-settings.conf /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
echo -e "root\nroot" | passwd root
systemctl restart sshd.service

# Install SSH key
cat /vagrant/provision/root/ssh/id_ed25519.pub >> /root/.ssh/authorized_keys

# Disable message of days
# cp /vagrant/provision/etc/pam.d/sshd /etc/pam.d/sshd
