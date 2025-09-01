#!/bin/bash

names=('01-dump-08.31-12.51' '14-dump-08.31-12.51' '15-dump-08.31-12.52' 'quit')
selected=()
CONTINUE=true

PS3='Select databases: '
while $CONTINUE; do
  select name in "${names[@]}" ; do
    case $name in
      "quit") CONTINUE=false ; break ;;
      *) selected+=("$name") ;;
    esac
  done
done

echo "Selected databases: ${selected[@]}"
