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

#### Creating a Docker image with a preloaded database
https://cadu.dev/creating-a-docker-image-with-database-preloaded/

#### Create snapshot of dockerized postgres
https://gist.github.com/janjaali/6021580003bb175860be5c20cfb03a7e
#### Creating and filling a Postgres DB with Docker compose
https://levelup.gitconnected.com/creating-and-filling-a-postgres-db-with-docker-compose-e1607f6f882f
#### 3 Ways to Backup & Restore a PostgreSQL Database
https://tute.io/3-ways-backup-restore-postgresql-database
#### How PostgreSQL replication works
https://medium.com/moveax/how-postgresql-replication-works-6288b3e6000e

#### How to restore dump in SQL format ?

psql -U postgres -d postgres -f demo-medium.sql
psql -U your_user -d your_db -c 'drop owned by current_user' -f your_dump.sql

We use the demo medium with 650 Mb size.
It took 25 seconds.

#### How to create a database from a template in Postgres ?
CREATE DATABASE demo_01 WITH TEMPLATE demo OWNER postgres;

We use the demo medium with 650 Mb size.
completed in 8 s 317 ms

https://www.mojohaus.org/wagon-maven-plugin/usage.html

#### How do I find PostgreSQL's data directory?
SELECT current_setting('data_directory') AS pgdata_path;
SHOW data_directory;

####
https://stackoverflow.com/questions/46349071/commit-content-of-mounted-volumes-as-well

#### Multi-tenancy implementation with PostgreSQL
https://blog.logto.io/implement-multi-tenancy
https://iniakunhuda.medium.com/introduction-to-postgresql-schemas-a-practical-guide-8089b351b953
https://www.educba.com/postgresql-synonyms/

The best solution seems to be PgBouncer. 
It allows you to pool and "redirect" connections from one database to another (even on a different host).
https://www.cybertec-postgresql.com/en/connection-pooling-intro-pgbouncer-and-pgpool-ii/

#### Point-In-Time Recovery (PITR) in PostgreSQL
https://dzone.com/articles/point-in-time-recovery-pitr-in-postgresql

https://www.highgo.ca/2021/05/31/getting-started-with-pg_bulkload/
https://ongres.com/blog/fastest_way_copy_data_between_postgres_tables/
https://www.highgo.ca/2020/12/08/bulk-loading-into-postgresql-options-and-comparison/
