#### ssh
https://www.digitalocean.com/community/tutorials/how-to-tune-your-ssh-daemon-configuration-on-a-linux-vps

#### How to setup SSH connection from a Windows machine to a VM without Putty?
https://stackoverflow.com/questions/72370317/supply-password-to-ssh-on-windows-without-putty

ssh-keygen
c:\Users\<username>\.ssh
cat /vagrant/provision/ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

#### ~/.bashrc
https://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment

#### How to remove a host from known_hosts
ssh-keygen -R 192.168.56.2

#### How to get the Host Key of a remote server ?
https://serverfault.com/questions/132970/can-i-automatically-add-a-new-host-to-known-hosts
ssh-keyscan 192.168.56.2 2>/dev/null

https://developer.hashicorp.com/vagrant/docs/vagrantfile/ssh_settings

#### SSH config file location on Windows
https://superuser.com/questions/1537763/location-of-openssh-configuration-file-on-windows
