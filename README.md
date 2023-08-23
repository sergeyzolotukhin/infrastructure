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
psql -d demo -f demo-small-20170815.sql

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

### How to drop database

DROP DATABASE demo
create DATABASE demo TABLESPACE demo_tablespace

### How to show list of database

SELECT datname FROM pg_database;
SELECT * FROM pg_tablespace;

### How to move database to another tablespace

ALTER DATABASE demo SET TABLESPACE demo_tablespace

### Getting the Size of a Directory

du -sh /var/lib/postgresql/14/demo_tablespace

281M    /var/lib/postgresql/14/demo_tablespace

### How to dump database

pg_dump -Fc -Z 9 --file=demo.dump demo
pg_dump -Fc -Z 0 --file=demo.dump demo
pg_dump -Fc --file=demo.dump demo

### How to measure execution time

time pg_dump -Fc -Z 0 --file=demo.dump demo

real    0m 1.553s
user    0m 0.138s
sys     0m 0.148s

-rw-rw-r-- 1 postgres postgres 110M Aug 23 20:45 demo.dump

time pg_dump -Fc --file=demo.dump demo

real    0m2.055s
user    0m1.876s
sys     0m0.032s

-rw-rw-r-- 1 postgres postgres  22M Aug 23 20:48 demo.dump

### How to restore database

pg_restore -Fc -f demo.dump

pg_dump -Fc --file=demo.dump demo
dropdb demo
create DATABASE demo TABLESPACE demo_tablespace
psql -c "create DATABASE demo TABLESPACE demo_tablespace"
time pg_restore -d demo demo.dump

pg_restore -C -d demo demo.dump

### How much time we need to restore database

time pg_restore -d demo demo.dump

real    0m 9.231s
user    0m 0.321s
sys     0m 0.029s
