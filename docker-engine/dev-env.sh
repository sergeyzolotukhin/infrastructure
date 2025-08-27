#!/bin/bash

ProgName=$(basename $0)

usage ()
{
  echo "Usage: $ProgName <subcommand> [OPTION]... COMMAND"
  echo "Manage a virtual development environment"
  echo ""
  echo "Commands:"
  echo "  up      Build, create, start to containers for set of services of the project"
  echo "  down    Stop and remove containers, networks and volumes for set of services of the project"
}

sub_bar(){
    echo "Running 'bar' command."
}

sub_baz(){
    echo "Running 'baz' command."
    echo "First arg is '$1'."
    echo "Second arg is '$2'."
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        usage
        ;;
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
