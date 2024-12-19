#### TODO:
    1. time zone
    2. encode UTF-8
    3 # speed up apt-get, config.cache.auto_detect = true
    5 save end line linux
    6 remove warning 
    7 reduce the output

#### database user/password

postgres
postgres

#### Build Docker Image Postgres With Data Included
https://gist.github.com/janjaali/6021580003bb175860be5c20cfb03a7e

https://levelup.gitconnected.com/creating-and-filling-a-postgres-db-with-docker-compose-e1607f6f882f

https://tute.io/3-ways-backup-restore-postgresql-database
https://medium.com/moveax/how-postgresql-replication-works-6288b3e6000e

#### How to restore dump in SQL format ?

psql -U postgres -d postgres -f demo-medium.sql
psql -U your_user -d your_db -c 'drop owned by current_user' -f your_dump.sql

#### How to create a database from a template in Postgres ?
CREATE DATABASE demo_01 WITH TEMPLATE demo OWNER postgres;

We use the demo medium with 650 Mb size.
[2024-12-19 22:59:21] completed in 8 s 317 ms
