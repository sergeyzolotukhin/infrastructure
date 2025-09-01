#!/bin/bash

# Option strings
SHORT=i
LONG=interactive

# read the options
ARGS=$(getopt --options $SHORT --long $LONG --name "$0" -- "$@")
if [ $? != 0 ] ; then
  exit 1 ;
fi

eval set -- "${ARGS}"
#echo "args: $ARGS"

INTERACTIVE=0

while :
do
  case $1 in
    -i | --interactive)   INTERACTIVE=1   ; shift   ;;
    # -- means the end of the arguments; drop this, and break out of the while loop
    --) shift; break ;;
  esac
done

echo "interactive   : $INTERACTIVE"
echo "file: $1"

exit 0

