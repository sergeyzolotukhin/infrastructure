if [ $USER != "postgres" ]; then
        echo "Script must be run as user: postgres. Please use: su postgres"
        exit -1
fi

echo 'Set password databases'

export PGPASSWORD=postgres

echo 'Dump databases'
pg_dump -U postgres -F t BATCH_DS_ERGO > BATCH_DS_ERGO_01.tar
pg_dump -U postgres -F t BATCHINPUT_DS_ERGO > BATCHINPUT_DS_ERGO_01.tar
pg_dump -U postgres -F t BPMN_DS_ERGO > BPMN_DS_ERGO_01.tar
pg_dump -U postgres -F t NEXTGEN_DS_ERGO > NEXTGEN_DS_ERGO_01.tar

echo 'Successfully'