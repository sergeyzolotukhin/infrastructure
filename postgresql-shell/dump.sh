
# https://www.postgresql.org/docs/current/app-pgdump.html

if [ $USER != "postgres" ]; then
        echo "Script must be run as user: postgres. Please use: su postgres"
        exit 1
fi

echo 'Set password databases'

export PGPASSWORD=postgres

echo 'Dump databases'
pg_dump -U postgres -F t demo > demo_medium.tar
#pg_dump -U postgres -F t demo > demo-small.tar

echo 'Successfully'