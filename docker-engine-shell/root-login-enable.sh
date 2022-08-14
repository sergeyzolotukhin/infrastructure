#!/usr/bin/env bash

echo '================================================================================================================'
echo 'Enable root login'
echo '================================================================================================================'

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo -e "root\nroot" | passwd root
systemctl restart sshd.service

