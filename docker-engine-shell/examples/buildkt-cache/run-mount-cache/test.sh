#!/bin/sh

clear

export DOCKER_BUILDKIT=1

#date_val=$( date '+%F_%H:%M:%S' )
date_val=static

echo  "${date_val}"

#  docker system prune --all --volumes -f

docker build \
  --build-arg UBUNTU_VERSION=1 \
  --build-arg CUDA_VERSION=$date_val \
  --progress=plain \
  --no-cache \
  --tag=test-cache \
  .

docker build \
  --build-arg UBUNTU_VERSION=1 \
  --build-arg CUDA_VERSION=$date_val \
  --progress=plain \
  --tag=test-cache \
  --no-cache \
  --file=local.Dockerfile \
  .

#  --no-cache \

#echo "================================================================================================================"
#echo "image history"
#echo "================================================================================================================"
#docker image history --no-trunc=false $(docker images --quiet --filter=reference="test-cache:*")

#echo "================================================================================================================"
#echo "image"
#echo "================================================================================================================"
#docker image list --all

# docker system prune --all --volumes