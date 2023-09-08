#!/bin/sh

clear

export DOCKER_BUILDKIT=1

date_val=$( date '+%F_%H:%M:%S' )

echo  "${date_val}"

echo "================================================================================================================"
echo "Run base"
echo "================================================================================================================"

docker build \
  --build-arg CUDA_VERSION=$date_val \
  --build-arg TEST_NAME=one \
  --progress=plain \
  --tag=test-cache \
  --target=base \
  --progress=plain \
  . 2>&1 | tee base.log

#   --no-cache \

echo "================================================================================================================"
