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
    "" | "-h" | "--help")   usage ;;
    "up")                   up ;;
    "down")                 down ;;
    *)
        shift
        sub_${subcommand} $@
        if [ $? = 127 ]; then
            echo "Error: '$subcommand' is not a known subcommand." >&2
            echo "       Run '$ProgName --help' for a list of known subcommands." >&2
            exit 1
        fi
        ;;
esac
