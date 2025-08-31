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
  DIRPATH=$1
  DIRNAME=$(basename "$DIRPATH")

  for DUMPPATH in $(find $DIRPATH -type f -name "*.dump")
  do
    DATABASE_NAME=$(basename "$DUMPPATH" .dump)
    echo "Restore $DIRNAME/$DATABASE_NAME.dump"

    docker exec postgres \
      bash -c "dropdb --username=postgres $DATABASE_NAME && \
               createdb --username=postgres --template=template0 $DATABASE_NAME && \
               pg_restore --username=postgres --no-password --dbname=$DATABASE_NAME /mnt/.dumps/$DIRNAME/$DATABASE_NAME.dump"
  done
}

subcommand=$1
case $subcommand in
    "up")                   up ;;
    "down")                 down ;;
    "dump")                 shift ; dump "$@" ;;
    "restore")              shift ; restore "$@" ;;
    *)   usage ;;
esac
