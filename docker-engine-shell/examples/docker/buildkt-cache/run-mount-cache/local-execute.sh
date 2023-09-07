#!/bin/sh

#echo "program $0 arg "
#echo $@
#echo "UBUNTU_VERSION: ${UBUNTU_VERSION}"
#echo "CUDA_VERSION: ${CUDA_VERSION}"

#echo "================================================================================================================"
#printenv
#echo "================================================================================================================"

ls -l /local-mnt

echo "Hello World" > "/local-mnt/local-hello-$( date '+%F_%H:%M:%S' ).txt"