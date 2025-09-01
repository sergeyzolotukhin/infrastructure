#!/bin/bash

names=(Donald Alan Brian quit)
selected=()
CONTINUE=true

PS3='Name? You can select multiple space separated options: '
while $CONTINUE; do
  select name in "${names[@]}" ; do
    echo "[$name]"

    case $name in
      "quit") CONTINUE=false ; break ;;
      *) selected+=("$name") ;;
    esac
  done
done

echo "Selected: ${selected[@]}"
