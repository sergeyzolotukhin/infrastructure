#!/bin/bash

#sudo su postgres

#sudo su postgres -c "psql -a -f /vagrant/provision/create-tablespace.sql"
psql -a -f /vagrant/provision/create-tablespace.sql

#exit