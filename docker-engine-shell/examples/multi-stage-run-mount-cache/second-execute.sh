#!/bin/sh

#echo "program $0 arg "
#echo $@
#echo "UBUNTU_VERSION: ${UBUNTU_VERSION}"
#echo "CUDA_VERSION: ${CUDA_VERSION}"

#echo "================================================================================================================"
#printenv
#echo "================================================================================================================"

mkdir /local_repo

ln -s /local_repo /mnt/child

echo "Hello World" > "/mnt/child/second-hello-$( date '+%F_%H:%M:%S' ).txt"

echo "================================================================================================================"
echo "/mnt/"
echo "================================================================================================================"
ls -l /mnt/

echo "================================================================================================================"
echo "/mnt/child/"
echo "================================================================================================================"
ls -l /mnt/child/

echo "================================================================================================================"
echo "/local_repo/"
echo "================================================================================================================"
ls -l /local_repo/
echo "================================================================================================================"