#!/bin/sh

clear

echo "================================================================================================================"

docker build \
  --progress=plain \
  --target base \
  --build-arg BASE_ARG="User data for base" \
  .

echo "================================================================================================================"

docker build \
  --progress=plain \
  --target child \
  --build-arg BASE_ARG="User data for child" \
  .

echo "================================================================================================================"

# --build-arg BASE_ARG="User data for base" \
#  --no-cache \


#echo "image history"
#echo "================================================================================================================"
#docker image history --no-trunc=false $(docker images --quiet --filter=reference="test-cache:*")

#echo "================================================================================================================"
#echo "image"
#echo "================================================================================================================"
#docker image list --all

# docker system prune --all --volumes
#  docker system prune --all --volumes -f