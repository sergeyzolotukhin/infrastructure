#!/bin/sh

export DOCKER_BUILDKIT=1

docker system prune --all --volumes -f

clear

echo "================================================================================================================"
echo "Run with empty cache"
echo "================================================================================================================"

current_date=$( date '+%F_%H:%M:%S' )

docker build \
  --progress=plain \
  --target base \
  --build-arg CURRENT_DATE="${current_date}" \
  .

echo "================================================================================================================"
echo "Second run with same arguments"
echo "================================================================================================================"

current_date=$( date '+%F_%H:%M:%S' )

docker build \
  --progress=plain \
  --target base \
  --build-arg CURRENT_DATE="${current_date}" \
  .

echo "================================================================================================================"
