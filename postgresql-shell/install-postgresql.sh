#!/bin/bash

echo 'Add postgresql repository'
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo 'Update index of packages'
sudo apt-get update

echo 'Install postgresql'
sudo apt-get -y install postgresql-14

echo 'Install tools'
sudo apt-get -y install mc

echo 'Update postgresql configurations'
sudo cp /vagrant/postgresql.conf /etc/postgresql/14/main/postgresql.conf
sudo cp /vagrant/pg_hba.conf /etc/postgresql/14/main/pg_hba.conf

echo 'Alter postgres password'
# psql -  https://www.postgresql.org/docs/current/app-psql.html
#   -a    Print all nonempty input lines to standard output as they are read.
#   -f    Read commands from the file filename, rather than standard input.
sudo su postgres -c "psql -a -f /vagrant/alter-postgres-password.sql"

echo 'Restart postgresql'
sudo systemctl restart postgresql

echo 'Enable postgres login'
echo -e "postgres\npostgres" | passwd postgres