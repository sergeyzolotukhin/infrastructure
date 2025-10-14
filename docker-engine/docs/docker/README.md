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

#### docker compose commands

docker compose run -d db
https://stackoverflow.com/questions/33715499/what-is-the-difference-between-docker-compose-up-and-docker-compose-start

https://dev.to/1cadumagalhaes/how-to-setup-a-postgresql-database-with-docker-compose-1j57

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

https://medium.com/@shreehari9481/boost-postgresql-export-and-import-with-parallelism-30fb20e665dd

#### Executing Multiple Commands in Docker Compose
https://www.baeldung.com/ops/docker-compose-multiple-commands

#### Interactive shell using docker-compose
https://stackoverflow.com/questions/36249744/interactive-shell-using-docker-compose
https://www.baeldung.com/ops/docker-compose-interactive-shell#interactive-shell-in-docker
https://betterstack.com/community/questions/question-interactive-shell-using-docker-compose/

#### How to add an image to docker from local machine?

https://stackoverflow.com/questions/23935141/how-to-copy-docker-images-from-one-host-to-another-without-using-a-repository
https://blog.devops.dev/docker-compose-export-save-images-and-move-to-another-machine-66ea8df01dea

docker save -o <path for generated tar file> <image name>
docker load -i <path to image tar file>

docker save -o oracle-database-21.3.0-xe.tar container-registry.oracle.com/database/express:21.3.0-xe
docker save container-registry.oracle.com/database/express:21.3.0-xe | gzip > oracle-database-21.3.0-xe.tar.gz
docker save mcr.microsoft.com/mssql/server:2025-latest | gzip > mssql-server-2025-latest.tar.gz

docker load -i /vagrant/.images/oracle-database-21.3.0-xe.tar.gz

docker images

#### Docker Compose Config
https://docs.docker.com/reference/compose-file/services/#configs
https://stackoverflow.com/questions/72768759/docker-volumes-vs-configs/72773298
https://docs.docker.com/engine/swarm/configs/

Configs were added for Swarm Mode.

root@ubuntu-jammy:/vagrant# docker --version
Docker version 28.4.0, build d8eb465

#### Docker CLI
https://download.docker.com/win/static/stable/x86_64/
https://www.sysdig.com/learn-cloud-native/what-is-docker-cli

#### Docker CLI Client Configuration (config.json):

Location: The config.json file is typically located in your user's home directory, under ~/.docker/config.json.
Contents: This file can contain settings such as:
    auths: Stores authentication information for various Docker registries (e.g., Docker Hub, private registries). This information is often managed by a credential helper.
    HttpHeaders: Allows you to add custom HTTP headers to requests made by the CLI.
    proxies: To configure proxy settings for the Docker client.

https://docs.docker.com/reference/cli/docker/#docker-cli-configuration-file-configjson-properties
