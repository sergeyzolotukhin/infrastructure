#### Oracle Database - Cold Backup
Now copy database files such as to a backup device
- data files
- control files
- redo log files

select name from v$controlfile;
select name from v$datafile;
select member from v$logfile;

select name from v$tempfile;
select value  from v$parameter where name='spfile';

https://oracledbwr.com/database-cold-backup-script/
https://forums.oracle.com/ords/apexds/post/steps-for-cold-backup-4899
https://learnomate.org/database-cloning-using-cold-backup/
https://oraclelearning.wordpress.com/2012/07/18/oracle-database-cold-backup-script/
https://support.dbagenesis.com/oracle-database/oracle-database-cold-backup-recovery

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

#### PGDATA
https://hub.docker.com/_/postgres#pgdata
https://github.com/docker-library/postgres/blob/master/17/trixie/Dockerfile
https://forums.docker.com/t/data-directory-var-lib-postgresql-data-pgdata-has-wrong-ownership/17963/24
