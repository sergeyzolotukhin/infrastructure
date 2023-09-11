#!/bin/sh

clear

export DOCKER_BUILDKIT=1

date_val=$( date '+%F_%H:%M:%S' )

docker build \
  --build-arg CURRENT_DATE=$date_val \
  --progress=plain \
  --tag=test-cache \
  .

#  --no-cache \
#  docker system prune --all --volumes -f
#echo "================================================================================================================"
#echo "image history"
#echo "================================================================================================================"
#docker image history --no-trunc=false $(docker images --quiet --filter=reference="test-cache:*")

#echo "================================================================================================================"
#echo "image"
#echo "================================================================================================================"
#docker image list --all

# docker system prune --all --volumes