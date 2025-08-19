####
http://192.168.56.2:8080/

TODO:
    * automate install vagrant-docker-compose plugin
    * automate accept host certificate
    * enable root login without password
    * print Hot to login in IDEA console
    
https://github.com/leighmcculloch/vagrant-docker-compose
https://docs.gitea.com/installation/install-with-docker

#### Install Portainer CE with Docker on Linux
https://docs.portainer.io/start/install-ce/server/docker/linux

docker run --name gitea -p 8080:3000 -e GITEA__security__INSTALL_LOCK=true -d gitea/gitea:1.16.5
https://forum.gitea.com/t/skipping-the-first-configuration-page-in-a-docker-container/4930
docker exec --user 1000 gitea gitea admin user create --admin --username root --password admin1234 --email root@example.com
https://forum.gitea.com/t/unattended-gitea-installation-from-the-cli/3373

#### override docker.service
https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units#editing-unit-files

tcp://192.168.56.2:2375

systemctl edit docker.service
systemctl --no-pager status docker
systemctl restart docker
systemctl stop docker

#### docker socket activation

Docker socket activation refers to the use of systemd's socket activation feature to manage the Docker daemon. 
Instead of the Docker daemon (dockerd) constantly running and listening for connections, 
systemd listens on the Docker socket (/var/run/docker.sock). 
When a connection is made to this socket (e.g., by a Docker client command), 
systemd then starts the Docker daemon and hands over the connection, allowing the daemon to process the request.

https://medium.com/@kiankasad/start-docker-containers-on-demand-with-systemd-socket-activation-548f3b8d2514
https://medium.com/@123rpv/optimizing-docker-with-systemd-a-comprehensive-approach-6a2b90c5d900
https://erlangen-sheppy.medium.com/on-demand-activation-of-arbitrary-applications-3b577eb116b6
https://0pointer.de/blog/projects/socket-activation.html



