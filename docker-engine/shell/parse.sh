#!/bin/bash

# Option strings
SHORT=vf:
LONG=verbose,file:

# read the options
ARGS=$(getopt --options $SHORT --long $LONG --name "$0" -- "$@")
if [ $? != 0 ] ; then
  exit 1 ;
fi

eval set -- "${ARGS}"

while :
do
  case $1 in
    -v | --verbose)   VERBOSE=1   ; shift   ;;
    -f | --file)      FILE=$2     ; shift 2 ;;
    # -- means the end of the arguments; drop this, and break out of the while loop
    --) shift; break ;;
#    *) >&2 echo "Internal error!" ; exit 1 ;;
  esac
done

echo "verbose   : $VERBOSE"
echo "file      : $FILE"

echo "Parameters remaining are: $@"

exit 0

