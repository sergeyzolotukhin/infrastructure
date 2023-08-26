#!/bin/bash

#sudo su postgres

#sudo su postgres -c "psql -a -f /vagrant/provision/create-tablespace.sql"
echo "Recreate database"
psql -a -f /vagrant/provision/create-tablespace.sql
du -h /var/lib/postgresql/14/demo_tablespace

echo "================================================================================================================"
echo "Restore database"
echo "================================================================================================================"
time pg_restore -d demo /vagrant/demo.dump

echo "================================================================================================================"
#pg_restore -Fc -f /vagrant/demo.dump
du -h /var/lib/postgresql/14/demo_tablespace
echo "================================================================================================================"

#exit