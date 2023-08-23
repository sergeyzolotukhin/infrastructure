# infrastructure

# Oracle VM

    https://www.virtualbox.org/manual/ch05.html

https://unix.stackexchange.com/questions/715461/bash-how-to-automate-creation-of-disk-partitions-in-linux

# TODO

* Do not create partition and formation if disk is ready
* Keep second disk on destroy
* Umount disk before destroy

### How to import the demo database

unzip
cp *.sql to /vagrant

su postgres

psql -c "create database demo"
psql -d newdb -f demo-small-20170815.sql

### How to check database size

select t1.datname AS db_name,
pg_size_pretty(pg_database_size(t1.datname)) as db_size
from pg_database t1
order by pg_database_size(t1.datname) desc;

+-------------+-------+
|db_name      |db_size|
+-------------+-------+
|demo         |281 MB |
+-------------+-------+

### Where does PostgreSQL store the database?

show data_directory;

+---------------------------+
|data_directory             |
+---------------------------+
|/var/lib/postgresql/14/main|
+---------------------------+

### How to create tablespace
su postgres
cd /var/lib/postgresql/14
mkdir demo_tablespace

CREATE TABLESPACE demo_tablespace
OWNER postgres
LOCATION '/var/lib/postgresql/14/demo_tablespace';

### How to move database to another tablespace

ALTER DATABASE demo SET TABLESPACE demo_tablespace

### Getting the Size of a Directory

du -sh /var/lib/postgresql/14/demo_tablespace

281M    /var/lib/postgresql/14/demo_tablespace