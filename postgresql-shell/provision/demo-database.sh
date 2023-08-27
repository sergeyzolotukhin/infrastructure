#!/bin/bash

DATA_HOME='/var/lib/postgresql/14'

echo "================================================================================================================"

echo "Drop database if exists"
sudo -u postgres psql -c "DROP DATABASE IF EXISTS demo"
sudo -u postgres psql -c "DROP DATABASE IF EXISTS demo_01"

echo "Drop tablespace if exists"
sudo -u postgres psql -c "DROP TABLESPACE IF EXISTS demo_tablespace"
sudo -u postgres psql -c "DROP TABLESPACE IF EXISTS demo_tablespace_01"

echo "Remove folder for tablespace if exists"
if [ -d "${DATA_HOME}/demo_tablespace" ];
then
  sudo -u postgres rm -Rf $DATA_HOME/demo_tablespace;
fi

if [ -d "${DATA_HOME}/demo_tablespace_01" ];
then
  sudo -u postgres rm -Rf $DATA_HOME/demo_tablespace_01;
fi

echo "Create folder for tablespace"
sudo -u postgres mkdir /var/lib/postgresql/14/demo_tablespace
sudo -u postgres mkdir /var/lib/postgresql/14/demo_tablespace_01

echo "Create tablespace"
sudo -u postgres psql -c "CREATE TABLESPACE demo_tablespace    OWNER postgres LOCATION '${DATA_HOME}/demo_tablespace'"
sudo -u postgres psql -c "CREATE TABLESPACE demo_tablespace_01 OWNER postgres LOCATION '${DATA_HOME}/demo_tablespace_01'"


echo "Recreate database"
sudo -u postgres psql -c "CREATE DATABASE demo    TABLESPACE demo_tablespace"
sudo -u postgres psql -c "CREATE DATABASE demo_01 TABLESPACE demo_tablespace_01"


echo "Restore database"
sudo -u postgres pg_restore -d demo /vagrant/demo.dump

echo "================================================================================================================"