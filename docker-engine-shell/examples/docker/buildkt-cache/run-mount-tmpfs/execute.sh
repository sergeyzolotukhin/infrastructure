#!/bin/sh

#echo "program $0 arg "
#echo $@
#echo "UBUNTU_VERSION: ${UBUNTU_VERSION}"
#echo "CUDA_VERSION: ${CUDA_VERSION}"

#echo "================================================================================================================"
#printenv
#echo "================================================================================================================"


echo "Hello World" > "/mnt/hello-$( date '+%F_%H:%M:%S' ).txt"

ls -l /mnt