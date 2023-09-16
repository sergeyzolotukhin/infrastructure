#!/bin/sh

clear

echo "================================================================================================================"

# RGB
export BUILDKIT_COLORS="run=0,255,255:error=yellow:cancel=blue:warning=white"
#export BUILDKIT_PROGRESS=plain

docker build \
  --target base \
  --no-cache \
  .

echo "================================================================================================================"