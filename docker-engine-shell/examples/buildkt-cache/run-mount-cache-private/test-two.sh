#!/bin/sh

clear

export DOCKER_BUILDKIT=1

date_val=$( date '+%F_%H:%M:%S' )

echo  "${date_val}"

echo "================================================================================================================"
echo "Run child"
echo "================================================================================================================"

docker build \
  --build-arg CUDA_VERSION=$date_val \
  --build-arg TEST_NAME=two \
  --progress=plain \
  --tag=test-cache \
  --target=child \
  --progress=plain \
  . 2>&1 | tee two.log

#   --no-cache \

echo "================================================================================================================"