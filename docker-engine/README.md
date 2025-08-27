####
http://192.168.56.2:8080/

TODO:
    * automate install vagrant-docker-compose plugin
    * automate accept host certificate
    * enable root login without password
    * print How to login in IDEA console
    
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

C:/Users/szolotukhin/.vagrant.d/cache/ubuntu/jammy64

#### https://github.com/fgrehm/vagrant-cachier
vagrant plugin install vagrant-cachier
vagrant plugin uninstall vagrant-cachier

https://www.apalrd.net/posts/2024/cluster_debcache/
https://www.cyberciti.biz/faq/can-i-delete-var-cache-apt-archives-for-ubuntu-debian-linux/

/etc/apt/apt.conf
/etc/apt/apt.conf.d/no-cache
/var/cache/apt/archives


#### Use cloud-init with VirtualBox?
https://superuser.com/questions/827977/use-cloud-init-with-virtualbox

mount /dev/sdb /mnt

#### ssh 
https://www.digitalocean.com/community/tutorials/how-to-tune-your-ssh-daemon-configuration-on-a-linux-vps

#### Creating and Sharing Vagrant Boxes
vagrant package --output mybox.box

#### linked clones
https://developer.hashicorp.com/vagrant/docs/providers/virtualbox/configuration#linked-clones
https://medium.com/oracledevs/two-birds-with-one-home-cloned-vagrant-multi-machines-2ee5ba75fad8

#### vagrant up --debug
https://developer.hashicorp.com/vagrant/docs/other/debugging
vagrant up --debug 2>&1 | Tee-Object -FilePath ".\vagrant.log"
vagrant up --debug-timestamp 2>&1 | Tee-Object -FilePath ".\vagrant-timestamp.log"
vagrant resume --debug-timestamp 2>&1 | Tee-Object -FilePath ".\vagrant-resume-timestamp.log"

00:24:59

2025-08-22 00:25:06
==> docker-engine-1: Booting VM...
2025-08-22 00:25:45
==> docker-engine-1: Machine booted and ready!

00:25:49
2025-08-22 00:24:59 - 2025-08-22 00:25:49 = 40 seconds

#### resume

vagrant up
vagrant suspend
vagrant resume

2025-08-22 01:08:37 - 2025-08-22 01:09:05 = 28 seconds

https://uk.soringpcrepair.com/what-is-quick-boot-in-bios/
https://www.baeldung.com/linux/boot-faster
https://medium.com/@therealcomtom/reducing-linux-booting-time-b5d0a061e05a

#### docker compose commands

docker compose up -d
docker compose down

- ??? 
docker compose run -d db
https://stackoverflow.com/questions/33715499/what-is-the-difference-between-docker-compose-up-and-docker-compose-start

https://dev.to/1cadumagalhaes/how-to-setup-a-postgresql-database-with-docker-compose-1j57

#### PGDATA
https://hub.docker.com/_/postgres#pgdata
https://github.com/docker-library/postgres/blob/master/17/trixie/Dockerfile
https://forums.docker.com/t/data-directory-var-lib-postgresql-data-pgdata-has-wrong-ownership/17963/24

#### docker compose profiles
https://medium.com/@alexkrenitsky/how-to-use-multiple-docker-compose-files-plus-profiles-69134c6a8d12
https://docs.docker.com/compose/how-tos/multiple-compose-files/
https://docs.docker.com/compose/how-tos/multiple-compose-files/include/

#### Set hostname in docker compose
https://stackoverflow.com/questions/29924843/how-do-i-set-hostname-in-docker-compose

If you do not specify a host port (e.g., - "80"), Docker will automatically assign an available ephemeral port on the host, 
which you can find using 

    docker compose port <service_name> <container_port>.

#### Set, use, and manage variables in a Compose file with interpolation
https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/
https://docs.docker.com/compose/how-tos/environment-variables/envvars/#compose_profiles
https://oriolrius.cat/2024/08/29/how-to-manage-environment-variables-for-production-and-development-with-docker-compose/
https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/#local-env-file-versus-ltproject-directorygt-env-file
https://stackoverflow.com/questions/58047984/why-do-i-need-to-declare-env-file-explicitely-in-docker-compose-yml

#### pull_policy
https://docs.docker.com/reference/compose-file/services/#pull_policy

#### Run Oracle Database in a Docker container
https://blogs.oracle.com/oraclemagazine/run-oracle-database-19c-in-a-docker-container
https://github.com/oracle/docker-images/tree/main/OracleDatabase/SingleInstance
docker login container-registry.oracle.com
Username: <email address> 
Password: <Auth Token from https://container-registry.oracle.com>

#### Oracle Data sources
jdbc:oracle:thin:@192.168.56.2:1521:XE
user:system
password:Oracle_123

#### load image Oracle Database
docker save container-registry.oracle.com/database/express:21.3.0-xe | gzip > oracle-database-21.3.0-xe.tar.gz
docker load -i /vagrant/.images/oracle-database-21.3.0-xe.tar.gz

#### Hot restore a dump inside a container

docker compose up -d
docker compose down

docker ps
docker exec -it postgres bash

createdb -U postgres -T template0 DEMO
pg_restore -U postgres -w -d DEMO -1 /mnt/.dumps/demo_medium.tar
time pg_restore -U postgres -w -d DEMO -1 /mnt/.dumps/demo_medium.tar
dropdb -U postgres DEMO

docker exec postgres createdb -U postgres -T template0 DEMO
time docker exec postgres pg_restore -U postgres -w -d DEMO -1 /mnt/.dumps/demo_medium.tar
docker exec postgres dropdb -U postgres DEMO

real    0m26.978s

docker cp my_database_backup.tar my_postgres_container:/tmp/my_database_backup.tar
docker exec <container_name> pg_restore -U <username> -d <database_name> <path_to_dump_file_in_container>

#### Hot backup a dump inside a container

time docker exec postgres bash -c "pg_dump -U postgres -F t DEMO > /mnt/.dumps/DEMO_01.tar"
real    0m3.112s

#### To export a Docker volume to a tar file

docker run --rm -v vagrant_postgres-data:/source -v /vagrant/.dumps:/target alpine tar -czf /target/FS_BACKUP_DEMO_02.tar.gz -C /source .
took: real    0m 35.36s

docker run --rm -it --volumes-from postgres -v /vagrant/.dumps:/target alpine tar -czf /target/FS_BACKUP_DEMO_02.tar.gz -C /var/lib/postgresql/data .

https://www.gnu.org/software/tar/manual/html_section/All-Options.html#g_t_002d_002ddirectory
--create -c
--gzip -z
--verbose -v
--file -f
--directory -C When this option is specified, tar will change its current directory to dir 
    before performing any operations.

time tar -czf /target/FS_BACKUP_DEMO_02.tar.gz -C /var/lib/postgresql/data .

#### To export a Docker volume to an another volume

docker volume create --name vagrant_postgres-data_01 
docker volume create --name vagrant_postgres-data_02 
docker volume create --name vagrant_postgres-data_03 

docker container run --rm -it -v vagrant_postgres-data:/from -v vagrant_postgres-data_02:/to alpine sh -c "cd /from ; cp -a . /to"
docker container run --rm -v vagrant_postgres-data:/from -v vagrant_postgres-data_02:/to alpine sh -c "cd /from ; time cp -a . /to"
docker container run --rm -v vagrant_postgres-data:/from -v vagrant_postgres-data_03:/to alpine sh -c "cd /from ; time cp -a . /to"
took: real    0m 17.40s
took: real    0m 13.72s

https://www.man7.org/linux/man-pages/man1/cp.1.html
-a
    never follow symbolic links in SOURCE
    copy directories recursively
    preserve the specified attributes
    preserve links
-v, --verbose 
    explain what is being done

cp -a . /to

took: real    0m 11.36s

https://medium.com/@shreehari9481/boost-postgresql-export-and-import-with-parallelism-30fb20e665dd

#### Executing Multiple Commands in Docker Compose
https://www.baeldung.com/ops/docker-compose-multiple-commands

#### Interactive shell using docker-compose
https://stackoverflow.com/questions/36249744/interactive-shell-using-docker-compose
https://www.baeldung.com/ops/docker-compose-interactive-shell#interactive-shell-in-docker
https://betterstack.com/community/questions/question-interactive-shell-using-docker-compose/

#### Bash Script - Command Substitution
https://gist.github.com/waylan/4080362
