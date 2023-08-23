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

