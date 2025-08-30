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
  TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")

  docker exec postgres \
    bash -c "pg_dump --username=postgres --format=tar DEMO > /mnt/.dumps/${TIMESTAMP}-DEMO.tar"

#  docker exec postgres \
#      bash -c "pg_dump --username=postgres --format=custom DEMO > /mnt/.dumps/${TIMESTAMP}-DEMO.dump"
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
    "dump")                 dump ;;
    "restore")              restore ;;
    *)   usage ;;
esac
