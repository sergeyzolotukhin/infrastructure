https://docs.docker.com/engine/swarm/configs/

https://github.com/bcochofel/vagrant-docker-swarm-cluster/tree/master

https://www.baeldung.com/linux/ssh-agent-forwarding-sudo-another-user

---
Other commands, such as vagrant up, operate on every machine by default. 
So if you ran vagrant up, Vagrant would bring up both the web and DB machine. 
You could also optionally be specific and say vagrant up web or vagrant up db.

### Creating a Base Box
https://developer.hashicorp.com/vagrant/docs/boxes/base