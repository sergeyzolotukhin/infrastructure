#!/bin/bash

ProgName=$(basename $0)

usage ()
{
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
    echo "Running 'up' command."
}

down(){
    echo "Running 'down' command."
}

subcommand=$1
case $subcommand in
    "up")                   up ;;
    "down")                 down ;;
    *)   usage ;;
esac
