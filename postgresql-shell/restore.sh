echo 'Kill sessions'
psql -f /vagrant/kill-sessions.sql > /dev/null


echo 'Drop databases'
dropdb -U postgres BATCH_DS_ERGO
dropdb -U postgres BATCHINPUT_DS_ERGO
dropdb -U postgres BPMN_DS_ERGO
dropdb -U postgres NEXTGEN_DS_ERGO

echo 'Create databases'
createdb -U postgres -T template0 BATCH_DS_ERGO
createdb -U postgres -T template0 BATCHINPUT_DS_ERGO
createdb -U postgres -T template0 BPMN_DS_ERGO
createdb -U postgres -T template0 NEXTGEN_DS_ERGO

echo 'Restore databases 01'
pg_restore -U postgres -w -d BATCH_DS_ERGO -1 BATCH_DS_ERGO_01.tar
pg_restore -U postgres -w -d BATCHINPUT_DS_ERGO -1 BATCHINPUT_DS_ERGO_01.tar
pg_restore -U postgres -w -d BPMN_DS_ERGO -1 BPMN_DS_ERGO_01.tar
pg_restore -U postgres -w -d NEXTGEN_DS_ERGO -1 NEXTGEN_DS_ERGO_01.tar

echo 'Successfully'