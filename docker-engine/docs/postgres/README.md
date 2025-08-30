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


