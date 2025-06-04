https://docs.docker.com/engine/swarm/configs/

https://github.com/bcochofel/vagrant-docker-swarm-cluster/tree/master

https://www.baeldung.com/linux/ssh-agent-forwarding-sudo-another-user

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-20-04
https://stackoverflow.com/questions/56436906/how-to-cleanly-edit-sshd-config-for-basic-security-options-in-an-ansible-playboo

https://betterstack.com/community/guides/linux/ansible-lineinfile/

---
Other commands, such as vagrant up, operate on every machine by default. 
So if you ran vagrant up, Vagrant would bring up both the web and DB machine. 
You could also optionally be specific and say vagrant up web or vagrant up db.

### Creating a Base Box
https://developer.hashicorp.com/vagrant/docs/boxes/base

#### Custom Vagrant command with a plugin
https://stackoverflow.com/questions/28283099/custom-vagrant-command-with-a-plugin
https://developer.hashicorp.com/vagrant/docs/plugins/commands

#### Run script on host machine during vagrant up
https://superuser.com/questions/701735/run-script-on-host-machine-during-vagrant-up