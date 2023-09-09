#!/bin/sh

clear



docker build \
  --progress=plain \
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
#  docker system prune --all --volumes -f