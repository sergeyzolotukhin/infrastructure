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