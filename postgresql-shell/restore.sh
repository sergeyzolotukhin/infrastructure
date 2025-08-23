#!/bin/bash

# https://www.postgresql.org/docs/current/app-pgrestore.html

echo 'Kill sessions'
psql -f /vagrant/kill-sessions.sql > /dev/null

#SECONDS=0

echo 'Drop databases'
dropdb -U postgres demo

echo 'Create databases'
createdb -U postgres -T template0 demo

echo 'Restore databases 01'
pg_restore -U postgres -w -d demo -1 demo_medium.tar

#echo $SECONDS
echo 'Successfully'