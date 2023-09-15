#!/bin/sh

clear

export DOCKER_BUILDKIT=1

date_val=$( date '+%F_%H:%M:%S' )

docker build \
  --build-arg CURRENT_DATE=${date_val} \
  --progress=plain \
  --tag=localhost:5000/test-image \
  .
