#### ssh
https://www.digitalocean.com/community/tutorials/how-to-tune-your-ssh-daemon-configuration-on-a-linux-vps

#### How to setup SSH connection from a Windows machine to a VM without Putty?
https://stackoverflow.com/questions/72370317/supply-password-to-ssh-on-windows-without-putty

ssh-keygen
c:\Users\<username>\.ssh
cat /vagrant/provision/ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

```shell
ssh root@192.168.56.2
```

ssh -p 2222 root@localhost


#### ~/.bashrc
https://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment