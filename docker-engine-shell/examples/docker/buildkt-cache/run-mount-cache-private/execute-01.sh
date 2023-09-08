#!/bin/sh

#echo "program $0 arg "
#echo $@
#echo "UBUNTU_VERSION: ${UBUNTU_VERSION}"
#echo "CUDA_VERSION: ${CUDA_VERSION}"

#echo "================================================================================================================"
#printenv
#echo "================================================================================================================"

echo "[$TEST_NAME]"

echo "$0" > "/mnt/${TEST_NAME}_execute-01-$( date '+%F_%H:%M:%S' ).txt"

ls -l /mnt

sleep 5

