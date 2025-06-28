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

https://www.gunfus.com/gitea_missing_admin/

#### How to Run a Script After a Docker Compose Container Starts
https://www.baeldung.com/ops/docker-compose-run-script-on-start
https://docs.docker.com/compose/how-tos/lifecycle/

#### Configuration as a Code
https://stackoverflow.com/questions/71482461/setup-gitea-initial-configuration
https://docs.gitea.com/administration/command-line