#!/bin/bash

DE_HOME=$(dirname $(readlink -f ${BASH_SOURCE[0]}))

echo "---> $DE_HOME"

if [ ! -L /usr/local/bin/dev-env ]; then
  ln -s $DE_HOME/dev-env.sh /usr/local/bin/dev-env
  echo "Create link "
fi

ProgName=$(basename $0)

usage ()
{
  echo "Usage: $ProgName <subcommand> [OPTION]... COMMAND"
  echo "Manage a virtual development environment"
  echo ""
  echo "Commands:"
  echo "  up      Build, create, start to containers"
  echo "  down    Stop and remove containers, networks and volumes"
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
