#!/bin/bash

usage(){
  echo "Usage: de <subcommand> [OPTION]... COMMAND"
  echo "Manage a virtual development environment"
  echo ""
  echo "Commands:"
  echo "  up        Build, create, start to containers"
  echo "  down      Stop and remove containers"
  echo "  dump      Extract a database into a archive file"
  echo "  restore   Restore a database from an archive file"
}

up(){
  docker compose \
      --file "$DE_HOME/docker/docker-compose.yml" \
      --env-file "$DE_HOME/docker/.env" \
    up \
      --detach \
      --quiet-pull
}

down(){
  docker compose \
      --file "$DE_HOME/docker/docker-compose.yml" \
      --env-file "$DE_HOME/docker/.env" \
    down
}

dump(){
  TIMESTAMP=$(date +"%m.%d-%H.%M")

  DIRNAME=$1
  if [[ -z "$DIRNAME" ]]; then
    MAX_PREFIX=$( find $DE_HOME/.dumps -type d -name "[0-9][0-9]-*" -exec basename {} \; | \
      sed -E 's/^(..).*$/\1/' | \
      sort -n | \
      tail -1 \
    )
    NEXT_PREFIX=$(printf "%02d\n" $(expr $MAX_PREFIX + 1))
    DIRNAME="$NEXT_PREFIX-dump-$TIMESTAMP"
  fi

  DIRPATH="$DE_HOME/.dumps/$DIRNAME"
  if [ -d "$DIRPATH" ]; then
      rm --force --recursive "$DIRPATH"
  fi
  mkdir --parents "$DIRPATH"

  DATABASE_NAMES=$(docker exec postgres \
    bash -c "psql --username=postgres --tuples-only --command=\"\
      SELECT datname
      FROM pg_database
      WHERE datistemplate = FALSE
        AND datname NOT IN ('postgres', 'bank')\"\
    ")

  for DATABASE_NAME in $DATABASE_NAMES
  do
    echo "Dump \"$DATABASE_NAME\" database at $DIRNAME"
    docker exec postgres \
      bash -c "pg_dump --username=postgres --format=custom $DATABASE_NAME > /mnt/.dumps/$DIRNAME/$DATABASE_NAME.dump"
  done
}

restore(){
  docker exec postgres \
    bash -c "dropdb --username=postgres DEMO"

  docker exec postgres \
    bash -c "createdb --username=postgres --template=template0 DEMO"

  docker exec postgres \
    bash -c "time pg_restore --username=postgres --no-password --dbname=DEMO --single-transaction /mnt/.dumps/2025-08-28-20-14-12-DEMO.tar"

#  docker exec postgres \
#    bash -c "time pg_restore --username=postgres --no-password --dbname=DEMO --jobs=4 /mnt/.dumps/2025-08-28-20-11-16-DEMO.dump"
}

subcommand=$1
case $subcommand in
    "up")                   up ;;
    "down")                 down ;;
    "dump")                 shift ; dump "$@" ;;
    "restore")              restore ;;
    *)   usage ;;
esac
