#### How to create script with auto-complete?

https://askubuntu.com/questions/68175/how-to-create-script-with-auto-complete

https://plugins.jetbrains.com/plugin/1800-database-navigator

#### Oracle Database 11g Release 2 (11.2.0.2) Express Edition (XE) - install docker
https://github.com/oracle/docker-images/tree/main/OracleDatabase/SingleInstance

#### portainer
https://192.168.56.2:9443/

admin
admin1234512345

#### gitea
http://192.168.56.2:8080/

root
admin1234

docker exec --user 1000 gitea gitea admin user create --admin --username root --password admin1234 --email root@example.com

#### Run from Windows
docker -H tcp://192.168.56.2:2375 build .
docker build .

https://docs.docker.com/reference/cli/docker/context/create/
https://docs.docker.com/engine/manage-resources/contexts/
https://medium.com/@rajaravivarman/extending-docker-using-docker-context-to-manage-remote-containers-66b8abc5d245

docker context ls
docker image ls

// not work
docker context update --docker "host=tcp://192.168.56.2:2375" default

#### We can add this parameter in IDEA
DOCKER_HOST=tcp://192.168.56.2:2375